
6
input/x_inputPlaceholder*
shape: *
dtype0
6
input/y_inputPlaceholder*
dtype0*
shape: 
C
layer/W/zerosConst*
valueB	�
*    *
dtype0
d
layer/W/Weights
VariableV2*
shape:	�
*
shared_name *
dtype0*
	container 
�
layer/W/Weights/AssignAssignlayer/W/Weightslayer/W/zeros*
use_locking(*
validate_shape(*
T0*"
_class
loc:@layer/W/Weights
^
layer/W/Weights/readIdentitylayer/W/Weights*
T0*"
_class
loc:@layer/W/Weights
>
layer/b/zerosConst*
valueB
*    *
dtype0
^
layer/b/biases
VariableV2*
shared_name *
dtype0*
shape:
*
	container 
�
layer/b/biases/AssignAssignlayer/b/biaseslayer/b/zeros*
use_locking(*
T0*!
_class
loc:@layer/b/biases*
validate_shape(
[
layer/b/biases/readIdentitylayer/b/biases*
T0*!
_class
loc:@layer/b/biases
p
layer/W_p_b/MatMulMatMulinput/x_inputlayer/W/Weights/read*
transpose_b( *
transpose_a( *
T0
N
layer/W_p_b/Wx_plus_bAddlayer/W_p_b/MatMullayer/b/biases/read*
T0
=
layer/final_resultSoftmaxlayer/W_p_b/Wx_plus_b*
T0
,
loss/LogLoglayer/final_result*
T0
1
loss/mulMulinput/y_inputloss/Log*
T0
?

loss/ConstConst*
valueB"       *
dtype0
K
loss/SumSumloss/mul
loss/Const*

Tidx0*
	keep_dims( *
T0
"
loss/NegNegloss/Sum*
T0
C
train_step/gradients/ShapeConst*
dtype0*
valueB 
G
train_step/gradients/ConstConst*
valueB
 *  �?*
dtype0
b
train_step/gradients/FillFilltrain_step/gradients/Shapetrain_step/gradients/Const*
T0
Q
&train_step/gradients/loss/Neg_grad/NegNegtrain_step/gradients/Fill*
T0
e
0train_step/gradients/loss/Sum_grad/Reshape/shapeConst*
dtype0*
valueB"      
�
*train_step/gradients/loss/Sum_grad/ReshapeReshape&train_step/gradients/loss/Neg_grad/Neg0train_step/gradients/loss/Sum_grad/Reshape/shape*
T0*
Tshape0
T
(train_step/gradients/loss/Sum_grad/ShapeShapeloss/mul*
out_type0*
T0
�
'train_step/gradients/loss/Sum_grad/TileTile*train_step/gradients/loss/Sum_grad/Reshape(train_step/gradients/loss/Sum_grad/Shape*
T0*

Tmultiples0
Y
(train_step/gradients/loss/mul_grad/ShapeShapeinput/y_input*
out_type0*
T0
V
*train_step/gradients/loss/mul_grad/Shape_1Shapeloss/Log*
out_type0*
T0
�
8train_step/gradients/loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgs(train_step/gradients/loss/mul_grad/Shape*train_step/gradients/loss/mul_grad/Shape_1*
T0
i
&train_step/gradients/loss/mul_grad/mulMul'train_step/gradients/loss/Sum_grad/Tileloss/Log*
T0
�
&train_step/gradients/loss/mul_grad/SumSum&train_step/gradients/loss/mul_grad/mul8train_step/gradients/loss/mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
*train_step/gradients/loss/mul_grad/ReshapeReshape&train_step/gradients/loss/mul_grad/Sum(train_step/gradients/loss/mul_grad/Shape*
T0*
Tshape0
p
(train_step/gradients/loss/mul_grad/mul_1Mulinput/y_input'train_step/gradients/loss/Sum_grad/Tile*
T0
�
(train_step/gradients/loss/mul_grad/Sum_1Sum(train_step/gradients/loss/mul_grad/mul_1:train_step/gradients/loss/mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
,train_step/gradients/loss/mul_grad/Reshape_1Reshape(train_step/gradients/loss/mul_grad/Sum_1*train_step/gradients/loss/mul_grad/Shape_1*
T0*
Tshape0
�
3train_step/gradients/loss/mul_grad/tuple/group_depsNoOp+^train_step/gradients/loss/mul_grad/Reshape-^train_step/gradients/loss/mul_grad/Reshape_1
�
;train_step/gradients/loss/mul_grad/tuple/control_dependencyIdentity*train_step/gradients/loss/mul_grad/Reshape4^train_step/gradients/loss/mul_grad/tuple/group_deps*
T0*=
_class3
1/loc:@train_step/gradients/loss/mul_grad/Reshape
�
=train_step/gradients/loss/mul_grad/tuple/control_dependency_1Identity,train_step/gradients/loss/mul_grad/Reshape_14^train_step/gradients/loss/mul_grad/tuple/group_deps*
T0*?
_class5
31loc:@train_step/gradients/loss/mul_grad/Reshape_1
�
-train_step/gradients/loss/Log_grad/Reciprocal
Reciprocallayer/final_result>^train_step/gradients/loss/mul_grad/tuple/control_dependency_1*
T0
�
&train_step/gradients/loss/Log_grad/mulMul=train_step/gradients/loss/mul_grad/tuple/control_dependency_1-train_step/gradients/loss/Log_grad/Reciprocal*
T0
|
0train_step/gradients/layer/final_result_grad/mulMul&train_step/gradients/loss/Log_grad/mullayer/final_result*
T0
p
Btrain_step/gradients/layer/final_result_grad/Sum/reduction_indicesConst*
valueB:*
dtype0
�
0train_step/gradients/layer/final_result_grad/SumSum0train_step/gradients/layer/final_result_grad/mulBtrain_step/gradients/layer/final_result_grad/Sum/reduction_indices*

Tidx0*
	keep_dims( *
T0
o
:train_step/gradients/layer/final_result_grad/Reshape/shapeConst*
dtype0*
valueB"����   
�
4train_step/gradients/layer/final_result_grad/ReshapeReshape0train_step/gradients/layer/final_result_grad/Sum:train_step/gradients/layer/final_result_grad/Reshape/shape*
Tshape0*
T0
�
0train_step/gradients/layer/final_result_grad/subSub&train_step/gradients/loss/Log_grad/mul4train_step/gradients/layer/final_result_grad/Reshape*
T0
�
2train_step/gradients/layer/final_result_grad/mul_1Mul0train_step/gradients/layer/final_result_grad/sublayer/final_result*
T0
k
5train_step/gradients/layer/W_p_b/Wx_plus_b_grad/ShapeShapelayer/W_p_b/MatMul*
T0*
out_type0
e
7train_step/gradients/layer/W_p_b/Wx_plus_b_grad/Shape_1Const*
valueB:
*
dtype0
�
Etrain_step/gradients/layer/W_p_b/Wx_plus_b_grad/BroadcastGradientArgsBroadcastGradientArgs5train_step/gradients/layer/W_p_b/Wx_plus_b_grad/Shape7train_step/gradients/layer/W_p_b/Wx_plus_b_grad/Shape_1*
T0
�
3train_step/gradients/layer/W_p_b/Wx_plus_b_grad/SumSum2train_step/gradients/layer/final_result_grad/mul_1Etrain_step/gradients/layer/W_p_b/Wx_plus_b_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
�
7train_step/gradients/layer/W_p_b/Wx_plus_b_grad/ReshapeReshape3train_step/gradients/layer/W_p_b/Wx_plus_b_grad/Sum5train_step/gradients/layer/W_p_b/Wx_plus_b_grad/Shape*
Tshape0*
T0
�
5train_step/gradients/layer/W_p_b/Wx_plus_b_grad/Sum_1Sum2train_step/gradients/layer/final_result_grad/mul_1Gtrain_step/gradients/layer/W_p_b/Wx_plus_b_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
�
9train_step/gradients/layer/W_p_b/Wx_plus_b_grad/Reshape_1Reshape5train_step/gradients/layer/W_p_b/Wx_plus_b_grad/Sum_17train_step/gradients/layer/W_p_b/Wx_plus_b_grad/Shape_1*
Tshape0*
T0
�
@train_step/gradients/layer/W_p_b/Wx_plus_b_grad/tuple/group_depsNoOp8^train_step/gradients/layer/W_p_b/Wx_plus_b_grad/Reshape:^train_step/gradients/layer/W_p_b/Wx_plus_b_grad/Reshape_1
�
Htrain_step/gradients/layer/W_p_b/Wx_plus_b_grad/tuple/control_dependencyIdentity7train_step/gradients/layer/W_p_b/Wx_plus_b_grad/ReshapeA^train_step/gradients/layer/W_p_b/Wx_plus_b_grad/tuple/group_deps*
T0*J
_class@
><loc:@train_step/gradients/layer/W_p_b/Wx_plus_b_grad/Reshape
�
Jtrain_step/gradients/layer/W_p_b/Wx_plus_b_grad/tuple/control_dependency_1Identity9train_step/gradients/layer/W_p_b/Wx_plus_b_grad/Reshape_1A^train_step/gradients/layer/W_p_b/Wx_plus_b_grad/tuple/group_deps*L
_classB
@>loc:@train_step/gradients/layer/W_p_b/Wx_plus_b_grad/Reshape_1*
T0
�
3train_step/gradients/layer/W_p_b/MatMul_grad/MatMulMatMulHtrain_step/gradients/layer/W_p_b/Wx_plus_b_grad/tuple/control_dependencylayer/W/Weights/read*
transpose_b(*
T0*
transpose_a( 
�
5train_step/gradients/layer/W_p_b/MatMul_grad/MatMul_1MatMulinput/x_inputHtrain_step/gradients/layer/W_p_b/Wx_plus_b_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0
�
=train_step/gradients/layer/W_p_b/MatMul_grad/tuple/group_depsNoOp4^train_step/gradients/layer/W_p_b/MatMul_grad/MatMul6^train_step/gradients/layer/W_p_b/MatMul_grad/MatMul_1
�
Etrain_step/gradients/layer/W_p_b/MatMul_grad/tuple/control_dependencyIdentity3train_step/gradients/layer/W_p_b/MatMul_grad/MatMul>^train_step/gradients/layer/W_p_b/MatMul_grad/tuple/group_deps*F
_class<
:8loc:@train_step/gradients/layer/W_p_b/MatMul_grad/MatMul*
T0
�
Gtrain_step/gradients/layer/W_p_b/MatMul_grad/tuple/control_dependency_1Identity5train_step/gradients/layer/W_p_b/MatMul_grad/MatMul_1>^train_step/gradients/layer/W_p_b/MatMul_grad/tuple/group_deps*H
_class>
<:loc:@train_step/gradients/layer/W_p_b/MatMul_grad/MatMul_1*
T0
U
(train_step/GradientDescent/learning_rateConst*
valueB
 *
�#<*
dtype0
�
Ftrain_step/GradientDescent/update_layer/W/Weights/ApplyGradientDescentApplyGradientDescentlayer/W/Weights(train_step/GradientDescent/learning_rateGtrain_step/gradients/layer/W_p_b/MatMul_grad/tuple/control_dependency_1*"
_class
loc:@layer/W/Weights*
T0*
use_locking( 
�
Etrain_step/GradientDescent/update_layer/b/biases/ApplyGradientDescentApplyGradientDescentlayer/b/biases(train_step/GradientDescent/learning_rateJtrain_step/gradients/layer/W_p_b/Wx_plus_b_grad/tuple/control_dependency_1*!
_class
loc:@layer/b/biases*
T0*
use_locking( 
�
train_step/GradientDescentNoOpG^train_step/GradientDescent/update_layer/W/Weights/ApplyGradientDescentF^train_step/GradientDescent/update_layer/b/biases/ApplyGradientDescent
=
initNoOp^layer/W/Weights/Assign^layer/b/biases/Assign
8

save/ConstConst*
dtype0*
valueB Bmodel
d
save/SaveV2/tensor_namesConst*4
value+B)Blayer/W/WeightsBlayer/b/biases*
dtype0
K
save/SaveV2/shape_and_slicesConst*
valueBB B *
dtype0
�
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biases*
dtypes
2
e
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const
W
save/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
L
save/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
v
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2
�
save/AssignAssignlayer/W/Weightssave/RestoreV2*"
_class
loc:@layer/W/Weights*
T0*
validate_shape(*
use_locking(
X
save/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
N
!save/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
|
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2
�
save/Assign_1Assignlayer/b/biasessave/RestoreV2_1*
use_locking(*
T0*!
_class
loc:@layer/b/biases*
validate_shape(
6
save/restore_allNoOp^save/Assign^save/Assign_1
8
input_1/x_inputPlaceholder*
shape: *
dtype0
8
input_1/y_inputPlaceholder*
shape: *
dtype0
E
layer_1/W/zerosConst*
dtype0*
valueB	�
*    
f
layer_1/W/Weights
VariableV2*
shape:	�
*
shared_name *
dtype0*
	container 
�
layer_1/W/Weights/AssignAssignlayer_1/W/Weightslayer_1/W/zeros*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
d
layer_1/W/Weights/readIdentitylayer_1/W/Weights*
T0*$
_class
loc:@layer_1/W/Weights
@
layer_1/b/zerosConst*
valueB
*    *
dtype0
`
layer_1/b/biases
VariableV2*
	container *
shape:
*
dtype0*
shared_name 
�
layer_1/b/biases/AssignAssignlayer_1/b/biaseslayer_1/b/zeros*#
_class
loc:@layer_1/b/biases*
T0*
validate_shape(*
use_locking(
a
layer_1/b/biases/readIdentitylayer_1/b/biases*
T0*#
_class
loc:@layer_1/b/biases
v
layer_1/W_p_b/MatMulMatMulinput_1/x_inputlayer_1/W/Weights/read*
transpose_b( *
transpose_a( *
T0
T
layer_1/W_p_b/Wx_plus_bAddlayer_1/W_p_b/MatMullayer_1/b/biases/read*
T0
A
layer_1/final_resultSoftmaxlayer_1/W_p_b/Wx_plus_b*
T0
0

loss_1/LogLoglayer_1/final_result*
T0
7

loss_1/mulMulinput_1/y_input
loss_1/Log*
T0
A
loss_1/ConstConst*
valueB"       *
dtype0
Q

loss_1/SumSum
loss_1/mulloss_1/Const*

Tidx0*
	keep_dims( *
T0
&

loss_1/NegNeg
loss_1/Sum*
T0
E
train_step_1/gradients/ShapeConst*
valueB *
dtype0
I
train_step_1/gradients/ConstConst*
dtype0*
valueB
 *  �?
h
train_step_1/gradients/FillFilltrain_step_1/gradients/Shapetrain_step_1/gradients/Const*
T0
W
*train_step_1/gradients/loss_1/Neg_grad/NegNegtrain_step_1/gradients/Fill*
T0
i
4train_step_1/gradients/loss_1/Sum_grad/Reshape/shapeConst*
valueB"      *
dtype0
�
.train_step_1/gradients/loss_1/Sum_grad/ReshapeReshape*train_step_1/gradients/loss_1/Neg_grad/Neg4train_step_1/gradients/loss_1/Sum_grad/Reshape/shape*
T0*
Tshape0
Z
,train_step_1/gradients/loss_1/Sum_grad/ShapeShape
loss_1/mul*
T0*
out_type0
�
+train_step_1/gradients/loss_1/Sum_grad/TileTile.train_step_1/gradients/loss_1/Sum_grad/Reshape,train_step_1/gradients/loss_1/Sum_grad/Shape*

Tmultiples0*
T0
_
,train_step_1/gradients/loss_1/mul_grad/ShapeShapeinput_1/y_input*
out_type0*
T0
\
.train_step_1/gradients/loss_1/mul_grad/Shape_1Shape
loss_1/Log*
T0*
out_type0
�
<train_step_1/gradients/loss_1/mul_grad/BroadcastGradientArgsBroadcastGradientArgs,train_step_1/gradients/loss_1/mul_grad/Shape.train_step_1/gradients/loss_1/mul_grad/Shape_1*
T0
s
*train_step_1/gradients/loss_1/mul_grad/mulMul+train_step_1/gradients/loss_1/Sum_grad/Tile
loss_1/Log*
T0
�
*train_step_1/gradients/loss_1/mul_grad/SumSum*train_step_1/gradients/loss_1/mul_grad/mul<train_step_1/gradients/loss_1/mul_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
�
.train_step_1/gradients/loss_1/mul_grad/ReshapeReshape*train_step_1/gradients/loss_1/mul_grad/Sum,train_step_1/gradients/loss_1/mul_grad/Shape*
Tshape0*
T0
z
,train_step_1/gradients/loss_1/mul_grad/mul_1Mulinput_1/y_input+train_step_1/gradients/loss_1/Sum_grad/Tile*
T0
�
,train_step_1/gradients/loss_1/mul_grad/Sum_1Sum,train_step_1/gradients/loss_1/mul_grad/mul_1>train_step_1/gradients/loss_1/mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
0train_step_1/gradients/loss_1/mul_grad/Reshape_1Reshape,train_step_1/gradients/loss_1/mul_grad/Sum_1.train_step_1/gradients/loss_1/mul_grad/Shape_1*
Tshape0*
T0
�
7train_step_1/gradients/loss_1/mul_grad/tuple/group_depsNoOp/^train_step_1/gradients/loss_1/mul_grad/Reshape1^train_step_1/gradients/loss_1/mul_grad/Reshape_1
�
?train_step_1/gradients/loss_1/mul_grad/tuple/control_dependencyIdentity.train_step_1/gradients/loss_1/mul_grad/Reshape8^train_step_1/gradients/loss_1/mul_grad/tuple/group_deps*A
_class7
53loc:@train_step_1/gradients/loss_1/mul_grad/Reshape*
T0
�
Atrain_step_1/gradients/loss_1/mul_grad/tuple/control_dependency_1Identity0train_step_1/gradients/loss_1/mul_grad/Reshape_18^train_step_1/gradients/loss_1/mul_grad/tuple/group_deps*
T0*C
_class9
75loc:@train_step_1/gradients/loss_1/mul_grad/Reshape_1
�
1train_step_1/gradients/loss_1/Log_grad/Reciprocal
Reciprocallayer_1/final_resultB^train_step_1/gradients/loss_1/mul_grad/tuple/control_dependency_1*
T0
�
*train_step_1/gradients/loss_1/Log_grad/mulMulAtrain_step_1/gradients/loss_1/mul_grad/tuple/control_dependency_11train_step_1/gradients/loss_1/Log_grad/Reciprocal*
T0
�
4train_step_1/gradients/layer_1/final_result_grad/mulMul*train_step_1/gradients/loss_1/Log_grad/mullayer_1/final_result*
T0
t
Ftrain_step_1/gradients/layer_1/final_result_grad/Sum/reduction_indicesConst*
valueB:*
dtype0
�
4train_step_1/gradients/layer_1/final_result_grad/SumSum4train_step_1/gradients/layer_1/final_result_grad/mulFtrain_step_1/gradients/layer_1/final_result_grad/Sum/reduction_indices*

Tidx0*
	keep_dims( *
T0
s
>train_step_1/gradients/layer_1/final_result_grad/Reshape/shapeConst*
valueB"����   *
dtype0
�
8train_step_1/gradients/layer_1/final_result_grad/ReshapeReshape4train_step_1/gradients/layer_1/final_result_grad/Sum>train_step_1/gradients/layer_1/final_result_grad/Reshape/shape*
T0*
Tshape0
�
4train_step_1/gradients/layer_1/final_result_grad/subSub*train_step_1/gradients/loss_1/Log_grad/mul8train_step_1/gradients/layer_1/final_result_grad/Reshape*
T0
�
6train_step_1/gradients/layer_1/final_result_grad/mul_1Mul4train_step_1/gradients/layer_1/final_result_grad/sublayer_1/final_result*
T0
q
9train_step_1/gradients/layer_1/W_p_b/Wx_plus_b_grad/ShapeShapelayer_1/W_p_b/MatMul*
out_type0*
T0
i
;train_step_1/gradients/layer_1/W_p_b/Wx_plus_b_grad/Shape_1Const*
dtype0*
valueB:

�
Itrain_step_1/gradients/layer_1/W_p_b/Wx_plus_b_grad/BroadcastGradientArgsBroadcastGradientArgs9train_step_1/gradients/layer_1/W_p_b/Wx_plus_b_grad/Shape;train_step_1/gradients/layer_1/W_p_b/Wx_plus_b_grad/Shape_1*
T0
�
7train_step_1/gradients/layer_1/W_p_b/Wx_plus_b_grad/SumSum6train_step_1/gradients/layer_1/final_result_grad/mul_1Itrain_step_1/gradients/layer_1/W_p_b/Wx_plus_b_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
�
;train_step_1/gradients/layer_1/W_p_b/Wx_plus_b_grad/ReshapeReshape7train_step_1/gradients/layer_1/W_p_b/Wx_plus_b_grad/Sum9train_step_1/gradients/layer_1/W_p_b/Wx_plus_b_grad/Shape*
T0*
Tshape0
�
9train_step_1/gradients/layer_1/W_p_b/Wx_plus_b_grad/Sum_1Sum6train_step_1/gradients/layer_1/final_result_grad/mul_1Ktrain_step_1/gradients/layer_1/W_p_b/Wx_plus_b_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
�
=train_step_1/gradients/layer_1/W_p_b/Wx_plus_b_grad/Reshape_1Reshape9train_step_1/gradients/layer_1/W_p_b/Wx_plus_b_grad/Sum_1;train_step_1/gradients/layer_1/W_p_b/Wx_plus_b_grad/Shape_1*
T0*
Tshape0
�
Dtrain_step_1/gradients/layer_1/W_p_b/Wx_plus_b_grad/tuple/group_depsNoOp<^train_step_1/gradients/layer_1/W_p_b/Wx_plus_b_grad/Reshape>^train_step_1/gradients/layer_1/W_p_b/Wx_plus_b_grad/Reshape_1
�
Ltrain_step_1/gradients/layer_1/W_p_b/Wx_plus_b_grad/tuple/control_dependencyIdentity;train_step_1/gradients/layer_1/W_p_b/Wx_plus_b_grad/ReshapeE^train_step_1/gradients/layer_1/W_p_b/Wx_plus_b_grad/tuple/group_deps*N
_classD
B@loc:@train_step_1/gradients/layer_1/W_p_b/Wx_plus_b_grad/Reshape*
T0
�
Ntrain_step_1/gradients/layer_1/W_p_b/Wx_plus_b_grad/tuple/control_dependency_1Identity=train_step_1/gradients/layer_1/W_p_b/Wx_plus_b_grad/Reshape_1E^train_step_1/gradients/layer_1/W_p_b/Wx_plus_b_grad/tuple/group_deps*P
_classF
DBloc:@train_step_1/gradients/layer_1/W_p_b/Wx_plus_b_grad/Reshape_1*
T0
�
7train_step_1/gradients/layer_1/W_p_b/MatMul_grad/MatMulMatMulLtrain_step_1/gradients/layer_1/W_p_b/Wx_plus_b_grad/tuple/control_dependencylayer_1/W/Weights/read*
transpose_b(*
T0*
transpose_a( 
�
9train_step_1/gradients/layer_1/W_p_b/MatMul_grad/MatMul_1MatMulinput_1/x_inputLtrain_step_1/gradients/layer_1/W_p_b/Wx_plus_b_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
�
Atrain_step_1/gradients/layer_1/W_p_b/MatMul_grad/tuple/group_depsNoOp8^train_step_1/gradients/layer_1/W_p_b/MatMul_grad/MatMul:^train_step_1/gradients/layer_1/W_p_b/MatMul_grad/MatMul_1
�
Itrain_step_1/gradients/layer_1/W_p_b/MatMul_grad/tuple/control_dependencyIdentity7train_step_1/gradients/layer_1/W_p_b/MatMul_grad/MatMulB^train_step_1/gradients/layer_1/W_p_b/MatMul_grad/tuple/group_deps*J
_class@
><loc:@train_step_1/gradients/layer_1/W_p_b/MatMul_grad/MatMul*
T0
�
Ktrain_step_1/gradients/layer_1/W_p_b/MatMul_grad/tuple/control_dependency_1Identity9train_step_1/gradients/layer_1/W_p_b/MatMul_grad/MatMul_1B^train_step_1/gradients/layer_1/W_p_b/MatMul_grad/tuple/group_deps*L
_classB
@>loc:@train_step_1/gradients/layer_1/W_p_b/MatMul_grad/MatMul_1*
T0
W
*train_step_1/GradientDescent/learning_rateConst*
dtype0*
valueB
 *
�#<
�
Jtrain_step_1/GradientDescent/update_layer_1/W/Weights/ApplyGradientDescentApplyGradientDescentlayer_1/W/Weights*train_step_1/GradientDescent/learning_rateKtrain_step_1/gradients/layer_1/W_p_b/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*$
_class
loc:@layer_1/W/Weights
�
Itrain_step_1/GradientDescent/update_layer_1/b/biases/ApplyGradientDescentApplyGradientDescentlayer_1/b/biases*train_step_1/GradientDescent/learning_rateNtrain_step_1/gradients/layer_1/W_p_b/Wx_plus_b_grad/tuple/control_dependency_1*
use_locking( *
T0*#
_class
loc:@layer_1/b/biases
�
train_step_1/GradientDescentNoOpK^train_step_1/GradientDescent/update_layer_1/W/Weights/ApplyGradientDescentJ^train_step_1/GradientDescent/update_layer_1/b/biases/ApplyGradientDescent
t
init_1NoOp^layer/W/Weights/Assign^layer/b/biases/Assign^layer_1/W/Weights/Assign^layer_1/b/biases/Assign
:
save_1/ConstConst*
dtype0*
valueB Bmodel
�
save_1/SaveV2/tensor_namesConst*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases*
dtype0
Q
save_1/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0
�
save_1/SaveV2SaveV2save_1/Constsave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
m
save_1/control_dependencyIdentitysave_1/Const^save_1/SaveV2*
_class
loc:@save_1/Const*
T0
Y
save_1/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
N
!save_1/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
~
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*
dtypes
2
�
save_1/AssignAssignlayer/W/Weightssave_1/RestoreV2*
use_locking(*
validate_shape(*
T0*"
_class
loc:@layer/W/Weights
Z
save_1/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
P
#save_1/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_1/RestoreV2_1	RestoreV2save_1/Constsave_1/RestoreV2_1/tensor_names#save_1/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_1/Assign_1Assignlayer/b/biasessave_1/RestoreV2_1*
use_locking(*
T0*!
_class
loc:@layer/b/biases*
validate_shape(
]
save_1/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
P
#save_1/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_1/RestoreV2_2	RestoreV2save_1/Constsave_1/RestoreV2_2/tensor_names#save_1/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_1/Assign_2Assignlayer_1/W/Weightssave_1/RestoreV2_2*
use_locking(*
T0*$
_class
loc:@layer_1/W/Weights*
validate_shape(
\
save_1/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
P
#save_1/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_1/RestoreV2_3	RestoreV2save_1/Constsave_1/RestoreV2_3/tensor_names#save_1/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_1/Assign_3Assignlayer_1/b/biasessave_1/RestoreV2_3*#
_class
loc:@layer_1/b/biases*
T0*
validate_shape(*
use_locking(
`
save_1/restore_allNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3
:
save_2/ConstConst*
valueB Bmodel*
dtype0
�
save_2/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
Q
save_2/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B 
�
save_2/SaveV2SaveV2save_2/Constsave_2/SaveV2/tensor_namessave_2/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
m
save_2/control_dependencyIdentitysave_2/Const^save_2/SaveV2*
_class
loc:@save_2/Const*
T0
Y
save_2/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
N
!save_2/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
~
save_2/RestoreV2	RestoreV2save_2/Constsave_2/RestoreV2/tensor_names!save_2/RestoreV2/shape_and_slices*
dtypes
2
�
save_2/AssignAssignlayer/W/Weightssave_2/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
Z
save_2/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
P
#save_2/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_2/RestoreV2_1	RestoreV2save_2/Constsave_2/RestoreV2_1/tensor_names#save_2/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_2/Assign_1Assignlayer/b/biasessave_2/RestoreV2_1*
use_locking(*
T0*!
_class
loc:@layer/b/biases*
validate_shape(
]
save_2/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
P
#save_2/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_2/RestoreV2_2	RestoreV2save_2/Constsave_2/RestoreV2_2/tensor_names#save_2/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_2/Assign_2Assignlayer_1/W/Weightssave_2/RestoreV2_2*$
_class
loc:@layer_1/W/Weights*
T0*
validate_shape(*
use_locking(
\
save_2/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
P
#save_2/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_2/RestoreV2_3	RestoreV2save_2/Constsave_2/RestoreV2_3/tensor_names#save_2/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_2/Assign_3Assignlayer_1/b/biasessave_2/RestoreV2_3*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_1/b/biases
`
save_2/restore_allNoOp^save_2/Assign^save_2/Assign_1^save_2/Assign_2^save_2/Assign_3
:
save_3/ConstConst*
dtype0*
valueB Bmodel
�
save_3/SaveV2/tensor_namesConst*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases*
dtype0
Q
save_3/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B 
�
save_3/SaveV2SaveV2save_3/Constsave_3/SaveV2/tensor_namessave_3/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
m
save_3/control_dependencyIdentitysave_3/Const^save_3/SaveV2*
_class
loc:@save_3/Const*
T0
Y
save_3/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
N
!save_3/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
~
save_3/RestoreV2	RestoreV2save_3/Constsave_3/RestoreV2/tensor_names!save_3/RestoreV2/shape_and_slices*
dtypes
2
�
save_3/AssignAssignlayer/W/Weightssave_3/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
Z
save_3/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
P
#save_3/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_3/RestoreV2_1	RestoreV2save_3/Constsave_3/RestoreV2_1/tensor_names#save_3/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_3/Assign_1Assignlayer/b/biasessave_3/RestoreV2_1*!
_class
loc:@layer/b/biases*
T0*
validate_shape(*
use_locking(
]
save_3/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
P
#save_3/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_3/RestoreV2_2	RestoreV2save_3/Constsave_3/RestoreV2_2/tensor_names#save_3/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_3/Assign_2Assignlayer_1/W/Weightssave_3/RestoreV2_2*
validate_shape(*$
_class
loc:@layer_1/W/Weights*
T0*
use_locking(
\
save_3/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
P
#save_3/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_3/RestoreV2_3	RestoreV2save_3/Constsave_3/RestoreV2_3/tensor_names#save_3/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_3/Assign_3Assignlayer_1/b/biasessave_3/RestoreV2_3*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_1/b/biases
`
save_3/restore_allNoOp^save_3/Assign^save_3/Assign_1^save_3/Assign_2^save_3/Assign_3
:
save_4/ConstConst*
valueB Bmodel*
dtype0
�
save_4/SaveV2/tensor_namesConst*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases*
dtype0
Q
save_4/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B 
�
save_4/SaveV2SaveV2save_4/Constsave_4/SaveV2/tensor_namessave_4/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
m
save_4/control_dependencyIdentitysave_4/Const^save_4/SaveV2*
T0*
_class
loc:@save_4/Const
Y
save_4/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
N
!save_4/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
~
save_4/RestoreV2	RestoreV2save_4/Constsave_4/RestoreV2/tensor_names!save_4/RestoreV2/shape_and_slices*
dtypes
2
�
save_4/AssignAssignlayer/W/Weightssave_4/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
Z
save_4/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
P
#save_4/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_4/RestoreV2_1	RestoreV2save_4/Constsave_4/RestoreV2_1/tensor_names#save_4/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_4/Assign_1Assignlayer/b/biasessave_4/RestoreV2_1*
use_locking(*
T0*!
_class
loc:@layer/b/biases*
validate_shape(
]
save_4/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
P
#save_4/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_4/RestoreV2_2	RestoreV2save_4/Constsave_4/RestoreV2_2/tensor_names#save_4/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_4/Assign_2Assignlayer_1/W/Weightssave_4/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
\
save_4/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
P
#save_4/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_4/RestoreV2_3	RestoreV2save_4/Constsave_4/RestoreV2_3/tensor_names#save_4/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_4/Assign_3Assignlayer_1/b/biasessave_4/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
`
save_4/restore_allNoOp^save_4/Assign^save_4/Assign_1^save_4/Assign_2^save_4/Assign_3
:
save_5/ConstConst*
dtype0*
valueB Bmodel
�
save_5/SaveV2/tensor_namesConst*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases*
dtype0
Q
save_5/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B 
�
save_5/SaveV2SaveV2save_5/Constsave_5/SaveV2/tensor_namessave_5/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
m
save_5/control_dependencyIdentitysave_5/Const^save_5/SaveV2*
_class
loc:@save_5/Const*
T0
Y
save_5/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
N
!save_5/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
~
save_5/RestoreV2	RestoreV2save_5/Constsave_5/RestoreV2/tensor_names!save_5/RestoreV2/shape_and_slices*
dtypes
2
�
save_5/AssignAssignlayer/W/Weightssave_5/RestoreV2*
use_locking(*
validate_shape(*
T0*"
_class
loc:@layer/W/Weights
Z
save_5/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
P
#save_5/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_5/RestoreV2_1	RestoreV2save_5/Constsave_5/RestoreV2_1/tensor_names#save_5/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_5/Assign_1Assignlayer/b/biasessave_5/RestoreV2_1*!
_class
loc:@layer/b/biases*
T0*
validate_shape(*
use_locking(
]
save_5/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
P
#save_5/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_5/RestoreV2_2	RestoreV2save_5/Constsave_5/RestoreV2_2/tensor_names#save_5/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_5/Assign_2Assignlayer_1/W/Weightssave_5/RestoreV2_2*
use_locking(*
T0*$
_class
loc:@layer_1/W/Weights*
validate_shape(
\
save_5/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
P
#save_5/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_5/RestoreV2_3	RestoreV2save_5/Constsave_5/RestoreV2_3/tensor_names#save_5/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_5/Assign_3Assignlayer_1/b/biasessave_5/RestoreV2_3*#
_class
loc:@layer_1/b/biases*
T0*
validate_shape(*
use_locking(
`
save_5/restore_allNoOp^save_5/Assign^save_5/Assign_1^save_5/Assign_2^save_5/Assign_3
:
save_6/ConstConst*
valueB Bmodel*
dtype0
�
save_6/SaveV2/tensor_namesConst*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases*
dtype0
Q
save_6/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B 
�
save_6/SaveV2SaveV2save_6/Constsave_6/SaveV2/tensor_namessave_6/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
m
save_6/control_dependencyIdentitysave_6/Const^save_6/SaveV2*
_class
loc:@save_6/Const*
T0
Y
save_6/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
N
!save_6/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
~
save_6/RestoreV2	RestoreV2save_6/Constsave_6/RestoreV2/tensor_names!save_6/RestoreV2/shape_and_slices*
dtypes
2
�
save_6/AssignAssignlayer/W/Weightssave_6/RestoreV2*"
_class
loc:@layer/W/Weights*
T0*
validate_shape(*
use_locking(
Z
save_6/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
P
#save_6/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_6/RestoreV2_1	RestoreV2save_6/Constsave_6/RestoreV2_1/tensor_names#save_6/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_6/Assign_1Assignlayer/b/biasessave_6/RestoreV2_1*
use_locking(*
T0*!
_class
loc:@layer/b/biases*
validate_shape(
]
save_6/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
P
#save_6/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_6/RestoreV2_2	RestoreV2save_6/Constsave_6/RestoreV2_2/tensor_names#save_6/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_6/Assign_2Assignlayer_1/W/Weightssave_6/RestoreV2_2*
use_locking(*
T0*$
_class
loc:@layer_1/W/Weights*
validate_shape(
\
save_6/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
P
#save_6/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_6/RestoreV2_3	RestoreV2save_6/Constsave_6/RestoreV2_3/tensor_names#save_6/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_6/Assign_3Assignlayer_1/b/biasessave_6/RestoreV2_3*
use_locking(*
T0*#
_class
loc:@layer_1/b/biases*
validate_shape(
`
save_6/restore_allNoOp^save_6/Assign^save_6/Assign_1^save_6/Assign_2^save_6/Assign_3
:
save_7/ConstConst*
valueB Bmodel*
dtype0
�
save_7/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
Q
save_7/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B 
�
save_7/SaveV2SaveV2save_7/Constsave_7/SaveV2/tensor_namessave_7/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
m
save_7/control_dependencyIdentitysave_7/Const^save_7/SaveV2*
T0*
_class
loc:@save_7/Const
Y
save_7/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
N
!save_7/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
~
save_7/RestoreV2	RestoreV2save_7/Constsave_7/RestoreV2/tensor_names!save_7/RestoreV2/shape_and_slices*
dtypes
2
�
save_7/AssignAssignlayer/W/Weightssave_7/RestoreV2*
use_locking(*
validate_shape(*
T0*"
_class
loc:@layer/W/Weights
Z
save_7/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
P
#save_7/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_7/RestoreV2_1	RestoreV2save_7/Constsave_7/RestoreV2_1/tensor_names#save_7/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_7/Assign_1Assignlayer/b/biasessave_7/RestoreV2_1*
use_locking(*
validate_shape(*
T0*!
_class
loc:@layer/b/biases
]
save_7/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
P
#save_7/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_7/RestoreV2_2	RestoreV2save_7/Constsave_7/RestoreV2_2/tensor_names#save_7/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_7/Assign_2Assignlayer_1/W/Weightssave_7/RestoreV2_2*
validate_shape(*$
_class
loc:@layer_1/W/Weights*
T0*
use_locking(
\
save_7/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
P
#save_7/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_7/RestoreV2_3	RestoreV2save_7/Constsave_7/RestoreV2_3/tensor_names#save_7/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_7/Assign_3Assignlayer_1/b/biasessave_7/RestoreV2_3*#
_class
loc:@layer_1/b/biases*
T0*
validate_shape(*
use_locking(
`
save_7/restore_allNoOp^save_7/Assign^save_7/Assign_1^save_7/Assign_2^save_7/Assign_3
:
save_8/ConstConst*
valueB Bmodel*
dtype0
�
save_8/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
Q
save_8/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0
�
save_8/SaveV2SaveV2save_8/Constsave_8/SaveV2/tensor_namessave_8/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
m
save_8/control_dependencyIdentitysave_8/Const^save_8/SaveV2*
_class
loc:@save_8/Const*
T0
Y
save_8/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
N
!save_8/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
~
save_8/RestoreV2	RestoreV2save_8/Constsave_8/RestoreV2/tensor_names!save_8/RestoreV2/shape_and_slices*
dtypes
2
�
save_8/AssignAssignlayer/W/Weightssave_8/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
Z
save_8/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
P
#save_8/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_8/RestoreV2_1	RestoreV2save_8/Constsave_8/RestoreV2_1/tensor_names#save_8/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_8/Assign_1Assignlayer/b/biasessave_8/RestoreV2_1*
validate_shape(*!
_class
loc:@layer/b/biases*
T0*
use_locking(
]
save_8/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
P
#save_8/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_8/RestoreV2_2	RestoreV2save_8/Constsave_8/RestoreV2_2/tensor_names#save_8/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_8/Assign_2Assignlayer_1/W/Weightssave_8/RestoreV2_2*$
_class
loc:@layer_1/W/Weights*
T0*
validate_shape(*
use_locking(
\
save_8/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
P
#save_8/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_8/RestoreV2_3	RestoreV2save_8/Constsave_8/RestoreV2_3/tensor_names#save_8/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_8/Assign_3Assignlayer_1/b/biasessave_8/RestoreV2_3*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_1/b/biases
`
save_8/restore_allNoOp^save_8/Assign^save_8/Assign_1^save_8/Assign_2^save_8/Assign_3
:
save_9/ConstConst*
valueB Bmodel*
dtype0
�
save_9/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
Q
save_9/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B 
�
save_9/SaveV2SaveV2save_9/Constsave_9/SaveV2/tensor_namessave_9/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
m
save_9/control_dependencyIdentitysave_9/Const^save_9/SaveV2*
_class
loc:@save_9/Const*
T0
Y
save_9/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
N
!save_9/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
~
save_9/RestoreV2	RestoreV2save_9/Constsave_9/RestoreV2/tensor_names!save_9/RestoreV2/shape_and_slices*
dtypes
2
�
save_9/AssignAssignlayer/W/Weightssave_9/RestoreV2*"
_class
loc:@layer/W/Weights*
T0*
validate_shape(*
use_locking(
Z
save_9/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
P
#save_9/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_9/RestoreV2_1	RestoreV2save_9/Constsave_9/RestoreV2_1/tensor_names#save_9/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_9/Assign_1Assignlayer/b/biasessave_9/RestoreV2_1*
use_locking(*
validate_shape(*
T0*!
_class
loc:@layer/b/biases
]
save_9/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
P
#save_9/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_9/RestoreV2_2	RestoreV2save_9/Constsave_9/RestoreV2_2/tensor_names#save_9/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_9/Assign_2Assignlayer_1/W/Weightssave_9/RestoreV2_2*
validate_shape(*$
_class
loc:@layer_1/W/Weights*
T0*
use_locking(
\
save_9/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
P
#save_9/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_9/RestoreV2_3	RestoreV2save_9/Constsave_9/RestoreV2_3/tensor_names#save_9/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_9/Assign_3Assignlayer_1/b/biasessave_9/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
`
save_9/restore_allNoOp^save_9/Assign^save_9/Assign_1^save_9/Assign_2^save_9/Assign_3
;
save_10/ConstConst*
valueB Bmodel*
dtype0
�
save_10/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
R
save_10/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B 
�
save_10/SaveV2SaveV2save_10/Constsave_10/SaveV2/tensor_namessave_10/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_10/control_dependencyIdentitysave_10/Const^save_10/SaveV2*
T0* 
_class
loc:@save_10/Const
Z
save_10/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
O
"save_10/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_10/RestoreV2	RestoreV2save_10/Constsave_10/RestoreV2/tensor_names"save_10/RestoreV2/shape_and_slices*
dtypes
2
�
save_10/AssignAssignlayer/W/Weightssave_10/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
[
 save_10/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
Q
$save_10/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_10/RestoreV2_1	RestoreV2save_10/Const save_10/RestoreV2_1/tensor_names$save_10/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_10/Assign_1Assignlayer/b/biasessave_10/RestoreV2_1*
use_locking(*
T0*!
_class
loc:@layer/b/biases*
validate_shape(
^
 save_10/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
Q
$save_10/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_10/RestoreV2_2	RestoreV2save_10/Const save_10/RestoreV2_2/tensor_names$save_10/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_10/Assign_2Assignlayer_1/W/Weightssave_10/RestoreV2_2*
use_locking(*
T0*$
_class
loc:@layer_1/W/Weights*
validate_shape(
]
 save_10/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
Q
$save_10/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_10/RestoreV2_3	RestoreV2save_10/Const save_10/RestoreV2_3/tensor_names$save_10/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_10/Assign_3Assignlayer_1/b/biasessave_10/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
e
save_10/restore_allNoOp^save_10/Assign^save_10/Assign_1^save_10/Assign_2^save_10/Assign_3
;
save_11/ConstConst*
valueB Bmodel*
dtype0
�
save_11/SaveV2/tensor_namesConst*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases*
dtype0
R
save_11/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B 
�
save_11/SaveV2SaveV2save_11/Constsave_11/SaveV2/tensor_namessave_11/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_11/control_dependencyIdentitysave_11/Const^save_11/SaveV2* 
_class
loc:@save_11/Const*
T0
Z
save_11/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
O
"save_11/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_11/RestoreV2	RestoreV2save_11/Constsave_11/RestoreV2/tensor_names"save_11/RestoreV2/shape_and_slices*
dtypes
2
�
save_11/AssignAssignlayer/W/Weightssave_11/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
[
 save_11/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
Q
$save_11/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_11/RestoreV2_1	RestoreV2save_11/Const save_11/RestoreV2_1/tensor_names$save_11/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_11/Assign_1Assignlayer/b/biasessave_11/RestoreV2_1*
use_locking(*
T0*!
_class
loc:@layer/b/biases*
validate_shape(
^
 save_11/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
Q
$save_11/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_11/RestoreV2_2	RestoreV2save_11/Const save_11/RestoreV2_2/tensor_names$save_11/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_11/Assign_2Assignlayer_1/W/Weightssave_11/RestoreV2_2*$
_class
loc:@layer_1/W/Weights*
T0*
validate_shape(*
use_locking(
]
 save_11/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
Q
$save_11/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_11/RestoreV2_3	RestoreV2save_11/Const save_11/RestoreV2_3/tensor_names$save_11/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_11/Assign_3Assignlayer_1/b/biasessave_11/RestoreV2_3*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_1/b/biases
e
save_11/restore_allNoOp^save_11/Assign^save_11/Assign_1^save_11/Assign_2^save_11/Assign_3
;
save_12/ConstConst*
valueB Bmodel*
dtype0
�
save_12/SaveV2/tensor_namesConst*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases*
dtype0
R
save_12/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B 
�
save_12/SaveV2SaveV2save_12/Constsave_12/SaveV2/tensor_namessave_12/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_12/control_dependencyIdentitysave_12/Const^save_12/SaveV2*
T0* 
_class
loc:@save_12/Const
Z
save_12/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
O
"save_12/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_12/RestoreV2	RestoreV2save_12/Constsave_12/RestoreV2/tensor_names"save_12/RestoreV2/shape_and_slices*
dtypes
2
�
save_12/AssignAssignlayer/W/Weightssave_12/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
[
 save_12/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
Q
$save_12/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_12/RestoreV2_1	RestoreV2save_12/Const save_12/RestoreV2_1/tensor_names$save_12/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_12/Assign_1Assignlayer/b/biasessave_12/RestoreV2_1*
use_locking(*
T0*!
_class
loc:@layer/b/biases*
validate_shape(
^
 save_12/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
Q
$save_12/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_12/RestoreV2_2	RestoreV2save_12/Const save_12/RestoreV2_2/tensor_names$save_12/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_12/Assign_2Assignlayer_1/W/Weightssave_12/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
]
 save_12/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
Q
$save_12/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_12/RestoreV2_3	RestoreV2save_12/Const save_12/RestoreV2_3/tensor_names$save_12/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_12/Assign_3Assignlayer_1/b/biasessave_12/RestoreV2_3*#
_class
loc:@layer_1/b/biases*
T0*
validate_shape(*
use_locking(
e
save_12/restore_allNoOp^save_12/Assign^save_12/Assign_1^save_12/Assign_2^save_12/Assign_3
;
save_13/ConstConst*
valueB Bmodel*
dtype0
�
save_13/SaveV2/tensor_namesConst*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases*
dtype0
R
save_13/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B 
�
save_13/SaveV2SaveV2save_13/Constsave_13/SaveV2/tensor_namessave_13/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_13/control_dependencyIdentitysave_13/Const^save_13/SaveV2* 
_class
loc:@save_13/Const*
T0
Z
save_13/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
O
"save_13/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_13/RestoreV2	RestoreV2save_13/Constsave_13/RestoreV2/tensor_names"save_13/RestoreV2/shape_and_slices*
dtypes
2
�
save_13/AssignAssignlayer/W/Weightssave_13/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
[
 save_13/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
Q
$save_13/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_13/RestoreV2_1	RestoreV2save_13/Const save_13/RestoreV2_1/tensor_names$save_13/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_13/Assign_1Assignlayer/b/biasessave_13/RestoreV2_1*!
_class
loc:@layer/b/biases*
T0*
validate_shape(*
use_locking(
^
 save_13/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
Q
$save_13/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_13/RestoreV2_2	RestoreV2save_13/Const save_13/RestoreV2_2/tensor_names$save_13/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_13/Assign_2Assignlayer_1/W/Weightssave_13/RestoreV2_2*
use_locking(*
T0*$
_class
loc:@layer_1/W/Weights*
validate_shape(
]
 save_13/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
Q
$save_13/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_13/RestoreV2_3	RestoreV2save_13/Const save_13/RestoreV2_3/tensor_names$save_13/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_13/Assign_3Assignlayer_1/b/biasessave_13/RestoreV2_3*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_1/b/biases
e
save_13/restore_allNoOp^save_13/Assign^save_13/Assign_1^save_13/Assign_2^save_13/Assign_3
;
save_14/ConstConst*
dtype0*
valueB Bmodel
�
save_14/SaveV2/tensor_namesConst*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases*
dtype0
R
save_14/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B 
�
save_14/SaveV2SaveV2save_14/Constsave_14/SaveV2/tensor_namessave_14/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_14/control_dependencyIdentitysave_14/Const^save_14/SaveV2*
T0* 
_class
loc:@save_14/Const
Z
save_14/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
O
"save_14/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_14/RestoreV2	RestoreV2save_14/Constsave_14/RestoreV2/tensor_names"save_14/RestoreV2/shape_and_slices*
dtypes
2
�
save_14/AssignAssignlayer/W/Weightssave_14/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
[
 save_14/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
Q
$save_14/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_14/RestoreV2_1	RestoreV2save_14/Const save_14/RestoreV2_1/tensor_names$save_14/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_14/Assign_1Assignlayer/b/biasessave_14/RestoreV2_1*
use_locking(*
T0*!
_class
loc:@layer/b/biases*
validate_shape(
^
 save_14/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
Q
$save_14/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_14/RestoreV2_2	RestoreV2save_14/Const save_14/RestoreV2_2/tensor_names$save_14/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_14/Assign_2Assignlayer_1/W/Weightssave_14/RestoreV2_2*$
_class
loc:@layer_1/W/Weights*
T0*
validate_shape(*
use_locking(
]
 save_14/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
Q
$save_14/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_14/RestoreV2_3	RestoreV2save_14/Const save_14/RestoreV2_3/tensor_names$save_14/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_14/Assign_3Assignlayer_1/b/biasessave_14/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
e
save_14/restore_allNoOp^save_14/Assign^save_14/Assign_1^save_14/Assign_2^save_14/Assign_3
;
save_15/ConstConst*
valueB Bmodel*
dtype0
�
save_15/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
R
save_15/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0
�
save_15/SaveV2SaveV2save_15/Constsave_15/SaveV2/tensor_namessave_15/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_15/control_dependencyIdentitysave_15/Const^save_15/SaveV2*
T0* 
_class
loc:@save_15/Const
Z
save_15/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
O
"save_15/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_15/RestoreV2	RestoreV2save_15/Constsave_15/RestoreV2/tensor_names"save_15/RestoreV2/shape_and_slices*
dtypes
2
�
save_15/AssignAssignlayer/W/Weightssave_15/RestoreV2*"
_class
loc:@layer/W/Weights*
T0*
validate_shape(*
use_locking(
[
 save_15/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
Q
$save_15/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_15/RestoreV2_1	RestoreV2save_15/Const save_15/RestoreV2_1/tensor_names$save_15/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_15/Assign_1Assignlayer/b/biasessave_15/RestoreV2_1*!
_class
loc:@layer/b/biases*
T0*
validate_shape(*
use_locking(
^
 save_15/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
Q
$save_15/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_15/RestoreV2_2	RestoreV2save_15/Const save_15/RestoreV2_2/tensor_names$save_15/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_15/Assign_2Assignlayer_1/W/Weightssave_15/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
]
 save_15/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
Q
$save_15/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_15/RestoreV2_3	RestoreV2save_15/Const save_15/RestoreV2_3/tensor_names$save_15/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_15/Assign_3Assignlayer_1/b/biasessave_15/RestoreV2_3*#
_class
loc:@layer_1/b/biases*
T0*
validate_shape(*
use_locking(
e
save_15/restore_allNoOp^save_15/Assign^save_15/Assign_1^save_15/Assign_2^save_15/Assign_3
;
save_16/ConstConst*
dtype0*
valueB Bmodel
�
save_16/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
R
save_16/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B 
�
save_16/SaveV2SaveV2save_16/Constsave_16/SaveV2/tensor_namessave_16/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_16/control_dependencyIdentitysave_16/Const^save_16/SaveV2* 
_class
loc:@save_16/Const*
T0
Z
save_16/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
O
"save_16/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_16/RestoreV2	RestoreV2save_16/Constsave_16/RestoreV2/tensor_names"save_16/RestoreV2/shape_and_slices*
dtypes
2
�
save_16/AssignAssignlayer/W/Weightssave_16/RestoreV2*
use_locking(*
validate_shape(*
T0*"
_class
loc:@layer/W/Weights
[
 save_16/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
Q
$save_16/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_16/RestoreV2_1	RestoreV2save_16/Const save_16/RestoreV2_1/tensor_names$save_16/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_16/Assign_1Assignlayer/b/biasessave_16/RestoreV2_1*
validate_shape(*!
_class
loc:@layer/b/biases*
T0*
use_locking(
^
 save_16/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
Q
$save_16/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_16/RestoreV2_2	RestoreV2save_16/Const save_16/RestoreV2_2/tensor_names$save_16/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_16/Assign_2Assignlayer_1/W/Weightssave_16/RestoreV2_2*
validate_shape(*$
_class
loc:@layer_1/W/Weights*
T0*
use_locking(
]
 save_16/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
Q
$save_16/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_16/RestoreV2_3	RestoreV2save_16/Const save_16/RestoreV2_3/tensor_names$save_16/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_16/Assign_3Assignlayer_1/b/biasessave_16/RestoreV2_3*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_1/b/biases
e
save_16/restore_allNoOp^save_16/Assign^save_16/Assign_1^save_16/Assign_2^save_16/Assign_3
;
save_17/ConstConst*
valueB Bmodel*
dtype0
�
save_17/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
R
save_17/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0
�
save_17/SaveV2SaveV2save_17/Constsave_17/SaveV2/tensor_namessave_17/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_17/control_dependencyIdentitysave_17/Const^save_17/SaveV2*
T0* 
_class
loc:@save_17/Const
Z
save_17/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
O
"save_17/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_17/RestoreV2	RestoreV2save_17/Constsave_17/RestoreV2/tensor_names"save_17/RestoreV2/shape_and_slices*
dtypes
2
�
save_17/AssignAssignlayer/W/Weightssave_17/RestoreV2*"
_class
loc:@layer/W/Weights*
T0*
validate_shape(*
use_locking(
[
 save_17/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
Q
$save_17/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_17/RestoreV2_1	RestoreV2save_17/Const save_17/RestoreV2_1/tensor_names$save_17/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_17/Assign_1Assignlayer/b/biasessave_17/RestoreV2_1*!
_class
loc:@layer/b/biases*
T0*
validate_shape(*
use_locking(
^
 save_17/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
Q
$save_17/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_17/RestoreV2_2	RestoreV2save_17/Const save_17/RestoreV2_2/tensor_names$save_17/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_17/Assign_2Assignlayer_1/W/Weightssave_17/RestoreV2_2*
use_locking(*
T0*$
_class
loc:@layer_1/W/Weights*
validate_shape(
]
 save_17/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
Q
$save_17/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_17/RestoreV2_3	RestoreV2save_17/Const save_17/RestoreV2_3/tensor_names$save_17/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_17/Assign_3Assignlayer_1/b/biasessave_17/RestoreV2_3*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_1/b/biases
e
save_17/restore_allNoOp^save_17/Assign^save_17/Assign_1^save_17/Assign_2^save_17/Assign_3
;
save_18/ConstConst*
dtype0*
valueB Bmodel
�
save_18/SaveV2/tensor_namesConst*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases*
dtype0
R
save_18/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B 
�
save_18/SaveV2SaveV2save_18/Constsave_18/SaveV2/tensor_namessave_18/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_18/control_dependencyIdentitysave_18/Const^save_18/SaveV2*
T0* 
_class
loc:@save_18/Const
Z
save_18/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
O
"save_18/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_18/RestoreV2	RestoreV2save_18/Constsave_18/RestoreV2/tensor_names"save_18/RestoreV2/shape_and_slices*
dtypes
2
�
save_18/AssignAssignlayer/W/Weightssave_18/RestoreV2*"
_class
loc:@layer/W/Weights*
T0*
validate_shape(*
use_locking(
[
 save_18/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
Q
$save_18/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_18/RestoreV2_1	RestoreV2save_18/Const save_18/RestoreV2_1/tensor_names$save_18/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_18/Assign_1Assignlayer/b/biasessave_18/RestoreV2_1*
use_locking(*
validate_shape(*
T0*!
_class
loc:@layer/b/biases
^
 save_18/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
Q
$save_18/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_18/RestoreV2_2	RestoreV2save_18/Const save_18/RestoreV2_2/tensor_names$save_18/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_18/Assign_2Assignlayer_1/W/Weightssave_18/RestoreV2_2*
use_locking(*
T0*$
_class
loc:@layer_1/W/Weights*
validate_shape(
]
 save_18/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
Q
$save_18/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_18/RestoreV2_3	RestoreV2save_18/Const save_18/RestoreV2_3/tensor_names$save_18/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_18/Assign_3Assignlayer_1/b/biasessave_18/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
e
save_18/restore_allNoOp^save_18/Assign^save_18/Assign_1^save_18/Assign_2^save_18/Assign_3
;
save_19/ConstConst*
dtype0*
valueB Bmodel
�
save_19/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
R
save_19/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B 
�
save_19/SaveV2SaveV2save_19/Constsave_19/SaveV2/tensor_namessave_19/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_19/control_dependencyIdentitysave_19/Const^save_19/SaveV2* 
_class
loc:@save_19/Const*
T0
Z
save_19/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
O
"save_19/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_19/RestoreV2	RestoreV2save_19/Constsave_19/RestoreV2/tensor_names"save_19/RestoreV2/shape_and_slices*
dtypes
2
�
save_19/AssignAssignlayer/W/Weightssave_19/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
[
 save_19/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
Q
$save_19/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_19/RestoreV2_1	RestoreV2save_19/Const save_19/RestoreV2_1/tensor_names$save_19/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_19/Assign_1Assignlayer/b/biasessave_19/RestoreV2_1*!
_class
loc:@layer/b/biases*
T0*
validate_shape(*
use_locking(
^
 save_19/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
Q
$save_19/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_19/RestoreV2_2	RestoreV2save_19/Const save_19/RestoreV2_2/tensor_names$save_19/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_19/Assign_2Assignlayer_1/W/Weightssave_19/RestoreV2_2*$
_class
loc:@layer_1/W/Weights*
T0*
validate_shape(*
use_locking(
]
 save_19/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
Q
$save_19/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_19/RestoreV2_3	RestoreV2save_19/Const save_19/RestoreV2_3/tensor_names$save_19/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_19/Assign_3Assignlayer_1/b/biasessave_19/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
e
save_19/restore_allNoOp^save_19/Assign^save_19/Assign_1^save_19/Assign_2^save_19/Assign_3
;
save_20/ConstConst*
valueB Bmodel*
dtype0
�
save_20/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
R
save_20/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B 
�
save_20/SaveV2SaveV2save_20/Constsave_20/SaveV2/tensor_namessave_20/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_20/control_dependencyIdentitysave_20/Const^save_20/SaveV2* 
_class
loc:@save_20/Const*
T0
Z
save_20/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
O
"save_20/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_20/RestoreV2	RestoreV2save_20/Constsave_20/RestoreV2/tensor_names"save_20/RestoreV2/shape_and_slices*
dtypes
2
�
save_20/AssignAssignlayer/W/Weightssave_20/RestoreV2*"
_class
loc:@layer/W/Weights*
T0*
validate_shape(*
use_locking(
[
 save_20/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
Q
$save_20/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_20/RestoreV2_1	RestoreV2save_20/Const save_20/RestoreV2_1/tensor_names$save_20/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_20/Assign_1Assignlayer/b/biasessave_20/RestoreV2_1*!
_class
loc:@layer/b/biases*
T0*
validate_shape(*
use_locking(
^
 save_20/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
Q
$save_20/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_20/RestoreV2_2	RestoreV2save_20/Const save_20/RestoreV2_2/tensor_names$save_20/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_20/Assign_2Assignlayer_1/W/Weightssave_20/RestoreV2_2*
validate_shape(*$
_class
loc:@layer_1/W/Weights*
T0*
use_locking(
]
 save_20/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
Q
$save_20/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_20/RestoreV2_3	RestoreV2save_20/Const save_20/RestoreV2_3/tensor_names$save_20/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_20/Assign_3Assignlayer_1/b/biasessave_20/RestoreV2_3*
use_locking(*
T0*#
_class
loc:@layer_1/b/biases*
validate_shape(
e
save_20/restore_allNoOp^save_20/Assign^save_20/Assign_1^save_20/Assign_2^save_20/Assign_3
;
save_21/ConstConst*
dtype0*
valueB Bmodel
�
save_21/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
R
save_21/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B 
�
save_21/SaveV2SaveV2save_21/Constsave_21/SaveV2/tensor_namessave_21/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_21/control_dependencyIdentitysave_21/Const^save_21/SaveV2*
T0* 
_class
loc:@save_21/Const
Z
save_21/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
O
"save_21/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_21/RestoreV2	RestoreV2save_21/Constsave_21/RestoreV2/tensor_names"save_21/RestoreV2/shape_and_slices*
dtypes
2
�
save_21/AssignAssignlayer/W/Weightssave_21/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
[
 save_21/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
Q
$save_21/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_21/RestoreV2_1	RestoreV2save_21/Const save_21/RestoreV2_1/tensor_names$save_21/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_21/Assign_1Assignlayer/b/biasessave_21/RestoreV2_1*!
_class
loc:@layer/b/biases*
T0*
validate_shape(*
use_locking(
^
 save_21/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
Q
$save_21/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_21/RestoreV2_2	RestoreV2save_21/Const save_21/RestoreV2_2/tensor_names$save_21/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_21/Assign_2Assignlayer_1/W/Weightssave_21/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
]
 save_21/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
Q
$save_21/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_21/RestoreV2_3	RestoreV2save_21/Const save_21/RestoreV2_3/tensor_names$save_21/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_21/Assign_3Assignlayer_1/b/biasessave_21/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
e
save_21/restore_allNoOp^save_21/Assign^save_21/Assign_1^save_21/Assign_2^save_21/Assign_3
;
save_22/ConstConst*
dtype0*
valueB Bmodel
�
save_22/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
R
save_22/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0
�
save_22/SaveV2SaveV2save_22/Constsave_22/SaveV2/tensor_namessave_22/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_22/control_dependencyIdentitysave_22/Const^save_22/SaveV2* 
_class
loc:@save_22/Const*
T0
Z
save_22/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
O
"save_22/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_22/RestoreV2	RestoreV2save_22/Constsave_22/RestoreV2/tensor_names"save_22/RestoreV2/shape_and_slices*
dtypes
2
�
save_22/AssignAssignlayer/W/Weightssave_22/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
[
 save_22/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
Q
$save_22/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_22/RestoreV2_1	RestoreV2save_22/Const save_22/RestoreV2_1/tensor_names$save_22/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_22/Assign_1Assignlayer/b/biasessave_22/RestoreV2_1*!
_class
loc:@layer/b/biases*
T0*
validate_shape(*
use_locking(
^
 save_22/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
Q
$save_22/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_22/RestoreV2_2	RestoreV2save_22/Const save_22/RestoreV2_2/tensor_names$save_22/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_22/Assign_2Assignlayer_1/W/Weightssave_22/RestoreV2_2*
use_locking(*
T0*$
_class
loc:@layer_1/W/Weights*
validate_shape(
]
 save_22/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
Q
$save_22/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_22/RestoreV2_3	RestoreV2save_22/Const save_22/RestoreV2_3/tensor_names$save_22/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_22/Assign_3Assignlayer_1/b/biasessave_22/RestoreV2_3*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_1/b/biases
e
save_22/restore_allNoOp^save_22/Assign^save_22/Assign_1^save_22/Assign_2^save_22/Assign_3
;
save_23/ConstConst*
dtype0*
valueB Bmodel
�
save_23/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
R
save_23/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B 
�
save_23/SaveV2SaveV2save_23/Constsave_23/SaveV2/tensor_namessave_23/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_23/control_dependencyIdentitysave_23/Const^save_23/SaveV2*
T0* 
_class
loc:@save_23/Const
Z
save_23/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
O
"save_23/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_23/RestoreV2	RestoreV2save_23/Constsave_23/RestoreV2/tensor_names"save_23/RestoreV2/shape_and_slices*
dtypes
2
�
save_23/AssignAssignlayer/W/Weightssave_23/RestoreV2*"
_class
loc:@layer/W/Weights*
T0*
validate_shape(*
use_locking(
[
 save_23/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
Q
$save_23/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_23/RestoreV2_1	RestoreV2save_23/Const save_23/RestoreV2_1/tensor_names$save_23/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_23/Assign_1Assignlayer/b/biasessave_23/RestoreV2_1*
use_locking(*
T0*!
_class
loc:@layer/b/biases*
validate_shape(
^
 save_23/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
Q
$save_23/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_23/RestoreV2_2	RestoreV2save_23/Const save_23/RestoreV2_2/tensor_names$save_23/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_23/Assign_2Assignlayer_1/W/Weightssave_23/RestoreV2_2*$
_class
loc:@layer_1/W/Weights*
T0*
validate_shape(*
use_locking(
]
 save_23/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
Q
$save_23/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_23/RestoreV2_3	RestoreV2save_23/Const save_23/RestoreV2_3/tensor_names$save_23/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_23/Assign_3Assignlayer_1/b/biasessave_23/RestoreV2_3*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_1/b/biases
e
save_23/restore_allNoOp^save_23/Assign^save_23/Assign_1^save_23/Assign_2^save_23/Assign_3
;
save_24/ConstConst*
valueB Bmodel*
dtype0
�
save_24/SaveV2/tensor_namesConst*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases*
dtype0
R
save_24/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0
�
save_24/SaveV2SaveV2save_24/Constsave_24/SaveV2/tensor_namessave_24/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_24/control_dependencyIdentitysave_24/Const^save_24/SaveV2* 
_class
loc:@save_24/Const*
T0
Z
save_24/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
O
"save_24/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_24/RestoreV2	RestoreV2save_24/Constsave_24/RestoreV2/tensor_names"save_24/RestoreV2/shape_and_slices*
dtypes
2
�
save_24/AssignAssignlayer/W/Weightssave_24/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
[
 save_24/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
Q
$save_24/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_24/RestoreV2_1	RestoreV2save_24/Const save_24/RestoreV2_1/tensor_names$save_24/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_24/Assign_1Assignlayer/b/biasessave_24/RestoreV2_1*!
_class
loc:@layer/b/biases*
T0*
validate_shape(*
use_locking(
^
 save_24/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
Q
$save_24/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_24/RestoreV2_2	RestoreV2save_24/Const save_24/RestoreV2_2/tensor_names$save_24/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_24/Assign_2Assignlayer_1/W/Weightssave_24/RestoreV2_2*
validate_shape(*$
_class
loc:@layer_1/W/Weights*
T0*
use_locking(
]
 save_24/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
Q
$save_24/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_24/RestoreV2_3	RestoreV2save_24/Const save_24/RestoreV2_3/tensor_names$save_24/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_24/Assign_3Assignlayer_1/b/biasessave_24/RestoreV2_3*#
_class
loc:@layer_1/b/biases*
T0*
validate_shape(*
use_locking(
e
save_24/restore_allNoOp^save_24/Assign^save_24/Assign_1^save_24/Assign_2^save_24/Assign_3
;
save_25/ConstConst*
valueB Bmodel*
dtype0
�
save_25/SaveV2/tensor_namesConst*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases*
dtype0
R
save_25/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0
�
save_25/SaveV2SaveV2save_25/Constsave_25/SaveV2/tensor_namessave_25/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_25/control_dependencyIdentitysave_25/Const^save_25/SaveV2*
T0* 
_class
loc:@save_25/Const
Z
save_25/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
O
"save_25/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_25/RestoreV2	RestoreV2save_25/Constsave_25/RestoreV2/tensor_names"save_25/RestoreV2/shape_and_slices*
dtypes
2
�
save_25/AssignAssignlayer/W/Weightssave_25/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
[
 save_25/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
Q
$save_25/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_25/RestoreV2_1	RestoreV2save_25/Const save_25/RestoreV2_1/tensor_names$save_25/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_25/Assign_1Assignlayer/b/biasessave_25/RestoreV2_1*!
_class
loc:@layer/b/biases*
T0*
validate_shape(*
use_locking(
^
 save_25/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
Q
$save_25/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_25/RestoreV2_2	RestoreV2save_25/Const save_25/RestoreV2_2/tensor_names$save_25/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_25/Assign_2Assignlayer_1/W/Weightssave_25/RestoreV2_2*$
_class
loc:@layer_1/W/Weights*
T0*
validate_shape(*
use_locking(
]
 save_25/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
Q
$save_25/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_25/RestoreV2_3	RestoreV2save_25/Const save_25/RestoreV2_3/tensor_names$save_25/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_25/Assign_3Assignlayer_1/b/biasessave_25/RestoreV2_3*#
_class
loc:@layer_1/b/biases*
T0*
validate_shape(*
use_locking(
e
save_25/restore_allNoOp^save_25/Assign^save_25/Assign_1^save_25/Assign_2^save_25/Assign_3
;
save_26/ConstConst*
dtype0*
valueB Bmodel
�
save_26/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
R
save_26/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0
�
save_26/SaveV2SaveV2save_26/Constsave_26/SaveV2/tensor_namessave_26/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_26/control_dependencyIdentitysave_26/Const^save_26/SaveV2*
T0* 
_class
loc:@save_26/Const
Z
save_26/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
O
"save_26/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_26/RestoreV2	RestoreV2save_26/Constsave_26/RestoreV2/tensor_names"save_26/RestoreV2/shape_and_slices*
dtypes
2
�
save_26/AssignAssignlayer/W/Weightssave_26/RestoreV2*"
_class
loc:@layer/W/Weights*
T0*
validate_shape(*
use_locking(
[
 save_26/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
Q
$save_26/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_26/RestoreV2_1	RestoreV2save_26/Const save_26/RestoreV2_1/tensor_names$save_26/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_26/Assign_1Assignlayer/b/biasessave_26/RestoreV2_1*
use_locking(*
T0*!
_class
loc:@layer/b/biases*
validate_shape(
^
 save_26/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
Q
$save_26/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_26/RestoreV2_2	RestoreV2save_26/Const save_26/RestoreV2_2/tensor_names$save_26/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_26/Assign_2Assignlayer_1/W/Weightssave_26/RestoreV2_2*
validate_shape(*$
_class
loc:@layer_1/W/Weights*
T0*
use_locking(
]
 save_26/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
Q
$save_26/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_26/RestoreV2_3	RestoreV2save_26/Const save_26/RestoreV2_3/tensor_names$save_26/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_26/Assign_3Assignlayer_1/b/biasessave_26/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
e
save_26/restore_allNoOp^save_26/Assign^save_26/Assign_1^save_26/Assign_2^save_26/Assign_3
;
save_27/ConstConst*
dtype0*
valueB Bmodel
�
save_27/SaveV2/tensor_namesConst*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases*
dtype0
R
save_27/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B 
�
save_27/SaveV2SaveV2save_27/Constsave_27/SaveV2/tensor_namessave_27/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_27/control_dependencyIdentitysave_27/Const^save_27/SaveV2* 
_class
loc:@save_27/Const*
T0
Z
save_27/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
O
"save_27/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_27/RestoreV2	RestoreV2save_27/Constsave_27/RestoreV2/tensor_names"save_27/RestoreV2/shape_and_slices*
dtypes
2
�
save_27/AssignAssignlayer/W/Weightssave_27/RestoreV2*
use_locking(*
validate_shape(*
T0*"
_class
loc:@layer/W/Weights
[
 save_27/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
Q
$save_27/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_27/RestoreV2_1	RestoreV2save_27/Const save_27/RestoreV2_1/tensor_names$save_27/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_27/Assign_1Assignlayer/b/biasessave_27/RestoreV2_1*
validate_shape(*!
_class
loc:@layer/b/biases*
T0*
use_locking(
^
 save_27/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
Q
$save_27/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_27/RestoreV2_2	RestoreV2save_27/Const save_27/RestoreV2_2/tensor_names$save_27/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_27/Assign_2Assignlayer_1/W/Weightssave_27/RestoreV2_2*$
_class
loc:@layer_1/W/Weights*
T0*
validate_shape(*
use_locking(
]
 save_27/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
Q
$save_27/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_27/RestoreV2_3	RestoreV2save_27/Const save_27/RestoreV2_3/tensor_names$save_27/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_27/Assign_3Assignlayer_1/b/biasessave_27/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
e
save_27/restore_allNoOp^save_27/Assign^save_27/Assign_1^save_27/Assign_2^save_27/Assign_3
;
save_28/ConstConst*
dtype0*
valueB Bmodel
�
save_28/SaveV2/tensor_namesConst*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases*
dtype0
R
save_28/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0
�
save_28/SaveV2SaveV2save_28/Constsave_28/SaveV2/tensor_namessave_28/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_28/control_dependencyIdentitysave_28/Const^save_28/SaveV2*
T0* 
_class
loc:@save_28/Const
Z
save_28/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
O
"save_28/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_28/RestoreV2	RestoreV2save_28/Constsave_28/RestoreV2/tensor_names"save_28/RestoreV2/shape_and_slices*
dtypes
2
�
save_28/AssignAssignlayer/W/Weightssave_28/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
[
 save_28/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
Q
$save_28/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_28/RestoreV2_1	RestoreV2save_28/Const save_28/RestoreV2_1/tensor_names$save_28/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_28/Assign_1Assignlayer/b/biasessave_28/RestoreV2_1*!
_class
loc:@layer/b/biases*
T0*
validate_shape(*
use_locking(
^
 save_28/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
Q
$save_28/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_28/RestoreV2_2	RestoreV2save_28/Const save_28/RestoreV2_2/tensor_names$save_28/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_28/Assign_2Assignlayer_1/W/Weightssave_28/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
]
 save_28/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
Q
$save_28/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_28/RestoreV2_3	RestoreV2save_28/Const save_28/RestoreV2_3/tensor_names$save_28/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_28/Assign_3Assignlayer_1/b/biasessave_28/RestoreV2_3*
use_locking(*
T0*#
_class
loc:@layer_1/b/biases*
validate_shape(
e
save_28/restore_allNoOp^save_28/Assign^save_28/Assign_1^save_28/Assign_2^save_28/Assign_3
;
save_29/ConstConst*
dtype0*
valueB Bmodel
�
save_29/SaveV2/tensor_namesConst*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases*
dtype0
R
save_29/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B 
�
save_29/SaveV2SaveV2save_29/Constsave_29/SaveV2/tensor_namessave_29/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_29/control_dependencyIdentitysave_29/Const^save_29/SaveV2* 
_class
loc:@save_29/Const*
T0
Z
save_29/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
O
"save_29/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_29/RestoreV2	RestoreV2save_29/Constsave_29/RestoreV2/tensor_names"save_29/RestoreV2/shape_and_slices*
dtypes
2
�
save_29/AssignAssignlayer/W/Weightssave_29/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
[
 save_29/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
Q
$save_29/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_29/RestoreV2_1	RestoreV2save_29/Const save_29/RestoreV2_1/tensor_names$save_29/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_29/Assign_1Assignlayer/b/biasessave_29/RestoreV2_1*
use_locking(*
T0*!
_class
loc:@layer/b/biases*
validate_shape(
^
 save_29/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
Q
$save_29/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_29/RestoreV2_2	RestoreV2save_29/Const save_29/RestoreV2_2/tensor_names$save_29/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_29/Assign_2Assignlayer_1/W/Weightssave_29/RestoreV2_2*
validate_shape(*$
_class
loc:@layer_1/W/Weights*
T0*
use_locking(
]
 save_29/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
Q
$save_29/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_29/RestoreV2_3	RestoreV2save_29/Const save_29/RestoreV2_3/tensor_names$save_29/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_29/Assign_3Assignlayer_1/b/biasessave_29/RestoreV2_3*
use_locking(*
T0*#
_class
loc:@layer_1/b/biases*
validate_shape(
e
save_29/restore_allNoOp^save_29/Assign^save_29/Assign_1^save_29/Assign_2^save_29/Assign_3
;
save_30/ConstConst*
dtype0*
valueB Bmodel
�
save_30/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
R
save_30/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B 
�
save_30/SaveV2SaveV2save_30/Constsave_30/SaveV2/tensor_namessave_30/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_30/control_dependencyIdentitysave_30/Const^save_30/SaveV2*
T0* 
_class
loc:@save_30/Const
Z
save_30/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
O
"save_30/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_30/RestoreV2	RestoreV2save_30/Constsave_30/RestoreV2/tensor_names"save_30/RestoreV2/shape_and_slices*
dtypes
2
�
save_30/AssignAssignlayer/W/Weightssave_30/RestoreV2*"
_class
loc:@layer/W/Weights*
T0*
validate_shape(*
use_locking(
[
 save_30/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
Q
$save_30/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_30/RestoreV2_1	RestoreV2save_30/Const save_30/RestoreV2_1/tensor_names$save_30/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_30/Assign_1Assignlayer/b/biasessave_30/RestoreV2_1*
use_locking(*
T0*!
_class
loc:@layer/b/biases*
validate_shape(
^
 save_30/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
Q
$save_30/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_30/RestoreV2_2	RestoreV2save_30/Const save_30/RestoreV2_2/tensor_names$save_30/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_30/Assign_2Assignlayer_1/W/Weightssave_30/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
]
 save_30/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
Q
$save_30/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_30/RestoreV2_3	RestoreV2save_30/Const save_30/RestoreV2_3/tensor_names$save_30/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_30/Assign_3Assignlayer_1/b/biasessave_30/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
e
save_30/restore_allNoOp^save_30/Assign^save_30/Assign_1^save_30/Assign_2^save_30/Assign_3
;
save_31/ConstConst*
dtype0*
valueB Bmodel
�
save_31/SaveV2/tensor_namesConst*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases*
dtype0
R
save_31/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0
�
save_31/SaveV2SaveV2save_31/Constsave_31/SaveV2/tensor_namessave_31/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_31/control_dependencyIdentitysave_31/Const^save_31/SaveV2*
T0* 
_class
loc:@save_31/Const
Z
save_31/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
O
"save_31/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_31/RestoreV2	RestoreV2save_31/Constsave_31/RestoreV2/tensor_names"save_31/RestoreV2/shape_and_slices*
dtypes
2
�
save_31/AssignAssignlayer/W/Weightssave_31/RestoreV2*
use_locking(*
validate_shape(*
T0*"
_class
loc:@layer/W/Weights
[
 save_31/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
Q
$save_31/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_31/RestoreV2_1	RestoreV2save_31/Const save_31/RestoreV2_1/tensor_names$save_31/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_31/Assign_1Assignlayer/b/biasessave_31/RestoreV2_1*!
_class
loc:@layer/b/biases*
T0*
validate_shape(*
use_locking(
^
 save_31/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
Q
$save_31/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_31/RestoreV2_2	RestoreV2save_31/Const save_31/RestoreV2_2/tensor_names$save_31/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_31/Assign_2Assignlayer_1/W/Weightssave_31/RestoreV2_2*
use_locking(*
T0*$
_class
loc:@layer_1/W/Weights*
validate_shape(
]
 save_31/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
Q
$save_31/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_31/RestoreV2_3	RestoreV2save_31/Const save_31/RestoreV2_3/tensor_names$save_31/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_31/Assign_3Assignlayer_1/b/biasessave_31/RestoreV2_3*#
_class
loc:@layer_1/b/biases*
T0*
validate_shape(*
use_locking(
e
save_31/restore_allNoOp^save_31/Assign^save_31/Assign_1^save_31/Assign_2^save_31/Assign_3
;
save_32/ConstConst*
dtype0*
valueB Bmodel
�
save_32/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
R
save_32/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B 
�
save_32/SaveV2SaveV2save_32/Constsave_32/SaveV2/tensor_namessave_32/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_32/control_dependencyIdentitysave_32/Const^save_32/SaveV2*
T0* 
_class
loc:@save_32/Const
Z
save_32/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
O
"save_32/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_32/RestoreV2	RestoreV2save_32/Constsave_32/RestoreV2/tensor_names"save_32/RestoreV2/shape_and_slices*
dtypes
2
�
save_32/AssignAssignlayer/W/Weightssave_32/RestoreV2*"
_class
loc:@layer/W/Weights*
T0*
validate_shape(*
use_locking(
[
 save_32/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
Q
$save_32/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_32/RestoreV2_1	RestoreV2save_32/Const save_32/RestoreV2_1/tensor_names$save_32/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_32/Assign_1Assignlayer/b/biasessave_32/RestoreV2_1*!
_class
loc:@layer/b/biases*
T0*
validate_shape(*
use_locking(
^
 save_32/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
Q
$save_32/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_32/RestoreV2_2	RestoreV2save_32/Const save_32/RestoreV2_2/tensor_names$save_32/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_32/Assign_2Assignlayer_1/W/Weightssave_32/RestoreV2_2*
use_locking(*
T0*$
_class
loc:@layer_1/W/Weights*
validate_shape(
]
 save_32/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
Q
$save_32/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_32/RestoreV2_3	RestoreV2save_32/Const save_32/RestoreV2_3/tensor_names$save_32/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_32/Assign_3Assignlayer_1/b/biasessave_32/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
e
save_32/restore_allNoOp^save_32/Assign^save_32/Assign_1^save_32/Assign_2^save_32/Assign_3
;
save_33/ConstConst*
dtype0*
valueB Bmodel
�
save_33/SaveV2/tensor_namesConst*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases*
dtype0
R
save_33/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B 
�
save_33/SaveV2SaveV2save_33/Constsave_33/SaveV2/tensor_namessave_33/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_33/control_dependencyIdentitysave_33/Const^save_33/SaveV2* 
_class
loc:@save_33/Const*
T0
Z
save_33/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
O
"save_33/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_33/RestoreV2	RestoreV2save_33/Constsave_33/RestoreV2/tensor_names"save_33/RestoreV2/shape_and_slices*
dtypes
2
�
save_33/AssignAssignlayer/W/Weightssave_33/RestoreV2*
use_locking(*
validate_shape(*
T0*"
_class
loc:@layer/W/Weights
[
 save_33/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
Q
$save_33/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_33/RestoreV2_1	RestoreV2save_33/Const save_33/RestoreV2_1/tensor_names$save_33/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_33/Assign_1Assignlayer/b/biasessave_33/RestoreV2_1*
validate_shape(*!
_class
loc:@layer/b/biases*
T0*
use_locking(
^
 save_33/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
Q
$save_33/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_33/RestoreV2_2	RestoreV2save_33/Const save_33/RestoreV2_2/tensor_names$save_33/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_33/Assign_2Assignlayer_1/W/Weightssave_33/RestoreV2_2*
validate_shape(*$
_class
loc:@layer_1/W/Weights*
T0*
use_locking(
]
 save_33/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
Q
$save_33/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_33/RestoreV2_3	RestoreV2save_33/Const save_33/RestoreV2_3/tensor_names$save_33/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_33/Assign_3Assignlayer_1/b/biasessave_33/RestoreV2_3*#
_class
loc:@layer_1/b/biases*
T0*
validate_shape(*
use_locking(
e
save_33/restore_allNoOp^save_33/Assign^save_33/Assign_1^save_33/Assign_2^save_33/Assign_3
;
save_34/ConstConst*
valueB Bmodel*
dtype0
�
save_34/SaveV2/tensor_namesConst*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases*
dtype0
R
save_34/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0
�
save_34/SaveV2SaveV2save_34/Constsave_34/SaveV2/tensor_namessave_34/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_34/control_dependencyIdentitysave_34/Const^save_34/SaveV2* 
_class
loc:@save_34/Const*
T0
Z
save_34/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
O
"save_34/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_34/RestoreV2	RestoreV2save_34/Constsave_34/RestoreV2/tensor_names"save_34/RestoreV2/shape_and_slices*
dtypes
2
�
save_34/AssignAssignlayer/W/Weightssave_34/RestoreV2*
use_locking(*
validate_shape(*
T0*"
_class
loc:@layer/W/Weights
[
 save_34/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
Q
$save_34/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_34/RestoreV2_1	RestoreV2save_34/Const save_34/RestoreV2_1/tensor_names$save_34/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_34/Assign_1Assignlayer/b/biasessave_34/RestoreV2_1*
use_locking(*
validate_shape(*
T0*!
_class
loc:@layer/b/biases
^
 save_34/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
Q
$save_34/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_34/RestoreV2_2	RestoreV2save_34/Const save_34/RestoreV2_2/tensor_names$save_34/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_34/Assign_2Assignlayer_1/W/Weightssave_34/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
]
 save_34/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
Q
$save_34/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_34/RestoreV2_3	RestoreV2save_34/Const save_34/RestoreV2_3/tensor_names$save_34/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_34/Assign_3Assignlayer_1/b/biasessave_34/RestoreV2_3*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_1/b/biases
e
save_34/restore_allNoOp^save_34/Assign^save_34/Assign_1^save_34/Assign_2^save_34/Assign_3
;
save_35/ConstConst*
dtype0*
valueB Bmodel
�
save_35/SaveV2/tensor_namesConst*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases*
dtype0
R
save_35/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0
�
save_35/SaveV2SaveV2save_35/Constsave_35/SaveV2/tensor_namessave_35/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_35/control_dependencyIdentitysave_35/Const^save_35/SaveV2*
T0* 
_class
loc:@save_35/Const
Z
save_35/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
O
"save_35/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_35/RestoreV2	RestoreV2save_35/Constsave_35/RestoreV2/tensor_names"save_35/RestoreV2/shape_and_slices*
dtypes
2
�
save_35/AssignAssignlayer/W/Weightssave_35/RestoreV2*
use_locking(*
validate_shape(*
T0*"
_class
loc:@layer/W/Weights
[
 save_35/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
Q
$save_35/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_35/RestoreV2_1	RestoreV2save_35/Const save_35/RestoreV2_1/tensor_names$save_35/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_35/Assign_1Assignlayer/b/biasessave_35/RestoreV2_1*!
_class
loc:@layer/b/biases*
T0*
validate_shape(*
use_locking(
^
 save_35/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
Q
$save_35/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_35/RestoreV2_2	RestoreV2save_35/Const save_35/RestoreV2_2/tensor_names$save_35/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_35/Assign_2Assignlayer_1/W/Weightssave_35/RestoreV2_2*$
_class
loc:@layer_1/W/Weights*
T0*
validate_shape(*
use_locking(
]
 save_35/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
Q
$save_35/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_35/RestoreV2_3	RestoreV2save_35/Const save_35/RestoreV2_3/tensor_names$save_35/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_35/Assign_3Assignlayer_1/b/biasessave_35/RestoreV2_3*#
_class
loc:@layer_1/b/biases*
T0*
validate_shape(*
use_locking(
e
save_35/restore_allNoOp^save_35/Assign^save_35/Assign_1^save_35/Assign_2^save_35/Assign_3
;
save_36/ConstConst*
dtype0*
valueB Bmodel
�
save_36/SaveV2/tensor_namesConst*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases*
dtype0
R
save_36/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0
�
save_36/SaveV2SaveV2save_36/Constsave_36/SaveV2/tensor_namessave_36/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_36/control_dependencyIdentitysave_36/Const^save_36/SaveV2* 
_class
loc:@save_36/Const*
T0
Z
save_36/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
O
"save_36/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_36/RestoreV2	RestoreV2save_36/Constsave_36/RestoreV2/tensor_names"save_36/RestoreV2/shape_and_slices*
dtypes
2
�
save_36/AssignAssignlayer/W/Weightssave_36/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
[
 save_36/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
Q
$save_36/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_36/RestoreV2_1	RestoreV2save_36/Const save_36/RestoreV2_1/tensor_names$save_36/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_36/Assign_1Assignlayer/b/biasessave_36/RestoreV2_1*
use_locking(*
T0*!
_class
loc:@layer/b/biases*
validate_shape(
^
 save_36/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
Q
$save_36/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_36/RestoreV2_2	RestoreV2save_36/Const save_36/RestoreV2_2/tensor_names$save_36/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_36/Assign_2Assignlayer_1/W/Weightssave_36/RestoreV2_2*$
_class
loc:@layer_1/W/Weights*
T0*
validate_shape(*
use_locking(
]
 save_36/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
Q
$save_36/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_36/RestoreV2_3	RestoreV2save_36/Const save_36/RestoreV2_3/tensor_names$save_36/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_36/Assign_3Assignlayer_1/b/biasessave_36/RestoreV2_3*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_1/b/biases
e
save_36/restore_allNoOp^save_36/Assign^save_36/Assign_1^save_36/Assign_2^save_36/Assign_3
;
save_37/ConstConst*
valueB Bmodel*
dtype0
�
save_37/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
R
save_37/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0
�
save_37/SaveV2SaveV2save_37/Constsave_37/SaveV2/tensor_namessave_37/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_37/control_dependencyIdentitysave_37/Const^save_37/SaveV2* 
_class
loc:@save_37/Const*
T0
Z
save_37/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
O
"save_37/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_37/RestoreV2	RestoreV2save_37/Constsave_37/RestoreV2/tensor_names"save_37/RestoreV2/shape_and_slices*
dtypes
2
�
save_37/AssignAssignlayer/W/Weightssave_37/RestoreV2*"
_class
loc:@layer/W/Weights*
T0*
validate_shape(*
use_locking(
[
 save_37/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
Q
$save_37/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_37/RestoreV2_1	RestoreV2save_37/Const save_37/RestoreV2_1/tensor_names$save_37/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_37/Assign_1Assignlayer/b/biasessave_37/RestoreV2_1*
validate_shape(*!
_class
loc:@layer/b/biases*
T0*
use_locking(
^
 save_37/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
Q
$save_37/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_37/RestoreV2_2	RestoreV2save_37/Const save_37/RestoreV2_2/tensor_names$save_37/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_37/Assign_2Assignlayer_1/W/Weightssave_37/RestoreV2_2*
use_locking(*
T0*$
_class
loc:@layer_1/W/Weights*
validate_shape(
]
 save_37/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
Q
$save_37/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_37/RestoreV2_3	RestoreV2save_37/Const save_37/RestoreV2_3/tensor_names$save_37/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_37/Assign_3Assignlayer_1/b/biasessave_37/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
e
save_37/restore_allNoOp^save_37/Assign^save_37/Assign_1^save_37/Assign_2^save_37/Assign_3
;
save_38/ConstConst*
dtype0*
valueB Bmodel
�
save_38/SaveV2/tensor_namesConst*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases*
dtype0
R
save_38/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0
�
save_38/SaveV2SaveV2save_38/Constsave_38/SaveV2/tensor_namessave_38/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_38/control_dependencyIdentitysave_38/Const^save_38/SaveV2*
T0* 
_class
loc:@save_38/Const
Z
save_38/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
O
"save_38/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_38/RestoreV2	RestoreV2save_38/Constsave_38/RestoreV2/tensor_names"save_38/RestoreV2/shape_and_slices*
dtypes
2
�
save_38/AssignAssignlayer/W/Weightssave_38/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
[
 save_38/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
Q
$save_38/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_38/RestoreV2_1	RestoreV2save_38/Const save_38/RestoreV2_1/tensor_names$save_38/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_38/Assign_1Assignlayer/b/biasessave_38/RestoreV2_1*
use_locking(*
T0*!
_class
loc:@layer/b/biases*
validate_shape(
^
 save_38/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
Q
$save_38/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_38/RestoreV2_2	RestoreV2save_38/Const save_38/RestoreV2_2/tensor_names$save_38/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_38/Assign_2Assignlayer_1/W/Weightssave_38/RestoreV2_2*$
_class
loc:@layer_1/W/Weights*
T0*
validate_shape(*
use_locking(
]
 save_38/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
Q
$save_38/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_38/RestoreV2_3	RestoreV2save_38/Const save_38/RestoreV2_3/tensor_names$save_38/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_38/Assign_3Assignlayer_1/b/biasessave_38/RestoreV2_3*#
_class
loc:@layer_1/b/biases*
T0*
validate_shape(*
use_locking(
e
save_38/restore_allNoOp^save_38/Assign^save_38/Assign_1^save_38/Assign_2^save_38/Assign_3
;
save_39/ConstConst*
dtype0*
valueB Bmodel
�
save_39/SaveV2/tensor_namesConst*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases*
dtype0
R
save_39/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0
�
save_39/SaveV2SaveV2save_39/Constsave_39/SaveV2/tensor_namessave_39/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_39/control_dependencyIdentitysave_39/Const^save_39/SaveV2*
T0* 
_class
loc:@save_39/Const
Z
save_39/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
O
"save_39/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_39/RestoreV2	RestoreV2save_39/Constsave_39/RestoreV2/tensor_names"save_39/RestoreV2/shape_and_slices*
dtypes
2
�
save_39/AssignAssignlayer/W/Weightssave_39/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
[
 save_39/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
Q
$save_39/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_39/RestoreV2_1	RestoreV2save_39/Const save_39/RestoreV2_1/tensor_names$save_39/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_39/Assign_1Assignlayer/b/biasessave_39/RestoreV2_1*
validate_shape(*!
_class
loc:@layer/b/biases*
T0*
use_locking(
^
 save_39/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
Q
$save_39/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_39/RestoreV2_2	RestoreV2save_39/Const save_39/RestoreV2_2/tensor_names$save_39/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_39/Assign_2Assignlayer_1/W/Weightssave_39/RestoreV2_2*$
_class
loc:@layer_1/W/Weights*
T0*
validate_shape(*
use_locking(
]
 save_39/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
Q
$save_39/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_39/RestoreV2_3	RestoreV2save_39/Const save_39/RestoreV2_3/tensor_names$save_39/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_39/Assign_3Assignlayer_1/b/biasessave_39/RestoreV2_3*#
_class
loc:@layer_1/b/biases*
T0*
validate_shape(*
use_locking(
e
save_39/restore_allNoOp^save_39/Assign^save_39/Assign_1^save_39/Assign_2^save_39/Assign_3
;
save_40/ConstConst*
valueB Bmodel*
dtype0
�
save_40/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
R
save_40/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0
�
save_40/SaveV2SaveV2save_40/Constsave_40/SaveV2/tensor_namessave_40/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_40/control_dependencyIdentitysave_40/Const^save_40/SaveV2* 
_class
loc:@save_40/Const*
T0
Z
save_40/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
O
"save_40/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_40/RestoreV2	RestoreV2save_40/Constsave_40/RestoreV2/tensor_names"save_40/RestoreV2/shape_and_slices*
dtypes
2
�
save_40/AssignAssignlayer/W/Weightssave_40/RestoreV2*"
_class
loc:@layer/W/Weights*
T0*
validate_shape(*
use_locking(
[
 save_40/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
Q
$save_40/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_40/RestoreV2_1	RestoreV2save_40/Const save_40/RestoreV2_1/tensor_names$save_40/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_40/Assign_1Assignlayer/b/biasessave_40/RestoreV2_1*
validate_shape(*!
_class
loc:@layer/b/biases*
T0*
use_locking(
^
 save_40/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
Q
$save_40/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_40/RestoreV2_2	RestoreV2save_40/Const save_40/RestoreV2_2/tensor_names$save_40/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_40/Assign_2Assignlayer_1/W/Weightssave_40/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
]
 save_40/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
Q
$save_40/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_40/RestoreV2_3	RestoreV2save_40/Const save_40/RestoreV2_3/tensor_names$save_40/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_40/Assign_3Assignlayer_1/b/biasessave_40/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
e
save_40/restore_allNoOp^save_40/Assign^save_40/Assign_1^save_40/Assign_2^save_40/Assign_3
;
save_41/ConstConst*
valueB Bmodel*
dtype0
�
save_41/SaveV2/tensor_namesConst*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases*
dtype0
R
save_41/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0
�
save_41/SaveV2SaveV2save_41/Constsave_41/SaveV2/tensor_namessave_41/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_41/control_dependencyIdentitysave_41/Const^save_41/SaveV2* 
_class
loc:@save_41/Const*
T0
Z
save_41/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
O
"save_41/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_41/RestoreV2	RestoreV2save_41/Constsave_41/RestoreV2/tensor_names"save_41/RestoreV2/shape_and_slices*
dtypes
2
�
save_41/AssignAssignlayer/W/Weightssave_41/RestoreV2*"
_class
loc:@layer/W/Weights*
T0*
validate_shape(*
use_locking(
[
 save_41/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
Q
$save_41/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_41/RestoreV2_1	RestoreV2save_41/Const save_41/RestoreV2_1/tensor_names$save_41/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_41/Assign_1Assignlayer/b/biasessave_41/RestoreV2_1*
use_locking(*
validate_shape(*
T0*!
_class
loc:@layer/b/biases
^
 save_41/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
Q
$save_41/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_41/RestoreV2_2	RestoreV2save_41/Const save_41/RestoreV2_2/tensor_names$save_41/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_41/Assign_2Assignlayer_1/W/Weightssave_41/RestoreV2_2*$
_class
loc:@layer_1/W/Weights*
T0*
validate_shape(*
use_locking(
]
 save_41/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
Q
$save_41/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_41/RestoreV2_3	RestoreV2save_41/Const save_41/RestoreV2_3/tensor_names$save_41/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_41/Assign_3Assignlayer_1/b/biasessave_41/RestoreV2_3*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_1/b/biases
e
save_41/restore_allNoOp^save_41/Assign^save_41/Assign_1^save_41/Assign_2^save_41/Assign_3
;
save_42/ConstConst*
valueB Bmodel*
dtype0
�
save_42/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
R
save_42/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B 
�
save_42/SaveV2SaveV2save_42/Constsave_42/SaveV2/tensor_namessave_42/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_42/control_dependencyIdentitysave_42/Const^save_42/SaveV2* 
_class
loc:@save_42/Const*
T0
Z
save_42/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
O
"save_42/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_42/RestoreV2	RestoreV2save_42/Constsave_42/RestoreV2/tensor_names"save_42/RestoreV2/shape_and_slices*
dtypes
2
�
save_42/AssignAssignlayer/W/Weightssave_42/RestoreV2*
use_locking(*
validate_shape(*
T0*"
_class
loc:@layer/W/Weights
[
 save_42/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
Q
$save_42/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_42/RestoreV2_1	RestoreV2save_42/Const save_42/RestoreV2_1/tensor_names$save_42/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_42/Assign_1Assignlayer/b/biasessave_42/RestoreV2_1*!
_class
loc:@layer/b/biases*
T0*
validate_shape(*
use_locking(
^
 save_42/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
Q
$save_42/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_42/RestoreV2_2	RestoreV2save_42/Const save_42/RestoreV2_2/tensor_names$save_42/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_42/Assign_2Assignlayer_1/W/Weightssave_42/RestoreV2_2*
use_locking(*
T0*$
_class
loc:@layer_1/W/Weights*
validate_shape(
]
 save_42/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
Q
$save_42/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_42/RestoreV2_3	RestoreV2save_42/Const save_42/RestoreV2_3/tensor_names$save_42/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_42/Assign_3Assignlayer_1/b/biasessave_42/RestoreV2_3*#
_class
loc:@layer_1/b/biases*
T0*
validate_shape(*
use_locking(
e
save_42/restore_allNoOp^save_42/Assign^save_42/Assign_1^save_42/Assign_2^save_42/Assign_3
;
save_43/ConstConst*
dtype0*
valueB Bmodel
�
save_43/SaveV2/tensor_namesConst*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases*
dtype0
R
save_43/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B 
�
save_43/SaveV2SaveV2save_43/Constsave_43/SaveV2/tensor_namessave_43/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_43/control_dependencyIdentitysave_43/Const^save_43/SaveV2*
T0* 
_class
loc:@save_43/Const
Z
save_43/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
O
"save_43/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_43/RestoreV2	RestoreV2save_43/Constsave_43/RestoreV2/tensor_names"save_43/RestoreV2/shape_and_slices*
dtypes
2
�
save_43/AssignAssignlayer/W/Weightssave_43/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
[
 save_43/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
Q
$save_43/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_43/RestoreV2_1	RestoreV2save_43/Const save_43/RestoreV2_1/tensor_names$save_43/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_43/Assign_1Assignlayer/b/biasessave_43/RestoreV2_1*
use_locking(*
T0*!
_class
loc:@layer/b/biases*
validate_shape(
^
 save_43/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
Q
$save_43/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_43/RestoreV2_2	RestoreV2save_43/Const save_43/RestoreV2_2/tensor_names$save_43/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_43/Assign_2Assignlayer_1/W/Weightssave_43/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
]
 save_43/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
Q
$save_43/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_43/RestoreV2_3	RestoreV2save_43/Const save_43/RestoreV2_3/tensor_names$save_43/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_43/Assign_3Assignlayer_1/b/biasessave_43/RestoreV2_3*
use_locking(*
T0*#
_class
loc:@layer_1/b/biases*
validate_shape(
e
save_43/restore_allNoOp^save_43/Assign^save_43/Assign_1^save_43/Assign_2^save_43/Assign_3
;
save_44/ConstConst*
valueB Bmodel*
dtype0
�
save_44/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
R
save_44/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0
�
save_44/SaveV2SaveV2save_44/Constsave_44/SaveV2/tensor_namessave_44/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_44/control_dependencyIdentitysave_44/Const^save_44/SaveV2*
T0* 
_class
loc:@save_44/Const
Z
save_44/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
O
"save_44/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_44/RestoreV2	RestoreV2save_44/Constsave_44/RestoreV2/tensor_names"save_44/RestoreV2/shape_and_slices*
dtypes
2
�
save_44/AssignAssignlayer/W/Weightssave_44/RestoreV2*
use_locking(*
validate_shape(*
T0*"
_class
loc:@layer/W/Weights
[
 save_44/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
Q
$save_44/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_44/RestoreV2_1	RestoreV2save_44/Const save_44/RestoreV2_1/tensor_names$save_44/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_44/Assign_1Assignlayer/b/biasessave_44/RestoreV2_1*
use_locking(*
validate_shape(*
T0*!
_class
loc:@layer/b/biases
^
 save_44/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
Q
$save_44/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_44/RestoreV2_2	RestoreV2save_44/Const save_44/RestoreV2_2/tensor_names$save_44/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_44/Assign_2Assignlayer_1/W/Weightssave_44/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
]
 save_44/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
Q
$save_44/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_44/RestoreV2_3	RestoreV2save_44/Const save_44/RestoreV2_3/tensor_names$save_44/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_44/Assign_3Assignlayer_1/b/biasessave_44/RestoreV2_3*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_1/b/biases
e
save_44/restore_allNoOp^save_44/Assign^save_44/Assign_1^save_44/Assign_2^save_44/Assign_3
;
save_45/ConstConst*
dtype0*
valueB Bmodel
�
save_45/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
R
save_45/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0
�
save_45/SaveV2SaveV2save_45/Constsave_45/SaveV2/tensor_namessave_45/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_45/control_dependencyIdentitysave_45/Const^save_45/SaveV2* 
_class
loc:@save_45/Const*
T0
Z
save_45/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
O
"save_45/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_45/RestoreV2	RestoreV2save_45/Constsave_45/RestoreV2/tensor_names"save_45/RestoreV2/shape_and_slices*
dtypes
2
�
save_45/AssignAssignlayer/W/Weightssave_45/RestoreV2*"
_class
loc:@layer/W/Weights*
T0*
validate_shape(*
use_locking(
[
 save_45/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
Q
$save_45/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_45/RestoreV2_1	RestoreV2save_45/Const save_45/RestoreV2_1/tensor_names$save_45/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_45/Assign_1Assignlayer/b/biasessave_45/RestoreV2_1*
use_locking(*
T0*!
_class
loc:@layer/b/biases*
validate_shape(
^
 save_45/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
Q
$save_45/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_45/RestoreV2_2	RestoreV2save_45/Const save_45/RestoreV2_2/tensor_names$save_45/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_45/Assign_2Assignlayer_1/W/Weightssave_45/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
]
 save_45/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
Q
$save_45/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_45/RestoreV2_3	RestoreV2save_45/Const save_45/RestoreV2_3/tensor_names$save_45/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_45/Assign_3Assignlayer_1/b/biasessave_45/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
e
save_45/restore_allNoOp^save_45/Assign^save_45/Assign_1^save_45/Assign_2^save_45/Assign_3
;
save_46/ConstConst*
valueB Bmodel*
dtype0
�
save_46/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
R
save_46/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0
�
save_46/SaveV2SaveV2save_46/Constsave_46/SaveV2/tensor_namessave_46/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_46/control_dependencyIdentitysave_46/Const^save_46/SaveV2*
T0* 
_class
loc:@save_46/Const
Z
save_46/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
O
"save_46/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_46/RestoreV2	RestoreV2save_46/Constsave_46/RestoreV2/tensor_names"save_46/RestoreV2/shape_and_slices*
dtypes
2
�
save_46/AssignAssignlayer/W/Weightssave_46/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
[
 save_46/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
Q
$save_46/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_46/RestoreV2_1	RestoreV2save_46/Const save_46/RestoreV2_1/tensor_names$save_46/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_46/Assign_1Assignlayer/b/biasessave_46/RestoreV2_1*
use_locking(*
validate_shape(*
T0*!
_class
loc:@layer/b/biases
^
 save_46/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
Q
$save_46/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_46/RestoreV2_2	RestoreV2save_46/Const save_46/RestoreV2_2/tensor_names$save_46/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_46/Assign_2Assignlayer_1/W/Weightssave_46/RestoreV2_2*
use_locking(*
T0*$
_class
loc:@layer_1/W/Weights*
validate_shape(
]
 save_46/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
Q
$save_46/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_46/RestoreV2_3	RestoreV2save_46/Const save_46/RestoreV2_3/tensor_names$save_46/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_46/Assign_3Assignlayer_1/b/biasessave_46/RestoreV2_3*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_1/b/biases
e
save_46/restore_allNoOp^save_46/Assign^save_46/Assign_1^save_46/Assign_2^save_46/Assign_3
;
save_47/ConstConst*
dtype0*
valueB Bmodel
�
save_47/SaveV2/tensor_namesConst*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases*
dtype0
R
save_47/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0
�
save_47/SaveV2SaveV2save_47/Constsave_47/SaveV2/tensor_namessave_47/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_47/control_dependencyIdentitysave_47/Const^save_47/SaveV2* 
_class
loc:@save_47/Const*
T0
Z
save_47/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
O
"save_47/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_47/RestoreV2	RestoreV2save_47/Constsave_47/RestoreV2/tensor_names"save_47/RestoreV2/shape_and_slices*
dtypes
2
�
save_47/AssignAssignlayer/W/Weightssave_47/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
[
 save_47/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
Q
$save_47/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_47/RestoreV2_1	RestoreV2save_47/Const save_47/RestoreV2_1/tensor_names$save_47/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_47/Assign_1Assignlayer/b/biasessave_47/RestoreV2_1*
validate_shape(*!
_class
loc:@layer/b/biases*
T0*
use_locking(
^
 save_47/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
Q
$save_47/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_47/RestoreV2_2	RestoreV2save_47/Const save_47/RestoreV2_2/tensor_names$save_47/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_47/Assign_2Assignlayer_1/W/Weightssave_47/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
]
 save_47/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
Q
$save_47/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_47/RestoreV2_3	RestoreV2save_47/Const save_47/RestoreV2_3/tensor_names$save_47/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_47/Assign_3Assignlayer_1/b/biasessave_47/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
e
save_47/restore_allNoOp^save_47/Assign^save_47/Assign_1^save_47/Assign_2^save_47/Assign_3
;
save_48/ConstConst*
valueB Bmodel*
dtype0
�
save_48/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
R
save_48/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B 
�
save_48/SaveV2SaveV2save_48/Constsave_48/SaveV2/tensor_namessave_48/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_48/control_dependencyIdentitysave_48/Const^save_48/SaveV2* 
_class
loc:@save_48/Const*
T0
Z
save_48/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
O
"save_48/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_48/RestoreV2	RestoreV2save_48/Constsave_48/RestoreV2/tensor_names"save_48/RestoreV2/shape_and_slices*
dtypes
2
�
save_48/AssignAssignlayer/W/Weightssave_48/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
[
 save_48/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
Q
$save_48/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_48/RestoreV2_1	RestoreV2save_48/Const save_48/RestoreV2_1/tensor_names$save_48/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_48/Assign_1Assignlayer/b/biasessave_48/RestoreV2_1*!
_class
loc:@layer/b/biases*
T0*
validate_shape(*
use_locking(
^
 save_48/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
Q
$save_48/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_48/RestoreV2_2	RestoreV2save_48/Const save_48/RestoreV2_2/tensor_names$save_48/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_48/Assign_2Assignlayer_1/W/Weightssave_48/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
]
 save_48/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
Q
$save_48/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_48/RestoreV2_3	RestoreV2save_48/Const save_48/RestoreV2_3/tensor_names$save_48/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_48/Assign_3Assignlayer_1/b/biasessave_48/RestoreV2_3*#
_class
loc:@layer_1/b/biases*
T0*
validate_shape(*
use_locking(
e
save_48/restore_allNoOp^save_48/Assign^save_48/Assign_1^save_48/Assign_2^save_48/Assign_3
;
save_49/ConstConst*
valueB Bmodel*
dtype0
�
save_49/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
R
save_49/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B 
�
save_49/SaveV2SaveV2save_49/Constsave_49/SaveV2/tensor_namessave_49/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_49/control_dependencyIdentitysave_49/Const^save_49/SaveV2*
T0* 
_class
loc:@save_49/Const
Z
save_49/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
O
"save_49/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_49/RestoreV2	RestoreV2save_49/Constsave_49/RestoreV2/tensor_names"save_49/RestoreV2/shape_and_slices*
dtypes
2
�
save_49/AssignAssignlayer/W/Weightssave_49/RestoreV2*
use_locking(*
validate_shape(*
T0*"
_class
loc:@layer/W/Weights
[
 save_49/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
Q
$save_49/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_49/RestoreV2_1	RestoreV2save_49/Const save_49/RestoreV2_1/tensor_names$save_49/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_49/Assign_1Assignlayer/b/biasessave_49/RestoreV2_1*!
_class
loc:@layer/b/biases*
T0*
validate_shape(*
use_locking(
^
 save_49/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
Q
$save_49/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_49/RestoreV2_2	RestoreV2save_49/Const save_49/RestoreV2_2/tensor_names$save_49/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_49/Assign_2Assignlayer_1/W/Weightssave_49/RestoreV2_2*
use_locking(*
T0*$
_class
loc:@layer_1/W/Weights*
validate_shape(
]
 save_49/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
Q
$save_49/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_49/RestoreV2_3	RestoreV2save_49/Const save_49/RestoreV2_3/tensor_names$save_49/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_49/Assign_3Assignlayer_1/b/biasessave_49/RestoreV2_3*
use_locking(*
T0*#
_class
loc:@layer_1/b/biases*
validate_shape(
e
save_49/restore_allNoOp^save_49/Assign^save_49/Assign_1^save_49/Assign_2^save_49/Assign_3
;
save_50/ConstConst*
valueB Bmodel*
dtype0
�
save_50/SaveV2/tensor_namesConst*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases*
dtype0
R
save_50/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B 
�
save_50/SaveV2SaveV2save_50/Constsave_50/SaveV2/tensor_namessave_50/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_50/control_dependencyIdentitysave_50/Const^save_50/SaveV2* 
_class
loc:@save_50/Const*
T0
Z
save_50/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
O
"save_50/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_50/RestoreV2	RestoreV2save_50/Constsave_50/RestoreV2/tensor_names"save_50/RestoreV2/shape_and_slices*
dtypes
2
�
save_50/AssignAssignlayer/W/Weightssave_50/RestoreV2*"
_class
loc:@layer/W/Weights*
T0*
validate_shape(*
use_locking(
[
 save_50/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
Q
$save_50/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_50/RestoreV2_1	RestoreV2save_50/Const save_50/RestoreV2_1/tensor_names$save_50/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_50/Assign_1Assignlayer/b/biasessave_50/RestoreV2_1*
use_locking(*
validate_shape(*
T0*!
_class
loc:@layer/b/biases
^
 save_50/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
Q
$save_50/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_50/RestoreV2_2	RestoreV2save_50/Const save_50/RestoreV2_2/tensor_names$save_50/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_50/Assign_2Assignlayer_1/W/Weightssave_50/RestoreV2_2*
validate_shape(*$
_class
loc:@layer_1/W/Weights*
T0*
use_locking(
]
 save_50/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
Q
$save_50/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_50/RestoreV2_3	RestoreV2save_50/Const save_50/RestoreV2_3/tensor_names$save_50/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_50/Assign_3Assignlayer_1/b/biasessave_50/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
e
save_50/restore_allNoOp^save_50/Assign^save_50/Assign_1^save_50/Assign_2^save_50/Assign_3
;
save_51/ConstConst*
valueB Bmodel*
dtype0
�
save_51/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
R
save_51/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B 
�
save_51/SaveV2SaveV2save_51/Constsave_51/SaveV2/tensor_namessave_51/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_51/control_dependencyIdentitysave_51/Const^save_51/SaveV2*
T0* 
_class
loc:@save_51/Const
Z
save_51/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
O
"save_51/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_51/RestoreV2	RestoreV2save_51/Constsave_51/RestoreV2/tensor_names"save_51/RestoreV2/shape_and_slices*
dtypes
2
�
save_51/AssignAssignlayer/W/Weightssave_51/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
[
 save_51/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
Q
$save_51/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_51/RestoreV2_1	RestoreV2save_51/Const save_51/RestoreV2_1/tensor_names$save_51/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_51/Assign_1Assignlayer/b/biasessave_51/RestoreV2_1*
validate_shape(*!
_class
loc:@layer/b/biases*
T0*
use_locking(
^
 save_51/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
Q
$save_51/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_51/RestoreV2_2	RestoreV2save_51/Const save_51/RestoreV2_2/tensor_names$save_51/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_51/Assign_2Assignlayer_1/W/Weightssave_51/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
]
 save_51/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
Q
$save_51/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_51/RestoreV2_3	RestoreV2save_51/Const save_51/RestoreV2_3/tensor_names$save_51/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_51/Assign_3Assignlayer_1/b/biasessave_51/RestoreV2_3*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_1/b/biases
e
save_51/restore_allNoOp^save_51/Assign^save_51/Assign_1^save_51/Assign_2^save_51/Assign_3
;
save_52/ConstConst*
dtype0*
valueB Bmodel
�
save_52/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
R
save_52/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0
�
save_52/SaveV2SaveV2save_52/Constsave_52/SaveV2/tensor_namessave_52/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_52/control_dependencyIdentitysave_52/Const^save_52/SaveV2* 
_class
loc:@save_52/Const*
T0
Z
save_52/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
O
"save_52/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_52/RestoreV2	RestoreV2save_52/Constsave_52/RestoreV2/tensor_names"save_52/RestoreV2/shape_and_slices*
dtypes
2
�
save_52/AssignAssignlayer/W/Weightssave_52/RestoreV2*"
_class
loc:@layer/W/Weights*
T0*
validate_shape(*
use_locking(
[
 save_52/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
Q
$save_52/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_52/RestoreV2_1	RestoreV2save_52/Const save_52/RestoreV2_1/tensor_names$save_52/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_52/Assign_1Assignlayer/b/biasessave_52/RestoreV2_1*
use_locking(*
validate_shape(*
T0*!
_class
loc:@layer/b/biases
^
 save_52/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
Q
$save_52/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_52/RestoreV2_2	RestoreV2save_52/Const save_52/RestoreV2_2/tensor_names$save_52/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_52/Assign_2Assignlayer_1/W/Weightssave_52/RestoreV2_2*$
_class
loc:@layer_1/W/Weights*
T0*
validate_shape(*
use_locking(
]
 save_52/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
Q
$save_52/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_52/RestoreV2_3	RestoreV2save_52/Const save_52/RestoreV2_3/tensor_names$save_52/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_52/Assign_3Assignlayer_1/b/biasessave_52/RestoreV2_3*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_1/b/biases
e
save_52/restore_allNoOp^save_52/Assign^save_52/Assign_1^save_52/Assign_2^save_52/Assign_3
;
save_53/ConstConst*
dtype0*
valueB Bmodel
�
save_53/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
R
save_53/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0
�
save_53/SaveV2SaveV2save_53/Constsave_53/SaveV2/tensor_namessave_53/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_53/control_dependencyIdentitysave_53/Const^save_53/SaveV2*
T0* 
_class
loc:@save_53/Const
Z
save_53/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
O
"save_53/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_53/RestoreV2	RestoreV2save_53/Constsave_53/RestoreV2/tensor_names"save_53/RestoreV2/shape_and_slices*
dtypes
2
�
save_53/AssignAssignlayer/W/Weightssave_53/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
[
 save_53/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
Q
$save_53/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_53/RestoreV2_1	RestoreV2save_53/Const save_53/RestoreV2_1/tensor_names$save_53/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_53/Assign_1Assignlayer/b/biasessave_53/RestoreV2_1*
use_locking(*
validate_shape(*
T0*!
_class
loc:@layer/b/biases
^
 save_53/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
Q
$save_53/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_53/RestoreV2_2	RestoreV2save_53/Const save_53/RestoreV2_2/tensor_names$save_53/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_53/Assign_2Assignlayer_1/W/Weightssave_53/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
]
 save_53/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
Q
$save_53/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_53/RestoreV2_3	RestoreV2save_53/Const save_53/RestoreV2_3/tensor_names$save_53/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_53/Assign_3Assignlayer_1/b/biasessave_53/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
e
save_53/restore_allNoOp^save_53/Assign^save_53/Assign_1^save_53/Assign_2^save_53/Assign_3
;
save_54/ConstConst*
valueB Bmodel*
dtype0
�
save_54/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
R
save_54/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0
�
save_54/SaveV2SaveV2save_54/Constsave_54/SaveV2/tensor_namessave_54/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_54/control_dependencyIdentitysave_54/Const^save_54/SaveV2* 
_class
loc:@save_54/Const*
T0
Z
save_54/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
O
"save_54/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_54/RestoreV2	RestoreV2save_54/Constsave_54/RestoreV2/tensor_names"save_54/RestoreV2/shape_and_slices*
dtypes
2
�
save_54/AssignAssignlayer/W/Weightssave_54/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
[
 save_54/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
Q
$save_54/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_54/RestoreV2_1	RestoreV2save_54/Const save_54/RestoreV2_1/tensor_names$save_54/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_54/Assign_1Assignlayer/b/biasessave_54/RestoreV2_1*!
_class
loc:@layer/b/biases*
T0*
validate_shape(*
use_locking(
^
 save_54/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
Q
$save_54/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_54/RestoreV2_2	RestoreV2save_54/Const save_54/RestoreV2_2/tensor_names$save_54/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_54/Assign_2Assignlayer_1/W/Weightssave_54/RestoreV2_2*
validate_shape(*$
_class
loc:@layer_1/W/Weights*
T0*
use_locking(
]
 save_54/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
Q
$save_54/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_54/RestoreV2_3	RestoreV2save_54/Const save_54/RestoreV2_3/tensor_names$save_54/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_54/Assign_3Assignlayer_1/b/biasessave_54/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
e
save_54/restore_allNoOp^save_54/Assign^save_54/Assign_1^save_54/Assign_2^save_54/Assign_3
;
save_55/ConstConst*
valueB Bmodel*
dtype0
�
save_55/SaveV2/tensor_namesConst*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases*
dtype0
R
save_55/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0
�
save_55/SaveV2SaveV2save_55/Constsave_55/SaveV2/tensor_namessave_55/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_55/control_dependencyIdentitysave_55/Const^save_55/SaveV2*
T0* 
_class
loc:@save_55/Const
Z
save_55/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
O
"save_55/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_55/RestoreV2	RestoreV2save_55/Constsave_55/RestoreV2/tensor_names"save_55/RestoreV2/shape_and_slices*
dtypes
2
�
save_55/AssignAssignlayer/W/Weightssave_55/RestoreV2*
use_locking(*
validate_shape(*
T0*"
_class
loc:@layer/W/Weights
[
 save_55/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
Q
$save_55/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_55/RestoreV2_1	RestoreV2save_55/Const save_55/RestoreV2_1/tensor_names$save_55/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_55/Assign_1Assignlayer/b/biasessave_55/RestoreV2_1*
validate_shape(*!
_class
loc:@layer/b/biases*
T0*
use_locking(
^
 save_55/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
Q
$save_55/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_55/RestoreV2_2	RestoreV2save_55/Const save_55/RestoreV2_2/tensor_names$save_55/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_55/Assign_2Assignlayer_1/W/Weightssave_55/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
]
 save_55/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
Q
$save_55/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_55/RestoreV2_3	RestoreV2save_55/Const save_55/RestoreV2_3/tensor_names$save_55/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_55/Assign_3Assignlayer_1/b/biasessave_55/RestoreV2_3*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_1/b/biases
e
save_55/restore_allNoOp^save_55/Assign^save_55/Assign_1^save_55/Assign_2^save_55/Assign_3
;
save_56/ConstConst*
valueB Bmodel*
dtype0
�
save_56/SaveV2/tensor_namesConst*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases*
dtype0
R
save_56/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B 
�
save_56/SaveV2SaveV2save_56/Constsave_56/SaveV2/tensor_namessave_56/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_56/control_dependencyIdentitysave_56/Const^save_56/SaveV2*
T0* 
_class
loc:@save_56/Const
Z
save_56/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
O
"save_56/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_56/RestoreV2	RestoreV2save_56/Constsave_56/RestoreV2/tensor_names"save_56/RestoreV2/shape_and_slices*
dtypes
2
�
save_56/AssignAssignlayer/W/Weightssave_56/RestoreV2*"
_class
loc:@layer/W/Weights*
T0*
validate_shape(*
use_locking(
[
 save_56/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
Q
$save_56/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_56/RestoreV2_1	RestoreV2save_56/Const save_56/RestoreV2_1/tensor_names$save_56/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_56/Assign_1Assignlayer/b/biasessave_56/RestoreV2_1*
use_locking(*
validate_shape(*
T0*!
_class
loc:@layer/b/biases
^
 save_56/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
Q
$save_56/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_56/RestoreV2_2	RestoreV2save_56/Const save_56/RestoreV2_2/tensor_names$save_56/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_56/Assign_2Assignlayer_1/W/Weightssave_56/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
]
 save_56/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
Q
$save_56/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_56/RestoreV2_3	RestoreV2save_56/Const save_56/RestoreV2_3/tensor_names$save_56/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_56/Assign_3Assignlayer_1/b/biasessave_56/RestoreV2_3*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_1/b/biases
e
save_56/restore_allNoOp^save_56/Assign^save_56/Assign_1^save_56/Assign_2^save_56/Assign_3
;
save_57/ConstConst*
valueB Bmodel*
dtype0
�
save_57/SaveV2/tensor_namesConst*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases*
dtype0
R
save_57/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0
�
save_57/SaveV2SaveV2save_57/Constsave_57/SaveV2/tensor_namessave_57/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_57/control_dependencyIdentitysave_57/Const^save_57/SaveV2*
T0* 
_class
loc:@save_57/Const
Z
save_57/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
O
"save_57/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_57/RestoreV2	RestoreV2save_57/Constsave_57/RestoreV2/tensor_names"save_57/RestoreV2/shape_and_slices*
dtypes
2
�
save_57/AssignAssignlayer/W/Weightssave_57/RestoreV2*
use_locking(*
validate_shape(*
T0*"
_class
loc:@layer/W/Weights
[
 save_57/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
Q
$save_57/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_57/RestoreV2_1	RestoreV2save_57/Const save_57/RestoreV2_1/tensor_names$save_57/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_57/Assign_1Assignlayer/b/biasessave_57/RestoreV2_1*
validate_shape(*!
_class
loc:@layer/b/biases*
T0*
use_locking(
^
 save_57/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
Q
$save_57/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_57/RestoreV2_2	RestoreV2save_57/Const save_57/RestoreV2_2/tensor_names$save_57/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_57/Assign_2Assignlayer_1/W/Weightssave_57/RestoreV2_2*
validate_shape(*$
_class
loc:@layer_1/W/Weights*
T0*
use_locking(
]
 save_57/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
Q
$save_57/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_57/RestoreV2_3	RestoreV2save_57/Const save_57/RestoreV2_3/tensor_names$save_57/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_57/Assign_3Assignlayer_1/b/biasessave_57/RestoreV2_3*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_1/b/biases
e
save_57/restore_allNoOp^save_57/Assign^save_57/Assign_1^save_57/Assign_2^save_57/Assign_3
;
save_58/ConstConst*
valueB Bmodel*
dtype0
�
save_58/SaveV2/tensor_namesConst*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases*
dtype0
R
save_58/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B 
�
save_58/SaveV2SaveV2save_58/Constsave_58/SaveV2/tensor_namessave_58/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_58/control_dependencyIdentitysave_58/Const^save_58/SaveV2*
T0* 
_class
loc:@save_58/Const
Z
save_58/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
O
"save_58/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_58/RestoreV2	RestoreV2save_58/Constsave_58/RestoreV2/tensor_names"save_58/RestoreV2/shape_and_slices*
dtypes
2
�
save_58/AssignAssignlayer/W/Weightssave_58/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
[
 save_58/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
Q
$save_58/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_58/RestoreV2_1	RestoreV2save_58/Const save_58/RestoreV2_1/tensor_names$save_58/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_58/Assign_1Assignlayer/b/biasessave_58/RestoreV2_1*
use_locking(*
validate_shape(*
T0*!
_class
loc:@layer/b/biases
^
 save_58/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
Q
$save_58/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_58/RestoreV2_2	RestoreV2save_58/Const save_58/RestoreV2_2/tensor_names$save_58/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_58/Assign_2Assignlayer_1/W/Weightssave_58/RestoreV2_2*
validate_shape(*$
_class
loc:@layer_1/W/Weights*
T0*
use_locking(
]
 save_58/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
Q
$save_58/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_58/RestoreV2_3	RestoreV2save_58/Const save_58/RestoreV2_3/tensor_names$save_58/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_58/Assign_3Assignlayer_1/b/biasessave_58/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
e
save_58/restore_allNoOp^save_58/Assign^save_58/Assign_1^save_58/Assign_2^save_58/Assign_3
;
save_59/ConstConst*
dtype0*
valueB Bmodel
�
save_59/SaveV2/tensor_namesConst*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases*
dtype0
R
save_59/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0
�
save_59/SaveV2SaveV2save_59/Constsave_59/SaveV2/tensor_namessave_59/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_59/control_dependencyIdentitysave_59/Const^save_59/SaveV2*
T0* 
_class
loc:@save_59/Const
Z
save_59/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
O
"save_59/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_59/RestoreV2	RestoreV2save_59/Constsave_59/RestoreV2/tensor_names"save_59/RestoreV2/shape_and_slices*
dtypes
2
�
save_59/AssignAssignlayer/W/Weightssave_59/RestoreV2*
use_locking(*
validate_shape(*
T0*"
_class
loc:@layer/W/Weights
[
 save_59/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
Q
$save_59/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_59/RestoreV2_1	RestoreV2save_59/Const save_59/RestoreV2_1/tensor_names$save_59/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_59/Assign_1Assignlayer/b/biasessave_59/RestoreV2_1*
validate_shape(*!
_class
loc:@layer/b/biases*
T0*
use_locking(
^
 save_59/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
Q
$save_59/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_59/RestoreV2_2	RestoreV2save_59/Const save_59/RestoreV2_2/tensor_names$save_59/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_59/Assign_2Assignlayer_1/W/Weightssave_59/RestoreV2_2*$
_class
loc:@layer_1/W/Weights*
T0*
validate_shape(*
use_locking(
]
 save_59/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
Q
$save_59/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_59/RestoreV2_3	RestoreV2save_59/Const save_59/RestoreV2_3/tensor_names$save_59/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_59/Assign_3Assignlayer_1/b/biasessave_59/RestoreV2_3*#
_class
loc:@layer_1/b/biases*
T0*
validate_shape(*
use_locking(
e
save_59/restore_allNoOp^save_59/Assign^save_59/Assign_1^save_59/Assign_2^save_59/Assign_3
;
save_60/ConstConst*
dtype0*
valueB Bmodel
�
save_60/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
R
save_60/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B 
�
save_60/SaveV2SaveV2save_60/Constsave_60/SaveV2/tensor_namessave_60/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_60/control_dependencyIdentitysave_60/Const^save_60/SaveV2*
T0* 
_class
loc:@save_60/Const
Z
save_60/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
O
"save_60/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_60/RestoreV2	RestoreV2save_60/Constsave_60/RestoreV2/tensor_names"save_60/RestoreV2/shape_and_slices*
dtypes
2
�
save_60/AssignAssignlayer/W/Weightssave_60/RestoreV2*
use_locking(*
validate_shape(*
T0*"
_class
loc:@layer/W/Weights
[
 save_60/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
Q
$save_60/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_60/RestoreV2_1	RestoreV2save_60/Const save_60/RestoreV2_1/tensor_names$save_60/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_60/Assign_1Assignlayer/b/biasessave_60/RestoreV2_1*!
_class
loc:@layer/b/biases*
T0*
validate_shape(*
use_locking(
^
 save_60/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
Q
$save_60/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_60/RestoreV2_2	RestoreV2save_60/Const save_60/RestoreV2_2/tensor_names$save_60/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_60/Assign_2Assignlayer_1/W/Weightssave_60/RestoreV2_2*
use_locking(*
T0*$
_class
loc:@layer_1/W/Weights*
validate_shape(
]
 save_60/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
Q
$save_60/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_60/RestoreV2_3	RestoreV2save_60/Const save_60/RestoreV2_3/tensor_names$save_60/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_60/Assign_3Assignlayer_1/b/biasessave_60/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
e
save_60/restore_allNoOp^save_60/Assign^save_60/Assign_1^save_60/Assign_2^save_60/Assign_3
;
save_61/ConstConst*
valueB Bmodel*
dtype0
�
save_61/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
R
save_61/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B 
�
save_61/SaveV2SaveV2save_61/Constsave_61/SaveV2/tensor_namessave_61/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_61/control_dependencyIdentitysave_61/Const^save_61/SaveV2*
T0* 
_class
loc:@save_61/Const
Z
save_61/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
O
"save_61/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_61/RestoreV2	RestoreV2save_61/Constsave_61/RestoreV2/tensor_names"save_61/RestoreV2/shape_and_slices*
dtypes
2
�
save_61/AssignAssignlayer/W/Weightssave_61/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
[
 save_61/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
Q
$save_61/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_61/RestoreV2_1	RestoreV2save_61/Const save_61/RestoreV2_1/tensor_names$save_61/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_61/Assign_1Assignlayer/b/biasessave_61/RestoreV2_1*
use_locking(*
validate_shape(*
T0*!
_class
loc:@layer/b/biases
^
 save_61/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
Q
$save_61/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_61/RestoreV2_2	RestoreV2save_61/Const save_61/RestoreV2_2/tensor_names$save_61/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_61/Assign_2Assignlayer_1/W/Weightssave_61/RestoreV2_2*$
_class
loc:@layer_1/W/Weights*
T0*
validate_shape(*
use_locking(
]
 save_61/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
Q
$save_61/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_61/RestoreV2_3	RestoreV2save_61/Const save_61/RestoreV2_3/tensor_names$save_61/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_61/Assign_3Assignlayer_1/b/biasessave_61/RestoreV2_3*
use_locking(*
T0*#
_class
loc:@layer_1/b/biases*
validate_shape(
e
save_61/restore_allNoOp^save_61/Assign^save_61/Assign_1^save_61/Assign_2^save_61/Assign_3
;
save_62/ConstConst*
dtype0*
valueB Bmodel
�
save_62/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
R
save_62/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0
�
save_62/SaveV2SaveV2save_62/Constsave_62/SaveV2/tensor_namessave_62/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_62/control_dependencyIdentitysave_62/Const^save_62/SaveV2* 
_class
loc:@save_62/Const*
T0
Z
save_62/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
O
"save_62/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_62/RestoreV2	RestoreV2save_62/Constsave_62/RestoreV2/tensor_names"save_62/RestoreV2/shape_and_slices*
dtypes
2
�
save_62/AssignAssignlayer/W/Weightssave_62/RestoreV2*
use_locking(*
validate_shape(*
T0*"
_class
loc:@layer/W/Weights
[
 save_62/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
Q
$save_62/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_62/RestoreV2_1	RestoreV2save_62/Const save_62/RestoreV2_1/tensor_names$save_62/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_62/Assign_1Assignlayer/b/biasessave_62/RestoreV2_1*
use_locking(*
T0*!
_class
loc:@layer/b/biases*
validate_shape(
^
 save_62/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
Q
$save_62/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_62/RestoreV2_2	RestoreV2save_62/Const save_62/RestoreV2_2/tensor_names$save_62/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_62/Assign_2Assignlayer_1/W/Weightssave_62/RestoreV2_2*
use_locking(*
T0*$
_class
loc:@layer_1/W/Weights*
validate_shape(
]
 save_62/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
Q
$save_62/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_62/RestoreV2_3	RestoreV2save_62/Const save_62/RestoreV2_3/tensor_names$save_62/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_62/Assign_3Assignlayer_1/b/biasessave_62/RestoreV2_3*
use_locking(*
T0*#
_class
loc:@layer_1/b/biases*
validate_shape(
e
save_62/restore_allNoOp^save_62/Assign^save_62/Assign_1^save_62/Assign_2^save_62/Assign_3
;
save_63/ConstConst*
valueB Bmodel*
dtype0
�
save_63/SaveV2/tensor_namesConst*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases*
dtype0
R
save_63/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0
�
save_63/SaveV2SaveV2save_63/Constsave_63/SaveV2/tensor_namessave_63/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_63/control_dependencyIdentitysave_63/Const^save_63/SaveV2* 
_class
loc:@save_63/Const*
T0
Z
save_63/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
O
"save_63/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_63/RestoreV2	RestoreV2save_63/Constsave_63/RestoreV2/tensor_names"save_63/RestoreV2/shape_and_slices*
dtypes
2
�
save_63/AssignAssignlayer/W/Weightssave_63/RestoreV2*
use_locking(*
validate_shape(*
T0*"
_class
loc:@layer/W/Weights
[
 save_63/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
Q
$save_63/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_63/RestoreV2_1	RestoreV2save_63/Const save_63/RestoreV2_1/tensor_names$save_63/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_63/Assign_1Assignlayer/b/biasessave_63/RestoreV2_1*!
_class
loc:@layer/b/biases*
T0*
validate_shape(*
use_locking(
^
 save_63/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
Q
$save_63/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_63/RestoreV2_2	RestoreV2save_63/Const save_63/RestoreV2_2/tensor_names$save_63/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_63/Assign_2Assignlayer_1/W/Weightssave_63/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
]
 save_63/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
Q
$save_63/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_63/RestoreV2_3	RestoreV2save_63/Const save_63/RestoreV2_3/tensor_names$save_63/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_63/Assign_3Assignlayer_1/b/biasessave_63/RestoreV2_3*
use_locking(*
T0*#
_class
loc:@layer_1/b/biases*
validate_shape(
e
save_63/restore_allNoOp^save_63/Assign^save_63/Assign_1^save_63/Assign_2^save_63/Assign_3
;
save_64/ConstConst*
valueB Bmodel*
dtype0
�
save_64/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
R
save_64/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B 
�
save_64/SaveV2SaveV2save_64/Constsave_64/SaveV2/tensor_namessave_64/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_64/control_dependencyIdentitysave_64/Const^save_64/SaveV2*
T0* 
_class
loc:@save_64/Const
Z
save_64/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
O
"save_64/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_64/RestoreV2	RestoreV2save_64/Constsave_64/RestoreV2/tensor_names"save_64/RestoreV2/shape_and_slices*
dtypes
2
�
save_64/AssignAssignlayer/W/Weightssave_64/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
[
 save_64/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
Q
$save_64/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_64/RestoreV2_1	RestoreV2save_64/Const save_64/RestoreV2_1/tensor_names$save_64/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_64/Assign_1Assignlayer/b/biasessave_64/RestoreV2_1*!
_class
loc:@layer/b/biases*
T0*
validate_shape(*
use_locking(
^
 save_64/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
Q
$save_64/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_64/RestoreV2_2	RestoreV2save_64/Const save_64/RestoreV2_2/tensor_names$save_64/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_64/Assign_2Assignlayer_1/W/Weightssave_64/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
]
 save_64/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
Q
$save_64/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_64/RestoreV2_3	RestoreV2save_64/Const save_64/RestoreV2_3/tensor_names$save_64/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_64/Assign_3Assignlayer_1/b/biasessave_64/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
e
save_64/restore_allNoOp^save_64/Assign^save_64/Assign_1^save_64/Assign_2^save_64/Assign_3
;
save_65/ConstConst*
valueB Bmodel*
dtype0
�
save_65/SaveV2/tensor_namesConst*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases*
dtype0
R
save_65/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0
�
save_65/SaveV2SaveV2save_65/Constsave_65/SaveV2/tensor_namessave_65/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_65/control_dependencyIdentitysave_65/Const^save_65/SaveV2* 
_class
loc:@save_65/Const*
T0
Z
save_65/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
O
"save_65/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_65/RestoreV2	RestoreV2save_65/Constsave_65/RestoreV2/tensor_names"save_65/RestoreV2/shape_and_slices*
dtypes
2
�
save_65/AssignAssignlayer/W/Weightssave_65/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
[
 save_65/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
Q
$save_65/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_65/RestoreV2_1	RestoreV2save_65/Const save_65/RestoreV2_1/tensor_names$save_65/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_65/Assign_1Assignlayer/b/biasessave_65/RestoreV2_1*
use_locking(*
T0*!
_class
loc:@layer/b/biases*
validate_shape(
^
 save_65/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
Q
$save_65/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_65/RestoreV2_2	RestoreV2save_65/Const save_65/RestoreV2_2/tensor_names$save_65/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_65/Assign_2Assignlayer_1/W/Weightssave_65/RestoreV2_2*
use_locking(*
T0*$
_class
loc:@layer_1/W/Weights*
validate_shape(
]
 save_65/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
Q
$save_65/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_65/RestoreV2_3	RestoreV2save_65/Const save_65/RestoreV2_3/tensor_names$save_65/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_65/Assign_3Assignlayer_1/b/biasessave_65/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
e
save_65/restore_allNoOp^save_65/Assign^save_65/Assign_1^save_65/Assign_2^save_65/Assign_3
;
save_66/ConstConst*
dtype0*
valueB Bmodel
�
save_66/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
R
save_66/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0
�
save_66/SaveV2SaveV2save_66/Constsave_66/SaveV2/tensor_namessave_66/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_66/control_dependencyIdentitysave_66/Const^save_66/SaveV2*
T0* 
_class
loc:@save_66/Const
Z
save_66/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
O
"save_66/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_66/RestoreV2	RestoreV2save_66/Constsave_66/RestoreV2/tensor_names"save_66/RestoreV2/shape_and_slices*
dtypes
2
�
save_66/AssignAssignlayer/W/Weightssave_66/RestoreV2*"
_class
loc:@layer/W/Weights*
T0*
validate_shape(*
use_locking(
[
 save_66/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
Q
$save_66/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_66/RestoreV2_1	RestoreV2save_66/Const save_66/RestoreV2_1/tensor_names$save_66/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_66/Assign_1Assignlayer/b/biasessave_66/RestoreV2_1*
use_locking(*
validate_shape(*
T0*!
_class
loc:@layer/b/biases
^
 save_66/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
Q
$save_66/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_66/RestoreV2_2	RestoreV2save_66/Const save_66/RestoreV2_2/tensor_names$save_66/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_66/Assign_2Assignlayer_1/W/Weightssave_66/RestoreV2_2*
validate_shape(*$
_class
loc:@layer_1/W/Weights*
T0*
use_locking(
]
 save_66/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
Q
$save_66/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_66/RestoreV2_3	RestoreV2save_66/Const save_66/RestoreV2_3/tensor_names$save_66/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_66/Assign_3Assignlayer_1/b/biasessave_66/RestoreV2_3*
use_locking(*
T0*#
_class
loc:@layer_1/b/biases*
validate_shape(
e
save_66/restore_allNoOp^save_66/Assign^save_66/Assign_1^save_66/Assign_2^save_66/Assign_3
;
save_67/ConstConst*
dtype0*
valueB Bmodel
�
save_67/SaveV2/tensor_namesConst*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases*
dtype0
R
save_67/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B 
�
save_67/SaveV2SaveV2save_67/Constsave_67/SaveV2/tensor_namessave_67/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_67/control_dependencyIdentitysave_67/Const^save_67/SaveV2* 
_class
loc:@save_67/Const*
T0
Z
save_67/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
O
"save_67/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_67/RestoreV2	RestoreV2save_67/Constsave_67/RestoreV2/tensor_names"save_67/RestoreV2/shape_and_slices*
dtypes
2
�
save_67/AssignAssignlayer/W/Weightssave_67/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
[
 save_67/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
Q
$save_67/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_67/RestoreV2_1	RestoreV2save_67/Const save_67/RestoreV2_1/tensor_names$save_67/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_67/Assign_1Assignlayer/b/biasessave_67/RestoreV2_1*!
_class
loc:@layer/b/biases*
T0*
validate_shape(*
use_locking(
^
 save_67/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
Q
$save_67/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_67/RestoreV2_2	RestoreV2save_67/Const save_67/RestoreV2_2/tensor_names$save_67/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_67/Assign_2Assignlayer_1/W/Weightssave_67/RestoreV2_2*
validate_shape(*$
_class
loc:@layer_1/W/Weights*
T0*
use_locking(
]
 save_67/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
Q
$save_67/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_67/RestoreV2_3	RestoreV2save_67/Const save_67/RestoreV2_3/tensor_names$save_67/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_67/Assign_3Assignlayer_1/b/biasessave_67/RestoreV2_3*#
_class
loc:@layer_1/b/biases*
T0*
validate_shape(*
use_locking(
e
save_67/restore_allNoOp^save_67/Assign^save_67/Assign_1^save_67/Assign_2^save_67/Assign_3
;
save_68/ConstConst*
dtype0*
valueB Bmodel
�
save_68/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
R
save_68/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B 
�
save_68/SaveV2SaveV2save_68/Constsave_68/SaveV2/tensor_namessave_68/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_68/control_dependencyIdentitysave_68/Const^save_68/SaveV2*
T0* 
_class
loc:@save_68/Const
Z
save_68/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
O
"save_68/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_68/RestoreV2	RestoreV2save_68/Constsave_68/RestoreV2/tensor_names"save_68/RestoreV2/shape_and_slices*
dtypes
2
�
save_68/AssignAssignlayer/W/Weightssave_68/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
[
 save_68/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
Q
$save_68/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_68/RestoreV2_1	RestoreV2save_68/Const save_68/RestoreV2_1/tensor_names$save_68/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_68/Assign_1Assignlayer/b/biasessave_68/RestoreV2_1*
use_locking(*
validate_shape(*
T0*!
_class
loc:@layer/b/biases
^
 save_68/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
Q
$save_68/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_68/RestoreV2_2	RestoreV2save_68/Const save_68/RestoreV2_2/tensor_names$save_68/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_68/Assign_2Assignlayer_1/W/Weightssave_68/RestoreV2_2*
validate_shape(*$
_class
loc:@layer_1/W/Weights*
T0*
use_locking(
]
 save_68/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
Q
$save_68/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_68/RestoreV2_3	RestoreV2save_68/Const save_68/RestoreV2_3/tensor_names$save_68/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_68/Assign_3Assignlayer_1/b/biasessave_68/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
e
save_68/restore_allNoOp^save_68/Assign^save_68/Assign_1^save_68/Assign_2^save_68/Assign_3
;
save_69/ConstConst*
valueB Bmodel*
dtype0
�
save_69/SaveV2/tensor_namesConst*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases*
dtype0
R
save_69/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B 
�
save_69/SaveV2SaveV2save_69/Constsave_69/SaveV2/tensor_namessave_69/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_69/control_dependencyIdentitysave_69/Const^save_69/SaveV2*
T0* 
_class
loc:@save_69/Const
Z
save_69/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
O
"save_69/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_69/RestoreV2	RestoreV2save_69/Constsave_69/RestoreV2/tensor_names"save_69/RestoreV2/shape_and_slices*
dtypes
2
�
save_69/AssignAssignlayer/W/Weightssave_69/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
[
 save_69/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
Q
$save_69/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_69/RestoreV2_1	RestoreV2save_69/Const save_69/RestoreV2_1/tensor_names$save_69/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_69/Assign_1Assignlayer/b/biasessave_69/RestoreV2_1*
validate_shape(*!
_class
loc:@layer/b/biases*
T0*
use_locking(
^
 save_69/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
Q
$save_69/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_69/RestoreV2_2	RestoreV2save_69/Const save_69/RestoreV2_2/tensor_names$save_69/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_69/Assign_2Assignlayer_1/W/Weightssave_69/RestoreV2_2*$
_class
loc:@layer_1/W/Weights*
T0*
validate_shape(*
use_locking(
]
 save_69/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
Q
$save_69/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_69/RestoreV2_3	RestoreV2save_69/Const save_69/RestoreV2_3/tensor_names$save_69/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_69/Assign_3Assignlayer_1/b/biasessave_69/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
e
save_69/restore_allNoOp^save_69/Assign^save_69/Assign_1^save_69/Assign_2^save_69/Assign_3
;
save_70/ConstConst*
dtype0*
valueB Bmodel
�
save_70/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
R
save_70/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0
�
save_70/SaveV2SaveV2save_70/Constsave_70/SaveV2/tensor_namessave_70/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_70/control_dependencyIdentitysave_70/Const^save_70/SaveV2* 
_class
loc:@save_70/Const*
T0
Z
save_70/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
O
"save_70/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_70/RestoreV2	RestoreV2save_70/Constsave_70/RestoreV2/tensor_names"save_70/RestoreV2/shape_and_slices*
dtypes
2
�
save_70/AssignAssignlayer/W/Weightssave_70/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
[
 save_70/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
Q
$save_70/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_70/RestoreV2_1	RestoreV2save_70/Const save_70/RestoreV2_1/tensor_names$save_70/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_70/Assign_1Assignlayer/b/biasessave_70/RestoreV2_1*
validate_shape(*!
_class
loc:@layer/b/biases*
T0*
use_locking(
^
 save_70/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
Q
$save_70/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_70/RestoreV2_2	RestoreV2save_70/Const save_70/RestoreV2_2/tensor_names$save_70/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_70/Assign_2Assignlayer_1/W/Weightssave_70/RestoreV2_2*
validate_shape(*$
_class
loc:@layer_1/W/Weights*
T0*
use_locking(
]
 save_70/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
Q
$save_70/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_70/RestoreV2_3	RestoreV2save_70/Const save_70/RestoreV2_3/tensor_names$save_70/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_70/Assign_3Assignlayer_1/b/biasessave_70/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
e
save_70/restore_allNoOp^save_70/Assign^save_70/Assign_1^save_70/Assign_2^save_70/Assign_3
;
save_71/ConstConst*
dtype0*
valueB Bmodel
�
save_71/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
R
save_71/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0
�
save_71/SaveV2SaveV2save_71/Constsave_71/SaveV2/tensor_namessave_71/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_71/control_dependencyIdentitysave_71/Const^save_71/SaveV2*
T0* 
_class
loc:@save_71/Const
Z
save_71/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
O
"save_71/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_71/RestoreV2	RestoreV2save_71/Constsave_71/RestoreV2/tensor_names"save_71/RestoreV2/shape_and_slices*
dtypes
2
�
save_71/AssignAssignlayer/W/Weightssave_71/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
[
 save_71/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
Q
$save_71/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_71/RestoreV2_1	RestoreV2save_71/Const save_71/RestoreV2_1/tensor_names$save_71/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_71/Assign_1Assignlayer/b/biasessave_71/RestoreV2_1*
validate_shape(*!
_class
loc:@layer/b/biases*
T0*
use_locking(
^
 save_71/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
Q
$save_71/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_71/RestoreV2_2	RestoreV2save_71/Const save_71/RestoreV2_2/tensor_names$save_71/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_71/Assign_2Assignlayer_1/W/Weightssave_71/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
]
 save_71/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
Q
$save_71/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_71/RestoreV2_3	RestoreV2save_71/Const save_71/RestoreV2_3/tensor_names$save_71/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_71/Assign_3Assignlayer_1/b/biasessave_71/RestoreV2_3*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_1/b/biases
e
save_71/restore_allNoOp^save_71/Assign^save_71/Assign_1^save_71/Assign_2^save_71/Assign_3
;
save_72/ConstConst*
valueB Bmodel*
dtype0
�
save_72/SaveV2/tensor_namesConst*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases*
dtype0
R
save_72/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B 
�
save_72/SaveV2SaveV2save_72/Constsave_72/SaveV2/tensor_namessave_72/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_72/control_dependencyIdentitysave_72/Const^save_72/SaveV2*
T0* 
_class
loc:@save_72/Const
Z
save_72/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
O
"save_72/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_72/RestoreV2	RestoreV2save_72/Constsave_72/RestoreV2/tensor_names"save_72/RestoreV2/shape_and_slices*
dtypes
2
�
save_72/AssignAssignlayer/W/Weightssave_72/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
[
 save_72/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
Q
$save_72/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_72/RestoreV2_1	RestoreV2save_72/Const save_72/RestoreV2_1/tensor_names$save_72/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_72/Assign_1Assignlayer/b/biasessave_72/RestoreV2_1*
use_locking(*
T0*!
_class
loc:@layer/b/biases*
validate_shape(
^
 save_72/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
Q
$save_72/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_72/RestoreV2_2	RestoreV2save_72/Const save_72/RestoreV2_2/tensor_names$save_72/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_72/Assign_2Assignlayer_1/W/Weightssave_72/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
]
 save_72/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
Q
$save_72/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_72/RestoreV2_3	RestoreV2save_72/Const save_72/RestoreV2_3/tensor_names$save_72/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_72/Assign_3Assignlayer_1/b/biasessave_72/RestoreV2_3*#
_class
loc:@layer_1/b/biases*
T0*
validate_shape(*
use_locking(
e
save_72/restore_allNoOp^save_72/Assign^save_72/Assign_1^save_72/Assign_2^save_72/Assign_3
;
save_73/ConstConst*
dtype0*
valueB Bmodel
�
save_73/SaveV2/tensor_namesConst*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases*
dtype0
R
save_73/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0
�
save_73/SaveV2SaveV2save_73/Constsave_73/SaveV2/tensor_namessave_73/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_73/control_dependencyIdentitysave_73/Const^save_73/SaveV2* 
_class
loc:@save_73/Const*
T0
Z
save_73/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
O
"save_73/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_73/RestoreV2	RestoreV2save_73/Constsave_73/RestoreV2/tensor_names"save_73/RestoreV2/shape_and_slices*
dtypes
2
�
save_73/AssignAssignlayer/W/Weightssave_73/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
[
 save_73/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
Q
$save_73/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_73/RestoreV2_1	RestoreV2save_73/Const save_73/RestoreV2_1/tensor_names$save_73/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_73/Assign_1Assignlayer/b/biasessave_73/RestoreV2_1*!
_class
loc:@layer/b/biases*
T0*
validate_shape(*
use_locking(
^
 save_73/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
Q
$save_73/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_73/RestoreV2_2	RestoreV2save_73/Const save_73/RestoreV2_2/tensor_names$save_73/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_73/Assign_2Assignlayer_1/W/Weightssave_73/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
]
 save_73/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
Q
$save_73/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_73/RestoreV2_3	RestoreV2save_73/Const save_73/RestoreV2_3/tensor_names$save_73/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_73/Assign_3Assignlayer_1/b/biasessave_73/RestoreV2_3*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_1/b/biases
e
save_73/restore_allNoOp^save_73/Assign^save_73/Assign_1^save_73/Assign_2^save_73/Assign_3
;
save_74/ConstConst*
dtype0*
valueB Bmodel
�
save_74/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
R
save_74/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0
�
save_74/SaveV2SaveV2save_74/Constsave_74/SaveV2/tensor_namessave_74/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_74/control_dependencyIdentitysave_74/Const^save_74/SaveV2*
T0* 
_class
loc:@save_74/Const
Z
save_74/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
O
"save_74/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_74/RestoreV2	RestoreV2save_74/Constsave_74/RestoreV2/tensor_names"save_74/RestoreV2/shape_and_slices*
dtypes
2
�
save_74/AssignAssignlayer/W/Weightssave_74/RestoreV2*
use_locking(*
validate_shape(*
T0*"
_class
loc:@layer/W/Weights
[
 save_74/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
Q
$save_74/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_74/RestoreV2_1	RestoreV2save_74/Const save_74/RestoreV2_1/tensor_names$save_74/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_74/Assign_1Assignlayer/b/biasessave_74/RestoreV2_1*
validate_shape(*!
_class
loc:@layer/b/biases*
T0*
use_locking(
^
 save_74/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
Q
$save_74/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_74/RestoreV2_2	RestoreV2save_74/Const save_74/RestoreV2_2/tensor_names$save_74/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_74/Assign_2Assignlayer_1/W/Weightssave_74/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
]
 save_74/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
Q
$save_74/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_74/RestoreV2_3	RestoreV2save_74/Const save_74/RestoreV2_3/tensor_names$save_74/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_74/Assign_3Assignlayer_1/b/biasessave_74/RestoreV2_3*
use_locking(*
T0*#
_class
loc:@layer_1/b/biases*
validate_shape(
e
save_74/restore_allNoOp^save_74/Assign^save_74/Assign_1^save_74/Assign_2^save_74/Assign_3
;
save_75/ConstConst*
valueB Bmodel*
dtype0
�
save_75/SaveV2/tensor_namesConst*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases*
dtype0
R
save_75/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0
�
save_75/SaveV2SaveV2save_75/Constsave_75/SaveV2/tensor_namessave_75/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_75/control_dependencyIdentitysave_75/Const^save_75/SaveV2* 
_class
loc:@save_75/Const*
T0
Z
save_75/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
O
"save_75/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_75/RestoreV2	RestoreV2save_75/Constsave_75/RestoreV2/tensor_names"save_75/RestoreV2/shape_and_slices*
dtypes
2
�
save_75/AssignAssignlayer/W/Weightssave_75/RestoreV2*
use_locking(*
validate_shape(*
T0*"
_class
loc:@layer/W/Weights
[
 save_75/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
Q
$save_75/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_75/RestoreV2_1	RestoreV2save_75/Const save_75/RestoreV2_1/tensor_names$save_75/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_75/Assign_1Assignlayer/b/biasessave_75/RestoreV2_1*
validate_shape(*!
_class
loc:@layer/b/biases*
T0*
use_locking(
^
 save_75/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
Q
$save_75/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_75/RestoreV2_2	RestoreV2save_75/Const save_75/RestoreV2_2/tensor_names$save_75/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_75/Assign_2Assignlayer_1/W/Weightssave_75/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
]
 save_75/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
Q
$save_75/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_75/RestoreV2_3	RestoreV2save_75/Const save_75/RestoreV2_3/tensor_names$save_75/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_75/Assign_3Assignlayer_1/b/biasessave_75/RestoreV2_3*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_1/b/biases
e
save_75/restore_allNoOp^save_75/Assign^save_75/Assign_1^save_75/Assign_2^save_75/Assign_3
;
save_76/ConstConst*
dtype0*
valueB Bmodel
�
save_76/SaveV2/tensor_namesConst*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases*
dtype0
R
save_76/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0
�
save_76/SaveV2SaveV2save_76/Constsave_76/SaveV2/tensor_namessave_76/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_76/control_dependencyIdentitysave_76/Const^save_76/SaveV2* 
_class
loc:@save_76/Const*
T0
Z
save_76/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
O
"save_76/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_76/RestoreV2	RestoreV2save_76/Constsave_76/RestoreV2/tensor_names"save_76/RestoreV2/shape_and_slices*
dtypes
2
�
save_76/AssignAssignlayer/W/Weightssave_76/RestoreV2*
use_locking(*
validate_shape(*
T0*"
_class
loc:@layer/W/Weights
[
 save_76/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
Q
$save_76/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_76/RestoreV2_1	RestoreV2save_76/Const save_76/RestoreV2_1/tensor_names$save_76/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_76/Assign_1Assignlayer/b/biasessave_76/RestoreV2_1*
use_locking(*
T0*!
_class
loc:@layer/b/biases*
validate_shape(
^
 save_76/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
Q
$save_76/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_76/RestoreV2_2	RestoreV2save_76/Const save_76/RestoreV2_2/tensor_names$save_76/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_76/Assign_2Assignlayer_1/W/Weightssave_76/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
]
 save_76/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
Q
$save_76/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_76/RestoreV2_3	RestoreV2save_76/Const save_76/RestoreV2_3/tensor_names$save_76/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_76/Assign_3Assignlayer_1/b/biasessave_76/RestoreV2_3*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_1/b/biases
e
save_76/restore_allNoOp^save_76/Assign^save_76/Assign_1^save_76/Assign_2^save_76/Assign_3
;
save_77/ConstConst*
valueB Bmodel*
dtype0
�
save_77/SaveV2/tensor_namesConst*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases*
dtype0
R
save_77/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0
�
save_77/SaveV2SaveV2save_77/Constsave_77/SaveV2/tensor_namessave_77/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_77/control_dependencyIdentitysave_77/Const^save_77/SaveV2*
T0* 
_class
loc:@save_77/Const
Z
save_77/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
O
"save_77/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_77/RestoreV2	RestoreV2save_77/Constsave_77/RestoreV2/tensor_names"save_77/RestoreV2/shape_and_slices*
dtypes
2
�
save_77/AssignAssignlayer/W/Weightssave_77/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
[
 save_77/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
Q
$save_77/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_77/RestoreV2_1	RestoreV2save_77/Const save_77/RestoreV2_1/tensor_names$save_77/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_77/Assign_1Assignlayer/b/biasessave_77/RestoreV2_1*
use_locking(*
T0*!
_class
loc:@layer/b/biases*
validate_shape(
^
 save_77/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
Q
$save_77/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_77/RestoreV2_2	RestoreV2save_77/Const save_77/RestoreV2_2/tensor_names$save_77/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_77/Assign_2Assignlayer_1/W/Weightssave_77/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
]
 save_77/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
Q
$save_77/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_77/RestoreV2_3	RestoreV2save_77/Const save_77/RestoreV2_3/tensor_names$save_77/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_77/Assign_3Assignlayer_1/b/biasessave_77/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
e
save_77/restore_allNoOp^save_77/Assign^save_77/Assign_1^save_77/Assign_2^save_77/Assign_3
;
save_78/ConstConst*
dtype0*
valueB Bmodel
�
save_78/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
R
save_78/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B 
�
save_78/SaveV2SaveV2save_78/Constsave_78/SaveV2/tensor_namessave_78/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_78/control_dependencyIdentitysave_78/Const^save_78/SaveV2*
T0* 
_class
loc:@save_78/Const
Z
save_78/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
O
"save_78/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_78/RestoreV2	RestoreV2save_78/Constsave_78/RestoreV2/tensor_names"save_78/RestoreV2/shape_and_slices*
dtypes
2
�
save_78/AssignAssignlayer/W/Weightssave_78/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
[
 save_78/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
Q
$save_78/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_78/RestoreV2_1	RestoreV2save_78/Const save_78/RestoreV2_1/tensor_names$save_78/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_78/Assign_1Assignlayer/b/biasessave_78/RestoreV2_1*!
_class
loc:@layer/b/biases*
T0*
validate_shape(*
use_locking(
^
 save_78/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
Q
$save_78/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_78/RestoreV2_2	RestoreV2save_78/Const save_78/RestoreV2_2/tensor_names$save_78/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_78/Assign_2Assignlayer_1/W/Weightssave_78/RestoreV2_2*
validate_shape(*$
_class
loc:@layer_1/W/Weights*
T0*
use_locking(
]
 save_78/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
Q
$save_78/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_78/RestoreV2_3	RestoreV2save_78/Const save_78/RestoreV2_3/tensor_names$save_78/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_78/Assign_3Assignlayer_1/b/biasessave_78/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
e
save_78/restore_allNoOp^save_78/Assign^save_78/Assign_1^save_78/Assign_2^save_78/Assign_3
;
save_79/ConstConst*
valueB Bmodel*
dtype0
�
save_79/SaveV2/tensor_namesConst*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases*
dtype0
R
save_79/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0
�
save_79/SaveV2SaveV2save_79/Constsave_79/SaveV2/tensor_namessave_79/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_79/control_dependencyIdentitysave_79/Const^save_79/SaveV2* 
_class
loc:@save_79/Const*
T0
Z
save_79/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
O
"save_79/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_79/RestoreV2	RestoreV2save_79/Constsave_79/RestoreV2/tensor_names"save_79/RestoreV2/shape_and_slices*
dtypes
2
�
save_79/AssignAssignlayer/W/Weightssave_79/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
[
 save_79/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
Q
$save_79/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_79/RestoreV2_1	RestoreV2save_79/Const save_79/RestoreV2_1/tensor_names$save_79/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_79/Assign_1Assignlayer/b/biasessave_79/RestoreV2_1*!
_class
loc:@layer/b/biases*
T0*
validate_shape(*
use_locking(
^
 save_79/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
Q
$save_79/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_79/RestoreV2_2	RestoreV2save_79/Const save_79/RestoreV2_2/tensor_names$save_79/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_79/Assign_2Assignlayer_1/W/Weightssave_79/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
]
 save_79/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
Q
$save_79/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_79/RestoreV2_3	RestoreV2save_79/Const save_79/RestoreV2_3/tensor_names$save_79/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_79/Assign_3Assignlayer_1/b/biasessave_79/RestoreV2_3*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_1/b/biases
e
save_79/restore_allNoOp^save_79/Assign^save_79/Assign_1^save_79/Assign_2^save_79/Assign_3
;
save_80/ConstConst*
dtype0*
valueB Bmodel
�
save_80/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
R
save_80/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B 
�
save_80/SaveV2SaveV2save_80/Constsave_80/SaveV2/tensor_namessave_80/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_80/control_dependencyIdentitysave_80/Const^save_80/SaveV2* 
_class
loc:@save_80/Const*
T0
Z
save_80/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
O
"save_80/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_80/RestoreV2	RestoreV2save_80/Constsave_80/RestoreV2/tensor_names"save_80/RestoreV2/shape_and_slices*
dtypes
2
�
save_80/AssignAssignlayer/W/Weightssave_80/RestoreV2*"
_class
loc:@layer/W/Weights*
T0*
validate_shape(*
use_locking(
[
 save_80/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
Q
$save_80/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_80/RestoreV2_1	RestoreV2save_80/Const save_80/RestoreV2_1/tensor_names$save_80/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_80/Assign_1Assignlayer/b/biasessave_80/RestoreV2_1*
validate_shape(*!
_class
loc:@layer/b/biases*
T0*
use_locking(
^
 save_80/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
Q
$save_80/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_80/RestoreV2_2	RestoreV2save_80/Const save_80/RestoreV2_2/tensor_names$save_80/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_80/Assign_2Assignlayer_1/W/Weightssave_80/RestoreV2_2*
use_locking(*
T0*$
_class
loc:@layer_1/W/Weights*
validate_shape(
]
 save_80/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
Q
$save_80/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_80/RestoreV2_3	RestoreV2save_80/Const save_80/RestoreV2_3/tensor_names$save_80/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_80/Assign_3Assignlayer_1/b/biasessave_80/RestoreV2_3*
use_locking(*
T0*#
_class
loc:@layer_1/b/biases*
validate_shape(
e
save_80/restore_allNoOp^save_80/Assign^save_80/Assign_1^save_80/Assign_2^save_80/Assign_3
;
save_81/ConstConst*
valueB Bmodel*
dtype0
�
save_81/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
R
save_81/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0
�
save_81/SaveV2SaveV2save_81/Constsave_81/SaveV2/tensor_namessave_81/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_81/control_dependencyIdentitysave_81/Const^save_81/SaveV2* 
_class
loc:@save_81/Const*
T0
Z
save_81/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
O
"save_81/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_81/RestoreV2	RestoreV2save_81/Constsave_81/RestoreV2/tensor_names"save_81/RestoreV2/shape_and_slices*
dtypes
2
�
save_81/AssignAssignlayer/W/Weightssave_81/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
[
 save_81/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
Q
$save_81/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_81/RestoreV2_1	RestoreV2save_81/Const save_81/RestoreV2_1/tensor_names$save_81/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_81/Assign_1Assignlayer/b/biasessave_81/RestoreV2_1*!
_class
loc:@layer/b/biases*
T0*
validate_shape(*
use_locking(
^
 save_81/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
Q
$save_81/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_81/RestoreV2_2	RestoreV2save_81/Const save_81/RestoreV2_2/tensor_names$save_81/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_81/Assign_2Assignlayer_1/W/Weightssave_81/RestoreV2_2*
validate_shape(*$
_class
loc:@layer_1/W/Weights*
T0*
use_locking(
]
 save_81/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
Q
$save_81/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_81/RestoreV2_3	RestoreV2save_81/Const save_81/RestoreV2_3/tensor_names$save_81/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_81/Assign_3Assignlayer_1/b/biasessave_81/RestoreV2_3*
use_locking(*
T0*#
_class
loc:@layer_1/b/biases*
validate_shape(
e
save_81/restore_allNoOp^save_81/Assign^save_81/Assign_1^save_81/Assign_2^save_81/Assign_3
;
save_82/ConstConst*
valueB Bmodel*
dtype0
�
save_82/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
R
save_82/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0
�
save_82/SaveV2SaveV2save_82/Constsave_82/SaveV2/tensor_namessave_82/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_82/control_dependencyIdentitysave_82/Const^save_82/SaveV2* 
_class
loc:@save_82/Const*
T0
Z
save_82/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
O
"save_82/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_82/RestoreV2	RestoreV2save_82/Constsave_82/RestoreV2/tensor_names"save_82/RestoreV2/shape_and_slices*
dtypes
2
�
save_82/AssignAssignlayer/W/Weightssave_82/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
[
 save_82/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
Q
$save_82/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_82/RestoreV2_1	RestoreV2save_82/Const save_82/RestoreV2_1/tensor_names$save_82/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_82/Assign_1Assignlayer/b/biasessave_82/RestoreV2_1*!
_class
loc:@layer/b/biases*
T0*
validate_shape(*
use_locking(
^
 save_82/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
Q
$save_82/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_82/RestoreV2_2	RestoreV2save_82/Const save_82/RestoreV2_2/tensor_names$save_82/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_82/Assign_2Assignlayer_1/W/Weightssave_82/RestoreV2_2*
use_locking(*
T0*$
_class
loc:@layer_1/W/Weights*
validate_shape(
]
 save_82/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
Q
$save_82/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_82/RestoreV2_3	RestoreV2save_82/Const save_82/RestoreV2_3/tensor_names$save_82/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_82/Assign_3Assignlayer_1/b/biasessave_82/RestoreV2_3*
use_locking(*
T0*#
_class
loc:@layer_1/b/biases*
validate_shape(
e
save_82/restore_allNoOp^save_82/Assign^save_82/Assign_1^save_82/Assign_2^save_82/Assign_3
;
save_83/ConstConst*
valueB Bmodel*
dtype0
�
save_83/SaveV2/tensor_namesConst*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases*
dtype0
R
save_83/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0
�
save_83/SaveV2SaveV2save_83/Constsave_83/SaveV2/tensor_namessave_83/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_83/control_dependencyIdentitysave_83/Const^save_83/SaveV2*
T0* 
_class
loc:@save_83/Const
Z
save_83/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
O
"save_83/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_83/RestoreV2	RestoreV2save_83/Constsave_83/RestoreV2/tensor_names"save_83/RestoreV2/shape_and_slices*
dtypes
2
�
save_83/AssignAssignlayer/W/Weightssave_83/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
[
 save_83/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
Q
$save_83/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_83/RestoreV2_1	RestoreV2save_83/Const save_83/RestoreV2_1/tensor_names$save_83/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_83/Assign_1Assignlayer/b/biasessave_83/RestoreV2_1*
use_locking(*
T0*!
_class
loc:@layer/b/biases*
validate_shape(
^
 save_83/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
Q
$save_83/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_83/RestoreV2_2	RestoreV2save_83/Const save_83/RestoreV2_2/tensor_names$save_83/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_83/Assign_2Assignlayer_1/W/Weightssave_83/RestoreV2_2*
validate_shape(*$
_class
loc:@layer_1/W/Weights*
T0*
use_locking(
]
 save_83/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
Q
$save_83/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_83/RestoreV2_3	RestoreV2save_83/Const save_83/RestoreV2_3/tensor_names$save_83/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_83/Assign_3Assignlayer_1/b/biasessave_83/RestoreV2_3*#
_class
loc:@layer_1/b/biases*
T0*
validate_shape(*
use_locking(
e
save_83/restore_allNoOp^save_83/Assign^save_83/Assign_1^save_83/Assign_2^save_83/Assign_3
;
save_84/ConstConst*
valueB Bmodel*
dtype0
�
save_84/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
R
save_84/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B 
�
save_84/SaveV2SaveV2save_84/Constsave_84/SaveV2/tensor_namessave_84/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_84/control_dependencyIdentitysave_84/Const^save_84/SaveV2*
T0* 
_class
loc:@save_84/Const
Z
save_84/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
O
"save_84/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_84/RestoreV2	RestoreV2save_84/Constsave_84/RestoreV2/tensor_names"save_84/RestoreV2/shape_and_slices*
dtypes
2
�
save_84/AssignAssignlayer/W/Weightssave_84/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
[
 save_84/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
Q
$save_84/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_84/RestoreV2_1	RestoreV2save_84/Const save_84/RestoreV2_1/tensor_names$save_84/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_84/Assign_1Assignlayer/b/biasessave_84/RestoreV2_1*
validate_shape(*!
_class
loc:@layer/b/biases*
T0*
use_locking(
^
 save_84/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
Q
$save_84/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_84/RestoreV2_2	RestoreV2save_84/Const save_84/RestoreV2_2/tensor_names$save_84/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_84/Assign_2Assignlayer_1/W/Weightssave_84/RestoreV2_2*
validate_shape(*$
_class
loc:@layer_1/W/Weights*
T0*
use_locking(
]
 save_84/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
Q
$save_84/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_84/RestoreV2_3	RestoreV2save_84/Const save_84/RestoreV2_3/tensor_names$save_84/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_84/Assign_3Assignlayer_1/b/biasessave_84/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
e
save_84/restore_allNoOp^save_84/Assign^save_84/Assign_1^save_84/Assign_2^save_84/Assign_3
;
save_85/ConstConst*
valueB Bmodel*
dtype0
�
save_85/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
R
save_85/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B 
�
save_85/SaveV2SaveV2save_85/Constsave_85/SaveV2/tensor_namessave_85/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_85/control_dependencyIdentitysave_85/Const^save_85/SaveV2* 
_class
loc:@save_85/Const*
T0
Z
save_85/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
O
"save_85/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_85/RestoreV2	RestoreV2save_85/Constsave_85/RestoreV2/tensor_names"save_85/RestoreV2/shape_and_slices*
dtypes
2
�
save_85/AssignAssignlayer/W/Weightssave_85/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
[
 save_85/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
Q
$save_85/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_85/RestoreV2_1	RestoreV2save_85/Const save_85/RestoreV2_1/tensor_names$save_85/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_85/Assign_1Assignlayer/b/biasessave_85/RestoreV2_1*!
_class
loc:@layer/b/biases*
T0*
validate_shape(*
use_locking(
^
 save_85/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
Q
$save_85/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_85/RestoreV2_2	RestoreV2save_85/Const save_85/RestoreV2_2/tensor_names$save_85/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_85/Assign_2Assignlayer_1/W/Weightssave_85/RestoreV2_2*
use_locking(*
T0*$
_class
loc:@layer_1/W/Weights*
validate_shape(
]
 save_85/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
Q
$save_85/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_85/RestoreV2_3	RestoreV2save_85/Const save_85/RestoreV2_3/tensor_names$save_85/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_85/Assign_3Assignlayer_1/b/biasessave_85/RestoreV2_3*
use_locking(*
T0*#
_class
loc:@layer_1/b/biases*
validate_shape(
e
save_85/restore_allNoOp^save_85/Assign^save_85/Assign_1^save_85/Assign_2^save_85/Assign_3
;
save_86/ConstConst*
valueB Bmodel*
dtype0
�
save_86/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
R
save_86/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B 
�
save_86/SaveV2SaveV2save_86/Constsave_86/SaveV2/tensor_namessave_86/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_86/control_dependencyIdentitysave_86/Const^save_86/SaveV2* 
_class
loc:@save_86/Const*
T0
Z
save_86/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
O
"save_86/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_86/RestoreV2	RestoreV2save_86/Constsave_86/RestoreV2/tensor_names"save_86/RestoreV2/shape_and_slices*
dtypes
2
�
save_86/AssignAssignlayer/W/Weightssave_86/RestoreV2*"
_class
loc:@layer/W/Weights*
T0*
validate_shape(*
use_locking(
[
 save_86/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
Q
$save_86/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_86/RestoreV2_1	RestoreV2save_86/Const save_86/RestoreV2_1/tensor_names$save_86/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_86/Assign_1Assignlayer/b/biasessave_86/RestoreV2_1*
validate_shape(*!
_class
loc:@layer/b/biases*
T0*
use_locking(
^
 save_86/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
Q
$save_86/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_86/RestoreV2_2	RestoreV2save_86/Const save_86/RestoreV2_2/tensor_names$save_86/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_86/Assign_2Assignlayer_1/W/Weightssave_86/RestoreV2_2*$
_class
loc:@layer_1/W/Weights*
T0*
validate_shape(*
use_locking(
]
 save_86/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
Q
$save_86/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_86/RestoreV2_3	RestoreV2save_86/Const save_86/RestoreV2_3/tensor_names$save_86/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_86/Assign_3Assignlayer_1/b/biasessave_86/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
e
save_86/restore_allNoOp^save_86/Assign^save_86/Assign_1^save_86/Assign_2^save_86/Assign_3
;
save_87/ConstConst*
dtype0*
valueB Bmodel
�
save_87/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
R
save_87/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B 
�
save_87/SaveV2SaveV2save_87/Constsave_87/SaveV2/tensor_namessave_87/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_87/control_dependencyIdentitysave_87/Const^save_87/SaveV2*
T0* 
_class
loc:@save_87/Const
Z
save_87/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
O
"save_87/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_87/RestoreV2	RestoreV2save_87/Constsave_87/RestoreV2/tensor_names"save_87/RestoreV2/shape_and_slices*
dtypes
2
�
save_87/AssignAssignlayer/W/Weightssave_87/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
[
 save_87/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
Q
$save_87/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_87/RestoreV2_1	RestoreV2save_87/Const save_87/RestoreV2_1/tensor_names$save_87/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_87/Assign_1Assignlayer/b/biasessave_87/RestoreV2_1*
use_locking(*
validate_shape(*
T0*!
_class
loc:@layer/b/biases
^
 save_87/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
Q
$save_87/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_87/RestoreV2_2	RestoreV2save_87/Const save_87/RestoreV2_2/tensor_names$save_87/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_87/Assign_2Assignlayer_1/W/Weightssave_87/RestoreV2_2*
use_locking(*
T0*$
_class
loc:@layer_1/W/Weights*
validate_shape(
]
 save_87/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
Q
$save_87/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_87/RestoreV2_3	RestoreV2save_87/Const save_87/RestoreV2_3/tensor_names$save_87/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_87/Assign_3Assignlayer_1/b/biasessave_87/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
e
save_87/restore_allNoOp^save_87/Assign^save_87/Assign_1^save_87/Assign_2^save_87/Assign_3
;
save_88/ConstConst*
valueB Bmodel*
dtype0
�
save_88/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
R
save_88/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B 
�
save_88/SaveV2SaveV2save_88/Constsave_88/SaveV2/tensor_namessave_88/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_88/control_dependencyIdentitysave_88/Const^save_88/SaveV2*
T0* 
_class
loc:@save_88/Const
Z
save_88/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
O
"save_88/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_88/RestoreV2	RestoreV2save_88/Constsave_88/RestoreV2/tensor_names"save_88/RestoreV2/shape_and_slices*
dtypes
2
�
save_88/AssignAssignlayer/W/Weightssave_88/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
[
 save_88/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
Q
$save_88/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_88/RestoreV2_1	RestoreV2save_88/Const save_88/RestoreV2_1/tensor_names$save_88/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_88/Assign_1Assignlayer/b/biasessave_88/RestoreV2_1*
validate_shape(*!
_class
loc:@layer/b/biases*
T0*
use_locking(
^
 save_88/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
Q
$save_88/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_88/RestoreV2_2	RestoreV2save_88/Const save_88/RestoreV2_2/tensor_names$save_88/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_88/Assign_2Assignlayer_1/W/Weightssave_88/RestoreV2_2*$
_class
loc:@layer_1/W/Weights*
T0*
validate_shape(*
use_locking(
]
 save_88/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
Q
$save_88/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_88/RestoreV2_3	RestoreV2save_88/Const save_88/RestoreV2_3/tensor_names$save_88/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_88/Assign_3Assignlayer_1/b/biasessave_88/RestoreV2_3*
use_locking(*
T0*#
_class
loc:@layer_1/b/biases*
validate_shape(
e
save_88/restore_allNoOp^save_88/Assign^save_88/Assign_1^save_88/Assign_2^save_88/Assign_3
;
save_89/ConstConst*
dtype0*
valueB Bmodel
�
save_89/SaveV2/tensor_namesConst*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases*
dtype0
R
save_89/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B 
�
save_89/SaveV2SaveV2save_89/Constsave_89/SaveV2/tensor_namessave_89/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_89/control_dependencyIdentitysave_89/Const^save_89/SaveV2* 
_class
loc:@save_89/Const*
T0
Z
save_89/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
O
"save_89/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_89/RestoreV2	RestoreV2save_89/Constsave_89/RestoreV2/tensor_names"save_89/RestoreV2/shape_and_slices*
dtypes
2
�
save_89/AssignAssignlayer/W/Weightssave_89/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
[
 save_89/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
Q
$save_89/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_89/RestoreV2_1	RestoreV2save_89/Const save_89/RestoreV2_1/tensor_names$save_89/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_89/Assign_1Assignlayer/b/biasessave_89/RestoreV2_1*
validate_shape(*!
_class
loc:@layer/b/biases*
T0*
use_locking(
^
 save_89/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
Q
$save_89/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_89/RestoreV2_2	RestoreV2save_89/Const save_89/RestoreV2_2/tensor_names$save_89/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_89/Assign_2Assignlayer_1/W/Weightssave_89/RestoreV2_2*$
_class
loc:@layer_1/W/Weights*
T0*
validate_shape(*
use_locking(
]
 save_89/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
Q
$save_89/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_89/RestoreV2_3	RestoreV2save_89/Const save_89/RestoreV2_3/tensor_names$save_89/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_89/Assign_3Assignlayer_1/b/biasessave_89/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
e
save_89/restore_allNoOp^save_89/Assign^save_89/Assign_1^save_89/Assign_2^save_89/Assign_3
;
save_90/ConstConst*
dtype0*
valueB Bmodel
�
save_90/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
R
save_90/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B 
�
save_90/SaveV2SaveV2save_90/Constsave_90/SaveV2/tensor_namessave_90/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_90/control_dependencyIdentitysave_90/Const^save_90/SaveV2*
T0* 
_class
loc:@save_90/Const
Z
save_90/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
O
"save_90/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_90/RestoreV2	RestoreV2save_90/Constsave_90/RestoreV2/tensor_names"save_90/RestoreV2/shape_and_slices*
dtypes
2
�
save_90/AssignAssignlayer/W/Weightssave_90/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
[
 save_90/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
Q
$save_90/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_90/RestoreV2_1	RestoreV2save_90/Const save_90/RestoreV2_1/tensor_names$save_90/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_90/Assign_1Assignlayer/b/biasessave_90/RestoreV2_1*
use_locking(*
T0*!
_class
loc:@layer/b/biases*
validate_shape(
^
 save_90/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
Q
$save_90/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_90/RestoreV2_2	RestoreV2save_90/Const save_90/RestoreV2_2/tensor_names$save_90/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_90/Assign_2Assignlayer_1/W/Weightssave_90/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
]
 save_90/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
Q
$save_90/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_90/RestoreV2_3	RestoreV2save_90/Const save_90/RestoreV2_3/tensor_names$save_90/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_90/Assign_3Assignlayer_1/b/biasessave_90/RestoreV2_3*
use_locking(*
T0*#
_class
loc:@layer_1/b/biases*
validate_shape(
e
save_90/restore_allNoOp^save_90/Assign^save_90/Assign_1^save_90/Assign_2^save_90/Assign_3
;
save_91/ConstConst*
valueB Bmodel*
dtype0
�
save_91/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
R
save_91/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B 
�
save_91/SaveV2SaveV2save_91/Constsave_91/SaveV2/tensor_namessave_91/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_91/control_dependencyIdentitysave_91/Const^save_91/SaveV2*
T0* 
_class
loc:@save_91/Const
Z
save_91/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
O
"save_91/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_91/RestoreV2	RestoreV2save_91/Constsave_91/RestoreV2/tensor_names"save_91/RestoreV2/shape_and_slices*
dtypes
2
�
save_91/AssignAssignlayer/W/Weightssave_91/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
[
 save_91/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
Q
$save_91/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_91/RestoreV2_1	RestoreV2save_91/Const save_91/RestoreV2_1/tensor_names$save_91/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_91/Assign_1Assignlayer/b/biasessave_91/RestoreV2_1*!
_class
loc:@layer/b/biases*
T0*
validate_shape(*
use_locking(
^
 save_91/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
Q
$save_91/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_91/RestoreV2_2	RestoreV2save_91/Const save_91/RestoreV2_2/tensor_names$save_91/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_91/Assign_2Assignlayer_1/W/Weightssave_91/RestoreV2_2*$
_class
loc:@layer_1/W/Weights*
T0*
validate_shape(*
use_locking(
]
 save_91/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
Q
$save_91/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_91/RestoreV2_3	RestoreV2save_91/Const save_91/RestoreV2_3/tensor_names$save_91/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_91/Assign_3Assignlayer_1/b/biasessave_91/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
e
save_91/restore_allNoOp^save_91/Assign^save_91/Assign_1^save_91/Assign_2^save_91/Assign_3
;
save_92/ConstConst*
dtype0*
valueB Bmodel
�
save_92/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
R
save_92/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0
�
save_92/SaveV2SaveV2save_92/Constsave_92/SaveV2/tensor_namessave_92/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_92/control_dependencyIdentitysave_92/Const^save_92/SaveV2*
T0* 
_class
loc:@save_92/Const
Z
save_92/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
O
"save_92/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_92/RestoreV2	RestoreV2save_92/Constsave_92/RestoreV2/tensor_names"save_92/RestoreV2/shape_and_slices*
dtypes
2
�
save_92/AssignAssignlayer/W/Weightssave_92/RestoreV2*
use_locking(*
validate_shape(*
T0*"
_class
loc:@layer/W/Weights
[
 save_92/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
Q
$save_92/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_92/RestoreV2_1	RestoreV2save_92/Const save_92/RestoreV2_1/tensor_names$save_92/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_92/Assign_1Assignlayer/b/biasessave_92/RestoreV2_1*
use_locking(*
validate_shape(*
T0*!
_class
loc:@layer/b/biases
^
 save_92/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
Q
$save_92/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_92/RestoreV2_2	RestoreV2save_92/Const save_92/RestoreV2_2/tensor_names$save_92/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_92/Assign_2Assignlayer_1/W/Weightssave_92/RestoreV2_2*
use_locking(*
T0*$
_class
loc:@layer_1/W/Weights*
validate_shape(
]
 save_92/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
Q
$save_92/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_92/RestoreV2_3	RestoreV2save_92/Const save_92/RestoreV2_3/tensor_names$save_92/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_92/Assign_3Assignlayer_1/b/biasessave_92/RestoreV2_3*
use_locking(*
T0*#
_class
loc:@layer_1/b/biases*
validate_shape(
e
save_92/restore_allNoOp^save_92/Assign^save_92/Assign_1^save_92/Assign_2^save_92/Assign_3
;
save_93/ConstConst*
dtype0*
valueB Bmodel
�
save_93/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
R
save_93/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B 
�
save_93/SaveV2SaveV2save_93/Constsave_93/SaveV2/tensor_namessave_93/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_93/control_dependencyIdentitysave_93/Const^save_93/SaveV2*
T0* 
_class
loc:@save_93/Const
Z
save_93/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
O
"save_93/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_93/RestoreV2	RestoreV2save_93/Constsave_93/RestoreV2/tensor_names"save_93/RestoreV2/shape_and_slices*
dtypes
2
�
save_93/AssignAssignlayer/W/Weightssave_93/RestoreV2*
use_locking(*
validate_shape(*
T0*"
_class
loc:@layer/W/Weights
[
 save_93/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
Q
$save_93/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_93/RestoreV2_1	RestoreV2save_93/Const save_93/RestoreV2_1/tensor_names$save_93/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_93/Assign_1Assignlayer/b/biasessave_93/RestoreV2_1*
validate_shape(*!
_class
loc:@layer/b/biases*
T0*
use_locking(
^
 save_93/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
Q
$save_93/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_93/RestoreV2_2	RestoreV2save_93/Const save_93/RestoreV2_2/tensor_names$save_93/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_93/Assign_2Assignlayer_1/W/Weightssave_93/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
]
 save_93/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
Q
$save_93/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_93/RestoreV2_3	RestoreV2save_93/Const save_93/RestoreV2_3/tensor_names$save_93/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_93/Assign_3Assignlayer_1/b/biasessave_93/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
e
save_93/restore_allNoOp^save_93/Assign^save_93/Assign_1^save_93/Assign_2^save_93/Assign_3
;
save_94/ConstConst*
dtype0*
valueB Bmodel
�
save_94/SaveV2/tensor_namesConst*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases*
dtype0
R
save_94/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0
�
save_94/SaveV2SaveV2save_94/Constsave_94/SaveV2/tensor_namessave_94/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_94/control_dependencyIdentitysave_94/Const^save_94/SaveV2* 
_class
loc:@save_94/Const*
T0
Z
save_94/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
O
"save_94/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_94/RestoreV2	RestoreV2save_94/Constsave_94/RestoreV2/tensor_names"save_94/RestoreV2/shape_and_slices*
dtypes
2
�
save_94/AssignAssignlayer/W/Weightssave_94/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
[
 save_94/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
Q
$save_94/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_94/RestoreV2_1	RestoreV2save_94/Const save_94/RestoreV2_1/tensor_names$save_94/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_94/Assign_1Assignlayer/b/biasessave_94/RestoreV2_1*
use_locking(*
validate_shape(*
T0*!
_class
loc:@layer/b/biases
^
 save_94/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
Q
$save_94/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_94/RestoreV2_2	RestoreV2save_94/Const save_94/RestoreV2_2/tensor_names$save_94/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_94/Assign_2Assignlayer_1/W/Weightssave_94/RestoreV2_2*
use_locking(*
T0*$
_class
loc:@layer_1/W/Weights*
validate_shape(
]
 save_94/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
Q
$save_94/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_94/RestoreV2_3	RestoreV2save_94/Const save_94/RestoreV2_3/tensor_names$save_94/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_94/Assign_3Assignlayer_1/b/biasessave_94/RestoreV2_3*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_1/b/biases
e
save_94/restore_allNoOp^save_94/Assign^save_94/Assign_1^save_94/Assign_2^save_94/Assign_3
;
save_95/ConstConst*
dtype0*
valueB Bmodel
�
save_95/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
R
save_95/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B 
�
save_95/SaveV2SaveV2save_95/Constsave_95/SaveV2/tensor_namessave_95/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_95/control_dependencyIdentitysave_95/Const^save_95/SaveV2*
T0* 
_class
loc:@save_95/Const
Z
save_95/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
O
"save_95/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_95/RestoreV2	RestoreV2save_95/Constsave_95/RestoreV2/tensor_names"save_95/RestoreV2/shape_and_slices*
dtypes
2
�
save_95/AssignAssignlayer/W/Weightssave_95/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
[
 save_95/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
Q
$save_95/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_95/RestoreV2_1	RestoreV2save_95/Const save_95/RestoreV2_1/tensor_names$save_95/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_95/Assign_1Assignlayer/b/biasessave_95/RestoreV2_1*
use_locking(*
T0*!
_class
loc:@layer/b/biases*
validate_shape(
^
 save_95/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
Q
$save_95/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_95/RestoreV2_2	RestoreV2save_95/Const save_95/RestoreV2_2/tensor_names$save_95/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_95/Assign_2Assignlayer_1/W/Weightssave_95/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
]
 save_95/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
Q
$save_95/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_95/RestoreV2_3	RestoreV2save_95/Const save_95/RestoreV2_3/tensor_names$save_95/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_95/Assign_3Assignlayer_1/b/biasessave_95/RestoreV2_3*#
_class
loc:@layer_1/b/biases*
T0*
validate_shape(*
use_locking(
e
save_95/restore_allNoOp^save_95/Assign^save_95/Assign_1^save_95/Assign_2^save_95/Assign_3
;
save_96/ConstConst*
dtype0*
valueB Bmodel
�
save_96/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
R
save_96/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0
�
save_96/SaveV2SaveV2save_96/Constsave_96/SaveV2/tensor_namessave_96/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_96/control_dependencyIdentitysave_96/Const^save_96/SaveV2*
T0* 
_class
loc:@save_96/Const
Z
save_96/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
O
"save_96/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_96/RestoreV2	RestoreV2save_96/Constsave_96/RestoreV2/tensor_names"save_96/RestoreV2/shape_and_slices*
dtypes
2
�
save_96/AssignAssignlayer/W/Weightssave_96/RestoreV2*"
_class
loc:@layer/W/Weights*
T0*
validate_shape(*
use_locking(
[
 save_96/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
Q
$save_96/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_96/RestoreV2_1	RestoreV2save_96/Const save_96/RestoreV2_1/tensor_names$save_96/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_96/Assign_1Assignlayer/b/biasessave_96/RestoreV2_1*
validate_shape(*!
_class
loc:@layer/b/biases*
T0*
use_locking(
^
 save_96/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
Q
$save_96/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_96/RestoreV2_2	RestoreV2save_96/Const save_96/RestoreV2_2/tensor_names$save_96/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_96/Assign_2Assignlayer_1/W/Weightssave_96/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
]
 save_96/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
Q
$save_96/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_96/RestoreV2_3	RestoreV2save_96/Const save_96/RestoreV2_3/tensor_names$save_96/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_96/Assign_3Assignlayer_1/b/biasessave_96/RestoreV2_3*#
_class
loc:@layer_1/b/biases*
T0*
validate_shape(*
use_locking(
e
save_96/restore_allNoOp^save_96/Assign^save_96/Assign_1^save_96/Assign_2^save_96/Assign_3
;
save_97/ConstConst*
dtype0*
valueB Bmodel
�
save_97/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
R
save_97/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B 
�
save_97/SaveV2SaveV2save_97/Constsave_97/SaveV2/tensor_namessave_97/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_97/control_dependencyIdentitysave_97/Const^save_97/SaveV2*
T0* 
_class
loc:@save_97/Const
Z
save_97/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
O
"save_97/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_97/RestoreV2	RestoreV2save_97/Constsave_97/RestoreV2/tensor_names"save_97/RestoreV2/shape_and_slices*
dtypes
2
�
save_97/AssignAssignlayer/W/Weightssave_97/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
[
 save_97/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
Q
$save_97/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_97/RestoreV2_1	RestoreV2save_97/Const save_97/RestoreV2_1/tensor_names$save_97/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_97/Assign_1Assignlayer/b/biasessave_97/RestoreV2_1*!
_class
loc:@layer/b/biases*
T0*
validate_shape(*
use_locking(
^
 save_97/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
Q
$save_97/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_97/RestoreV2_2	RestoreV2save_97/Const save_97/RestoreV2_2/tensor_names$save_97/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_97/Assign_2Assignlayer_1/W/Weightssave_97/RestoreV2_2*$
_class
loc:@layer_1/W/Weights*
T0*
validate_shape(*
use_locking(
]
 save_97/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
Q
$save_97/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_97/RestoreV2_3	RestoreV2save_97/Const save_97/RestoreV2_3/tensor_names$save_97/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_97/Assign_3Assignlayer_1/b/biasessave_97/RestoreV2_3*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_1/b/biases
e
save_97/restore_allNoOp^save_97/Assign^save_97/Assign_1^save_97/Assign_2^save_97/Assign_3
;
save_98/ConstConst*
valueB Bmodel*
dtype0
�
save_98/SaveV2/tensor_namesConst*
dtype0*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases
R
save_98/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0
�
save_98/SaveV2SaveV2save_98/Constsave_98/SaveV2/tensor_namessave_98/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_98/control_dependencyIdentitysave_98/Const^save_98/SaveV2* 
_class
loc:@save_98/Const*
T0
Z
save_98/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
O
"save_98/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_98/RestoreV2	RestoreV2save_98/Constsave_98/RestoreV2/tensor_names"save_98/RestoreV2/shape_and_slices*
dtypes
2
�
save_98/AssignAssignlayer/W/Weightssave_98/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
[
 save_98/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
Q
$save_98/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_98/RestoreV2_1	RestoreV2save_98/Const save_98/RestoreV2_1/tensor_names$save_98/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_98/Assign_1Assignlayer/b/biasessave_98/RestoreV2_1*
use_locking(*
T0*!
_class
loc:@layer/b/biases*
validate_shape(
^
 save_98/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
Q
$save_98/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_98/RestoreV2_2	RestoreV2save_98/Const save_98/RestoreV2_2/tensor_names$save_98/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_98/Assign_2Assignlayer_1/W/Weightssave_98/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
]
 save_98/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
Q
$save_98/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_98/RestoreV2_3	RestoreV2save_98/Const save_98/RestoreV2_3/tensor_names$save_98/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_98/Assign_3Assignlayer_1/b/biasessave_98/RestoreV2_3*#
_class
loc:@layer_1/b/biases*
T0*
validate_shape(*
use_locking(
e
save_98/restore_allNoOp^save_98/Assign^save_98/Assign_1^save_98/Assign_2^save_98/Assign_3
;
save_99/ConstConst*
valueB Bmodel*
dtype0
�
save_99/SaveV2/tensor_namesConst*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases*
dtype0
R
save_99/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0
�
save_99/SaveV2SaveV2save_99/Constsave_99/SaveV2/tensor_namessave_99/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
q
save_99/control_dependencyIdentitysave_99/Const^save_99/SaveV2*
T0* 
_class
loc:@save_99/Const
Z
save_99/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
O
"save_99/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_99/RestoreV2	RestoreV2save_99/Constsave_99/RestoreV2/tensor_names"save_99/RestoreV2/shape_and_slices*
dtypes
2
�
save_99/AssignAssignlayer/W/Weightssave_99/RestoreV2*
use_locking(*
validate_shape(*
T0*"
_class
loc:@layer/W/Weights
[
 save_99/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
Q
$save_99/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_99/RestoreV2_1	RestoreV2save_99/Const save_99/RestoreV2_1/tensor_names$save_99/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_99/Assign_1Assignlayer/b/biasessave_99/RestoreV2_1*
use_locking(*
T0*!
_class
loc:@layer/b/biases*
validate_shape(
^
 save_99/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
Q
$save_99/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_99/RestoreV2_2	RestoreV2save_99/Const save_99/RestoreV2_2/tensor_names$save_99/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_99/Assign_2Assignlayer_1/W/Weightssave_99/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
]
 save_99/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
Q
$save_99/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_99/RestoreV2_3	RestoreV2save_99/Const save_99/RestoreV2_3/tensor_names$save_99/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_99/Assign_3Assignlayer_1/b/biasessave_99/RestoreV2_3*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_1/b/biases
e
save_99/restore_allNoOp^save_99/Assign^save_99/Assign_1^save_99/Assign_2^save_99/Assign_3
<
save_100/ConstConst*
dtype0*
valueB Bmodel
�
save_100/SaveV2/tensor_namesConst*Y
valuePBNBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biases*
dtype0
S
 save_100/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0
�
save_100/SaveV2SaveV2save_100/Constsave_100/SaveV2/tensor_names save_100/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biases*
dtypes
2
u
save_100/control_dependencyIdentitysave_100/Const^save_100/SaveV2*!
_class
loc:@save_100/Const*
T0
[
save_100/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_100/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_100/RestoreV2	RestoreV2save_100/Constsave_100/RestoreV2/tensor_names#save_100/RestoreV2/shape_and_slices*
dtypes
2
�
save_100/AssignAssignlayer/W/Weightssave_100/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
\
!save_100/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
R
%save_100/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_100/RestoreV2_1	RestoreV2save_100/Const!save_100/RestoreV2_1/tensor_names%save_100/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_100/Assign_1Assignlayer/b/biasessave_100/RestoreV2_1*
validate_shape(*!
_class
loc:@layer/b/biases*
T0*
use_locking(
_
!save_100/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_100/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_100/RestoreV2_2	RestoreV2save_100/Const!save_100/RestoreV2_2/tensor_names%save_100/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_100/Assign_2Assignlayer_1/W/Weightssave_100/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
^
!save_100/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
R
%save_100/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_100/RestoreV2_3	RestoreV2save_100/Const!save_100/RestoreV2_3/tensor_names%save_100/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_100/Assign_3Assignlayer_1/b/biasessave_100/RestoreV2_3*
use_locking(*
T0*#
_class
loc:@layer_1/b/biases*
validate_shape(
j
save_100/restore_allNoOp^save_100/Assign^save_100/Assign_1^save_100/Assign_2^save_100/Assign_3
:
ArgMax/dimensionConst*
dtype0*
value	B :
M
ArgMaxArgMaxlayer_1/final_resultArgMax/dimension*
T0*

Tidx0
<
ArgMax_1/dimensionConst*
dtype0*
value	B :
L
ArgMax_1ArgMaxinput_1/y_inputArgMax_1/dimension*

Tidx0*
T0
)
EqualEqualArgMaxArgMax_1*
T0	
+
CastCastEqual*

SrcT0
*

DstT0
3
ConstConst*
dtype0*
valueB: 
?
MeanMeanCastConst*
T0*

Tidx0*
	keep_dims( 
8
input_2/x_inputPlaceholder*
shape: *
dtype0
8
input_2/y_inputPlaceholder*
shape: *
dtype0
E
layer_2/W/zerosConst*
valueB	�
*    *
dtype0
f
layer_2/W/Weights
VariableV2*
shape:	�
*
shared_name *
dtype0*
	container 
�
layer_2/W/Weights/AssignAssignlayer_2/W/Weightslayer_2/W/zeros*$
_class
loc:@layer_2/W/Weights*
T0*
validate_shape(*
use_locking(
d
layer_2/W/Weights/readIdentitylayer_2/W/Weights*$
_class
loc:@layer_2/W/Weights*
T0
@
layer_2/b/zerosConst*
valueB
*    *
dtype0
`
layer_2/b/biases
VariableV2*
shape:
*
shared_name *
dtype0*
	container 
�
layer_2/b/biases/AssignAssignlayer_2/b/biaseslayer_2/b/zeros*#
_class
loc:@layer_2/b/biases*
T0*
validate_shape(*
use_locking(
a
layer_2/b/biases/readIdentitylayer_2/b/biases*
T0*#
_class
loc:@layer_2/b/biases
v
layer_2/W_p_b/MatMulMatMulinput_2/x_inputlayer_2/W/Weights/read*
transpose_b( *
transpose_a( *
T0
T
layer_2/W_p_b/Wx_plus_bAddlayer_2/W_p_b/MatMullayer_2/b/biases/read*
T0
A
layer_2/final_resultSoftmaxlayer_2/W_p_b/Wx_plus_b*
T0
0

loss_2/LogLoglayer_2/final_result*
T0
7

loss_2/mulMulinput_2/y_input
loss_2/Log*
T0
A
loss_2/ConstConst*
dtype0*
valueB"       
Q

loss_2/SumSum
loss_2/mulloss_2/Const*

Tidx0*
	keep_dims( *
T0
&

loss_2/NegNeg
loss_2/Sum*
T0
E
train_step_2/gradients/ShapeConst*
dtype0*
valueB 
I
train_step_2/gradients/ConstConst*
valueB
 *  �?*
dtype0
h
train_step_2/gradients/FillFilltrain_step_2/gradients/Shapetrain_step_2/gradients/Const*
T0
W
*train_step_2/gradients/loss_2/Neg_grad/NegNegtrain_step_2/gradients/Fill*
T0
i
4train_step_2/gradients/loss_2/Sum_grad/Reshape/shapeConst*
dtype0*
valueB"      
�
.train_step_2/gradients/loss_2/Sum_grad/ReshapeReshape*train_step_2/gradients/loss_2/Neg_grad/Neg4train_step_2/gradients/loss_2/Sum_grad/Reshape/shape*
Tshape0*
T0
Z
,train_step_2/gradients/loss_2/Sum_grad/ShapeShape
loss_2/mul*
T0*
out_type0
�
+train_step_2/gradients/loss_2/Sum_grad/TileTile.train_step_2/gradients/loss_2/Sum_grad/Reshape,train_step_2/gradients/loss_2/Sum_grad/Shape*

Tmultiples0*
T0
_
,train_step_2/gradients/loss_2/mul_grad/ShapeShapeinput_2/y_input*
out_type0*
T0
\
.train_step_2/gradients/loss_2/mul_grad/Shape_1Shape
loss_2/Log*
T0*
out_type0
�
<train_step_2/gradients/loss_2/mul_grad/BroadcastGradientArgsBroadcastGradientArgs,train_step_2/gradients/loss_2/mul_grad/Shape.train_step_2/gradients/loss_2/mul_grad/Shape_1*
T0
s
*train_step_2/gradients/loss_2/mul_grad/mulMul+train_step_2/gradients/loss_2/Sum_grad/Tile
loss_2/Log*
T0
�
*train_step_2/gradients/loss_2/mul_grad/SumSum*train_step_2/gradients/loss_2/mul_grad/mul<train_step_2/gradients/loss_2/mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
.train_step_2/gradients/loss_2/mul_grad/ReshapeReshape*train_step_2/gradients/loss_2/mul_grad/Sum,train_step_2/gradients/loss_2/mul_grad/Shape*
Tshape0*
T0
z
,train_step_2/gradients/loss_2/mul_grad/mul_1Mulinput_2/y_input+train_step_2/gradients/loss_2/Sum_grad/Tile*
T0
�
,train_step_2/gradients/loss_2/mul_grad/Sum_1Sum,train_step_2/gradients/loss_2/mul_grad/mul_1>train_step_2/gradients/loss_2/mul_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
�
0train_step_2/gradients/loss_2/mul_grad/Reshape_1Reshape,train_step_2/gradients/loss_2/mul_grad/Sum_1.train_step_2/gradients/loss_2/mul_grad/Shape_1*
Tshape0*
T0
�
7train_step_2/gradients/loss_2/mul_grad/tuple/group_depsNoOp/^train_step_2/gradients/loss_2/mul_grad/Reshape1^train_step_2/gradients/loss_2/mul_grad/Reshape_1
�
?train_step_2/gradients/loss_2/mul_grad/tuple/control_dependencyIdentity.train_step_2/gradients/loss_2/mul_grad/Reshape8^train_step_2/gradients/loss_2/mul_grad/tuple/group_deps*
T0*A
_class7
53loc:@train_step_2/gradients/loss_2/mul_grad/Reshape
�
Atrain_step_2/gradients/loss_2/mul_grad/tuple/control_dependency_1Identity0train_step_2/gradients/loss_2/mul_grad/Reshape_18^train_step_2/gradients/loss_2/mul_grad/tuple/group_deps*
T0*C
_class9
75loc:@train_step_2/gradients/loss_2/mul_grad/Reshape_1
�
1train_step_2/gradients/loss_2/Log_grad/Reciprocal
Reciprocallayer_2/final_resultB^train_step_2/gradients/loss_2/mul_grad/tuple/control_dependency_1*
T0
�
*train_step_2/gradients/loss_2/Log_grad/mulMulAtrain_step_2/gradients/loss_2/mul_grad/tuple/control_dependency_11train_step_2/gradients/loss_2/Log_grad/Reciprocal*
T0
�
4train_step_2/gradients/layer_2/final_result_grad/mulMul*train_step_2/gradients/loss_2/Log_grad/mullayer_2/final_result*
T0
t
Ftrain_step_2/gradients/layer_2/final_result_grad/Sum/reduction_indicesConst*
valueB:*
dtype0
�
4train_step_2/gradients/layer_2/final_result_grad/SumSum4train_step_2/gradients/layer_2/final_result_grad/mulFtrain_step_2/gradients/layer_2/final_result_grad/Sum/reduction_indices*

Tidx0*
	keep_dims( *
T0
s
>train_step_2/gradients/layer_2/final_result_grad/Reshape/shapeConst*
valueB"����   *
dtype0
�
8train_step_2/gradients/layer_2/final_result_grad/ReshapeReshape4train_step_2/gradients/layer_2/final_result_grad/Sum>train_step_2/gradients/layer_2/final_result_grad/Reshape/shape*
Tshape0*
T0
�
4train_step_2/gradients/layer_2/final_result_grad/subSub*train_step_2/gradients/loss_2/Log_grad/mul8train_step_2/gradients/layer_2/final_result_grad/Reshape*
T0
�
6train_step_2/gradients/layer_2/final_result_grad/mul_1Mul4train_step_2/gradients/layer_2/final_result_grad/sublayer_2/final_result*
T0
q
9train_step_2/gradients/layer_2/W_p_b/Wx_plus_b_grad/ShapeShapelayer_2/W_p_b/MatMul*
T0*
out_type0
i
;train_step_2/gradients/layer_2/W_p_b/Wx_plus_b_grad/Shape_1Const*
dtype0*
valueB:

�
Itrain_step_2/gradients/layer_2/W_p_b/Wx_plus_b_grad/BroadcastGradientArgsBroadcastGradientArgs9train_step_2/gradients/layer_2/W_p_b/Wx_plus_b_grad/Shape;train_step_2/gradients/layer_2/W_p_b/Wx_plus_b_grad/Shape_1*
T0
�
7train_step_2/gradients/layer_2/W_p_b/Wx_plus_b_grad/SumSum6train_step_2/gradients/layer_2/final_result_grad/mul_1Itrain_step_2/gradients/layer_2/W_p_b/Wx_plus_b_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
;train_step_2/gradients/layer_2/W_p_b/Wx_plus_b_grad/ReshapeReshape7train_step_2/gradients/layer_2/W_p_b/Wx_plus_b_grad/Sum9train_step_2/gradients/layer_2/W_p_b/Wx_plus_b_grad/Shape*
T0*
Tshape0
�
9train_step_2/gradients/layer_2/W_p_b/Wx_plus_b_grad/Sum_1Sum6train_step_2/gradients/layer_2/final_result_grad/mul_1Ktrain_step_2/gradients/layer_2/W_p_b/Wx_plus_b_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
=train_step_2/gradients/layer_2/W_p_b/Wx_plus_b_grad/Reshape_1Reshape9train_step_2/gradients/layer_2/W_p_b/Wx_plus_b_grad/Sum_1;train_step_2/gradients/layer_2/W_p_b/Wx_plus_b_grad/Shape_1*
Tshape0*
T0
�
Dtrain_step_2/gradients/layer_2/W_p_b/Wx_plus_b_grad/tuple/group_depsNoOp<^train_step_2/gradients/layer_2/W_p_b/Wx_plus_b_grad/Reshape>^train_step_2/gradients/layer_2/W_p_b/Wx_plus_b_grad/Reshape_1
�
Ltrain_step_2/gradients/layer_2/W_p_b/Wx_plus_b_grad/tuple/control_dependencyIdentity;train_step_2/gradients/layer_2/W_p_b/Wx_plus_b_grad/ReshapeE^train_step_2/gradients/layer_2/W_p_b/Wx_plus_b_grad/tuple/group_deps*
T0*N
_classD
B@loc:@train_step_2/gradients/layer_2/W_p_b/Wx_plus_b_grad/Reshape
�
Ntrain_step_2/gradients/layer_2/W_p_b/Wx_plus_b_grad/tuple/control_dependency_1Identity=train_step_2/gradients/layer_2/W_p_b/Wx_plus_b_grad/Reshape_1E^train_step_2/gradients/layer_2/W_p_b/Wx_plus_b_grad/tuple/group_deps*
T0*P
_classF
DBloc:@train_step_2/gradients/layer_2/W_p_b/Wx_plus_b_grad/Reshape_1
�
7train_step_2/gradients/layer_2/W_p_b/MatMul_grad/MatMulMatMulLtrain_step_2/gradients/layer_2/W_p_b/Wx_plus_b_grad/tuple/control_dependencylayer_2/W/Weights/read*
transpose_b(*
T0*
transpose_a( 
�
9train_step_2/gradients/layer_2/W_p_b/MatMul_grad/MatMul_1MatMulinput_2/x_inputLtrain_step_2/gradients/layer_2/W_p_b/Wx_plus_b_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0
�
Atrain_step_2/gradients/layer_2/W_p_b/MatMul_grad/tuple/group_depsNoOp8^train_step_2/gradients/layer_2/W_p_b/MatMul_grad/MatMul:^train_step_2/gradients/layer_2/W_p_b/MatMul_grad/MatMul_1
�
Itrain_step_2/gradients/layer_2/W_p_b/MatMul_grad/tuple/control_dependencyIdentity7train_step_2/gradients/layer_2/W_p_b/MatMul_grad/MatMulB^train_step_2/gradients/layer_2/W_p_b/MatMul_grad/tuple/group_deps*J
_class@
><loc:@train_step_2/gradients/layer_2/W_p_b/MatMul_grad/MatMul*
T0
�
Ktrain_step_2/gradients/layer_2/W_p_b/MatMul_grad/tuple/control_dependency_1Identity9train_step_2/gradients/layer_2/W_p_b/MatMul_grad/MatMul_1B^train_step_2/gradients/layer_2/W_p_b/MatMul_grad/tuple/group_deps*L
_classB
@>loc:@train_step_2/gradients/layer_2/W_p_b/MatMul_grad/MatMul_1*
T0
W
*train_step_2/GradientDescent/learning_rateConst*
dtype0*
valueB
 *
�#<
�
Jtrain_step_2/GradientDescent/update_layer_2/W/Weights/ApplyGradientDescentApplyGradientDescentlayer_2/W/Weights*train_step_2/GradientDescent/learning_rateKtrain_step_2/gradients/layer_2/W_p_b/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*$
_class
loc:@layer_2/W/Weights
�
Itrain_step_2/GradientDescent/update_layer_2/b/biases/ApplyGradientDescentApplyGradientDescentlayer_2/b/biases*train_step_2/GradientDescent/learning_rateNtrain_step_2/gradients/layer_2/W_p_b/Wx_plus_b_grad/tuple/control_dependency_1*#
_class
loc:@layer_2/b/biases*
T0*
use_locking( 
�
train_step_2/GradientDescentNoOpK^train_step_2/GradientDescent/update_layer_2/W/Weights/ApplyGradientDescentJ^train_step_2/GradientDescent/update_layer_2/b/biases/ApplyGradientDescent
�
init_2NoOp^layer/W/Weights/Assign^layer/b/biases/Assign^layer_1/W/Weights/Assign^layer_1/b/biases/Assign^layer_2/W/Weights/Assign^layer_2/b/biases/Assign
<
save_101/ConstConst*
valueB Bmodel*
dtype0
�
save_101/SaveV2/tensor_namesConst*
dtype0*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases
W
 save_101/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_101/SaveV2SaveV2save_101/Constsave_101/SaveV2/tensor_names save_101/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_101/control_dependencyIdentitysave_101/Const^save_101/SaveV2*!
_class
loc:@save_101/Const*
T0
[
save_101/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_101/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_101/RestoreV2	RestoreV2save_101/Constsave_101/RestoreV2/tensor_names#save_101/RestoreV2/shape_and_slices*
dtypes
2
�
save_101/AssignAssignlayer/W/Weightssave_101/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
\
!save_101/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_101/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_101/RestoreV2_1	RestoreV2save_101/Const!save_101/RestoreV2_1/tensor_names%save_101/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_101/Assign_1Assignlayer/b/biasessave_101/RestoreV2_1*
validate_shape(*!
_class
loc:@layer/b/biases*
T0*
use_locking(
_
!save_101/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_101/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_101/RestoreV2_2	RestoreV2save_101/Const!save_101/RestoreV2_2/tensor_names%save_101/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_101/Assign_2Assignlayer_1/W/Weightssave_101/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
^
!save_101/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
R
%save_101/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_101/RestoreV2_3	RestoreV2save_101/Const!save_101/RestoreV2_3/tensor_names%save_101/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_101/Assign_3Assignlayer_1/b/biasessave_101/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
_
!save_101/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_101/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
�
save_101/RestoreV2_4	RestoreV2save_101/Const!save_101/RestoreV2_4/tensor_names%save_101/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_101/Assign_4Assignlayer_2/W/Weightssave_101/RestoreV2_4*$
_class
loc:@layer_2/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_101/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_101/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_101/RestoreV2_5	RestoreV2save_101/Const!save_101/RestoreV2_5/tensor_names%save_101/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_101/Assign_5Assignlayer_2/b/biasessave_101/RestoreV2_5*
validate_shape(*#
_class
loc:@layer_2/b/biases*
T0*
use_locking(
�
save_101/restore_allNoOp^save_101/Assign^save_101/Assign_1^save_101/Assign_2^save_101/Assign_3^save_101/Assign_4^save_101/Assign_5
<
save_102/ConstConst*
dtype0*
valueB Bmodel
�
save_102/SaveV2/tensor_namesConst*
dtype0*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases
W
 save_102/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B B B 
�
save_102/SaveV2SaveV2save_102/Constsave_102/SaveV2/tensor_names save_102/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_102/control_dependencyIdentitysave_102/Const^save_102/SaveV2*
T0*!
_class
loc:@save_102/Const
[
save_102/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_102/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_102/RestoreV2	RestoreV2save_102/Constsave_102/RestoreV2/tensor_names#save_102/RestoreV2/shape_and_slices*
dtypes
2
�
save_102/AssignAssignlayer/W/Weightssave_102/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
\
!save_102/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
R
%save_102/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_102/RestoreV2_1	RestoreV2save_102/Const!save_102/RestoreV2_1/tensor_names%save_102/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_102/Assign_1Assignlayer/b/biasessave_102/RestoreV2_1*
use_locking(*
validate_shape(*
T0*!
_class
loc:@layer/b/biases
_
!save_102/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
R
%save_102/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_102/RestoreV2_2	RestoreV2save_102/Const!save_102/RestoreV2_2/tensor_names%save_102/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_102/Assign_2Assignlayer_1/W/Weightssave_102/RestoreV2_2*
use_locking(*
T0*$
_class
loc:@layer_1/W/Weights*
validate_shape(
^
!save_102/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
R
%save_102/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_102/RestoreV2_3	RestoreV2save_102/Const!save_102/RestoreV2_3/tensor_names%save_102/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_102/Assign_3Assignlayer_1/b/biasessave_102/RestoreV2_3*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_1/b/biases
_
!save_102/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_102/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_102/RestoreV2_4	RestoreV2save_102/Const!save_102/RestoreV2_4/tensor_names%save_102/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_102/Assign_4Assignlayer_2/W/Weightssave_102/RestoreV2_4*$
_class
loc:@layer_2/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_102/RestoreV2_5/tensor_namesConst*%
valueBBlayer_2/b/biases*
dtype0
R
%save_102/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_102/RestoreV2_5	RestoreV2save_102/Const!save_102/RestoreV2_5/tensor_names%save_102/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_102/Assign_5Assignlayer_2/b/biasessave_102/RestoreV2_5*#
_class
loc:@layer_2/b/biases*
T0*
validate_shape(*
use_locking(
�
save_102/restore_allNoOp^save_102/Assign^save_102/Assign_1^save_102/Assign_2^save_102/Assign_3^save_102/Assign_4^save_102/Assign_5
<
save_103/ConstConst*
dtype0*
valueB Bmodel
�
save_103/SaveV2/tensor_namesConst*
dtype0*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases
W
 save_103/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_103/SaveV2SaveV2save_103/Constsave_103/SaveV2/tensor_names save_103/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_103/control_dependencyIdentitysave_103/Const^save_103/SaveV2*!
_class
loc:@save_103/Const*
T0
[
save_103/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_103/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_103/RestoreV2	RestoreV2save_103/Constsave_103/RestoreV2/tensor_names#save_103/RestoreV2/shape_and_slices*
dtypes
2
�
save_103/AssignAssignlayer/W/Weightssave_103/RestoreV2*
use_locking(*
validate_shape(*
T0*"
_class
loc:@layer/W/Weights
\
!save_103/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_103/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_103/RestoreV2_1	RestoreV2save_103/Const!save_103/RestoreV2_1/tensor_names%save_103/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_103/Assign_1Assignlayer/b/biasessave_103/RestoreV2_1*
validate_shape(*!
_class
loc:@layer/b/biases*
T0*
use_locking(
_
!save_103/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_103/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_103/RestoreV2_2	RestoreV2save_103/Const!save_103/RestoreV2_2/tensor_names%save_103/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_103/Assign_2Assignlayer_1/W/Weightssave_103/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
^
!save_103/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
R
%save_103/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_103/RestoreV2_3	RestoreV2save_103/Const!save_103/RestoreV2_3/tensor_names%save_103/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_103/Assign_3Assignlayer_1/b/biasessave_103/RestoreV2_3*#
_class
loc:@layer_1/b/biases*
T0*
validate_shape(*
use_locking(
_
!save_103/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_103/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_103/RestoreV2_4	RestoreV2save_103/Const!save_103/RestoreV2_4/tensor_names%save_103/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_103/Assign_4Assignlayer_2/W/Weightssave_103/RestoreV2_4*
validate_shape(*$
_class
loc:@layer_2/W/Weights*
T0*
use_locking(
^
!save_103/RestoreV2_5/tensor_namesConst*%
valueBBlayer_2/b/biases*
dtype0
R
%save_103/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_103/RestoreV2_5	RestoreV2save_103/Const!save_103/RestoreV2_5/tensor_names%save_103/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_103/Assign_5Assignlayer_2/b/biasessave_103/RestoreV2_5*
validate_shape(*#
_class
loc:@layer_2/b/biases*
T0*
use_locking(
�
save_103/restore_allNoOp^save_103/Assign^save_103/Assign_1^save_103/Assign_2^save_103/Assign_3^save_103/Assign_4^save_103/Assign_5
<
save_104/ConstConst*
valueB Bmodel*
dtype0
�
save_104/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_104/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B B B 
�
save_104/SaveV2SaveV2save_104/Constsave_104/SaveV2/tensor_names save_104/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_104/control_dependencyIdentitysave_104/Const^save_104/SaveV2*
T0*!
_class
loc:@save_104/Const
[
save_104/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_104/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_104/RestoreV2	RestoreV2save_104/Constsave_104/RestoreV2/tensor_names#save_104/RestoreV2/shape_and_slices*
dtypes
2
�
save_104/AssignAssignlayer/W/Weightssave_104/RestoreV2*"
_class
loc:@layer/W/Weights*
T0*
validate_shape(*
use_locking(
\
!save_104/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_104/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_104/RestoreV2_1	RestoreV2save_104/Const!save_104/RestoreV2_1/tensor_names%save_104/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_104/Assign_1Assignlayer/b/biasessave_104/RestoreV2_1*
validate_shape(*!
_class
loc:@layer/b/biases*
T0*
use_locking(
_
!save_104/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_104/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_104/RestoreV2_2	RestoreV2save_104/Const!save_104/RestoreV2_2/tensor_names%save_104/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_104/Assign_2Assignlayer_1/W/Weightssave_104/RestoreV2_2*$
_class
loc:@layer_1/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_104/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
R
%save_104/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_104/RestoreV2_3	RestoreV2save_104/Const!save_104/RestoreV2_3/tensor_names%save_104/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_104/Assign_3Assignlayer_1/b/biasessave_104/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
_
!save_104/RestoreV2_4/tensor_namesConst*
dtype0*&
valueBBlayer_2/W/Weights
R
%save_104/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_104/RestoreV2_4	RestoreV2save_104/Const!save_104/RestoreV2_4/tensor_names%save_104/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_104/Assign_4Assignlayer_2/W/Weightssave_104/RestoreV2_4*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_2/W/Weights
^
!save_104/RestoreV2_5/tensor_namesConst*%
valueBBlayer_2/b/biases*
dtype0
R
%save_104/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_104/RestoreV2_5	RestoreV2save_104/Const!save_104/RestoreV2_5/tensor_names%save_104/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_104/Assign_5Assignlayer_2/b/biasessave_104/RestoreV2_5*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_2/b/biases
�
save_104/restore_allNoOp^save_104/Assign^save_104/Assign_1^save_104/Assign_2^save_104/Assign_3^save_104/Assign_4^save_104/Assign_5
<
save_105/ConstConst*
valueB Bmodel*
dtype0
�
save_105/SaveV2/tensor_namesConst*
dtype0*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases
W
 save_105/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B B B 
�
save_105/SaveV2SaveV2save_105/Constsave_105/SaveV2/tensor_names save_105/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_105/control_dependencyIdentitysave_105/Const^save_105/SaveV2*!
_class
loc:@save_105/Const*
T0
[
save_105/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
P
#save_105/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_105/RestoreV2	RestoreV2save_105/Constsave_105/RestoreV2/tensor_names#save_105/RestoreV2/shape_and_slices*
dtypes
2
�
save_105/AssignAssignlayer/W/Weightssave_105/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
\
!save_105/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
R
%save_105/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_105/RestoreV2_1	RestoreV2save_105/Const!save_105/RestoreV2_1/tensor_names%save_105/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_105/Assign_1Assignlayer/b/biasessave_105/RestoreV2_1*
use_locking(*
validate_shape(*
T0*!
_class
loc:@layer/b/biases
_
!save_105/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
R
%save_105/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_105/RestoreV2_2	RestoreV2save_105/Const!save_105/RestoreV2_2/tensor_names%save_105/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_105/Assign_2Assignlayer_1/W/Weightssave_105/RestoreV2_2*
use_locking(*
T0*$
_class
loc:@layer_1/W/Weights*
validate_shape(
^
!save_105/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
R
%save_105/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_105/RestoreV2_3	RestoreV2save_105/Const!save_105/RestoreV2_3/tensor_names%save_105/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_105/Assign_3Assignlayer_1/b/biasessave_105/RestoreV2_3*#
_class
loc:@layer_1/b/biases*
T0*
validate_shape(*
use_locking(
_
!save_105/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_105/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_105/RestoreV2_4	RestoreV2save_105/Const!save_105/RestoreV2_4/tensor_names%save_105/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_105/Assign_4Assignlayer_2/W/Weightssave_105/RestoreV2_4*
use_locking(*
T0*$
_class
loc:@layer_2/W/Weights*
validate_shape(
^
!save_105/RestoreV2_5/tensor_namesConst*%
valueBBlayer_2/b/biases*
dtype0
R
%save_105/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_105/RestoreV2_5	RestoreV2save_105/Const!save_105/RestoreV2_5/tensor_names%save_105/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_105/Assign_5Assignlayer_2/b/biasessave_105/RestoreV2_5*#
_class
loc:@layer_2/b/biases*
T0*
validate_shape(*
use_locking(
�
save_105/restore_allNoOp^save_105/Assign^save_105/Assign_1^save_105/Assign_2^save_105/Assign_3^save_105/Assign_4^save_105/Assign_5
<
save_106/ConstConst*
dtype0*
valueB Bmodel
�
save_106/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_106/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B B B 
�
save_106/SaveV2SaveV2save_106/Constsave_106/SaveV2/tensor_names save_106/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_106/control_dependencyIdentitysave_106/Const^save_106/SaveV2*!
_class
loc:@save_106/Const*
T0
[
save_106/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_106/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_106/RestoreV2	RestoreV2save_106/Constsave_106/RestoreV2/tensor_names#save_106/RestoreV2/shape_and_slices*
dtypes
2
�
save_106/AssignAssignlayer/W/Weightssave_106/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
\
!save_106/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
R
%save_106/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_106/RestoreV2_1	RestoreV2save_106/Const!save_106/RestoreV2_1/tensor_names%save_106/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_106/Assign_1Assignlayer/b/biasessave_106/RestoreV2_1*
validate_shape(*!
_class
loc:@layer/b/biases*
T0*
use_locking(
_
!save_106/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
R
%save_106/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_106/RestoreV2_2	RestoreV2save_106/Const!save_106/RestoreV2_2/tensor_names%save_106/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_106/Assign_2Assignlayer_1/W/Weightssave_106/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
^
!save_106/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
R
%save_106/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_106/RestoreV2_3	RestoreV2save_106/Const!save_106/RestoreV2_3/tensor_names%save_106/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_106/Assign_3Assignlayer_1/b/biasessave_106/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
_
!save_106/RestoreV2_4/tensor_namesConst*
dtype0*&
valueBBlayer_2/W/Weights
R
%save_106/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_106/RestoreV2_4	RestoreV2save_106/Const!save_106/RestoreV2_4/tensor_names%save_106/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_106/Assign_4Assignlayer_2/W/Weightssave_106/RestoreV2_4*$
_class
loc:@layer_2/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_106/RestoreV2_5/tensor_namesConst*%
valueBBlayer_2/b/biases*
dtype0
R
%save_106/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_106/RestoreV2_5	RestoreV2save_106/Const!save_106/RestoreV2_5/tensor_names%save_106/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_106/Assign_5Assignlayer_2/b/biasessave_106/RestoreV2_5*
validate_shape(*#
_class
loc:@layer_2/b/biases*
T0*
use_locking(
�
save_106/restore_allNoOp^save_106/Assign^save_106/Assign_1^save_106/Assign_2^save_106/Assign_3^save_106/Assign_4^save_106/Assign_5
<
save_107/ConstConst*
valueB Bmodel*
dtype0
�
save_107/SaveV2/tensor_namesConst*
dtype0*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases
W
 save_107/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_107/SaveV2SaveV2save_107/Constsave_107/SaveV2/tensor_names save_107/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_107/control_dependencyIdentitysave_107/Const^save_107/SaveV2*
T0*!
_class
loc:@save_107/Const
[
save_107/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_107/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_107/RestoreV2	RestoreV2save_107/Constsave_107/RestoreV2/tensor_names#save_107/RestoreV2/shape_and_slices*
dtypes
2
�
save_107/AssignAssignlayer/W/Weightssave_107/RestoreV2*"
_class
loc:@layer/W/Weights*
T0*
validate_shape(*
use_locking(
\
!save_107/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_107/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_107/RestoreV2_1	RestoreV2save_107/Const!save_107/RestoreV2_1/tensor_names%save_107/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_107/Assign_1Assignlayer/b/biasessave_107/RestoreV2_1*!
_class
loc:@layer/b/biases*
T0*
validate_shape(*
use_locking(
_
!save_107/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_107/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_107/RestoreV2_2	RestoreV2save_107/Const!save_107/RestoreV2_2/tensor_names%save_107/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_107/Assign_2Assignlayer_1/W/Weightssave_107/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
^
!save_107/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
R
%save_107/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_107/RestoreV2_3	RestoreV2save_107/Const!save_107/RestoreV2_3/tensor_names%save_107/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_107/Assign_3Assignlayer_1/b/biasessave_107/RestoreV2_3*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_1/b/biases
_
!save_107/RestoreV2_4/tensor_namesConst*
dtype0*&
valueBBlayer_2/W/Weights
R
%save_107/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_107/RestoreV2_4	RestoreV2save_107/Const!save_107/RestoreV2_4/tensor_names%save_107/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_107/Assign_4Assignlayer_2/W/Weightssave_107/RestoreV2_4*$
_class
loc:@layer_2/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_107/RestoreV2_5/tensor_namesConst*%
valueBBlayer_2/b/biases*
dtype0
R
%save_107/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_107/RestoreV2_5	RestoreV2save_107/Const!save_107/RestoreV2_5/tensor_names%save_107/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_107/Assign_5Assignlayer_2/b/biasessave_107/RestoreV2_5*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_2/b/biases
�
save_107/restore_allNoOp^save_107/Assign^save_107/Assign_1^save_107/Assign_2^save_107/Assign_3^save_107/Assign_4^save_107/Assign_5
<
save_108/ConstConst*
valueB Bmodel*
dtype0
�
save_108/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_108/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_108/SaveV2SaveV2save_108/Constsave_108/SaveV2/tensor_names save_108/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_108/control_dependencyIdentitysave_108/Const^save_108/SaveV2*
T0*!
_class
loc:@save_108/Const
[
save_108/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
P
#save_108/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_108/RestoreV2	RestoreV2save_108/Constsave_108/RestoreV2/tensor_names#save_108/RestoreV2/shape_and_slices*
dtypes
2
�
save_108/AssignAssignlayer/W/Weightssave_108/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
\
!save_108/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
R
%save_108/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_108/RestoreV2_1	RestoreV2save_108/Const!save_108/RestoreV2_1/tensor_names%save_108/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_108/Assign_1Assignlayer/b/biasessave_108/RestoreV2_1*
validate_shape(*!
_class
loc:@layer/b/biases*
T0*
use_locking(
_
!save_108/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_108/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_108/RestoreV2_2	RestoreV2save_108/Const!save_108/RestoreV2_2/tensor_names%save_108/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_108/Assign_2Assignlayer_1/W/Weightssave_108/RestoreV2_2*
validate_shape(*$
_class
loc:@layer_1/W/Weights*
T0*
use_locking(
^
!save_108/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
R
%save_108/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_108/RestoreV2_3	RestoreV2save_108/Const!save_108/RestoreV2_3/tensor_names%save_108/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_108/Assign_3Assignlayer_1/b/biasessave_108/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
_
!save_108/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_108/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_108/RestoreV2_4	RestoreV2save_108/Const!save_108/RestoreV2_4/tensor_names%save_108/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_108/Assign_4Assignlayer_2/W/Weightssave_108/RestoreV2_4*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_2/W/Weights
^
!save_108/RestoreV2_5/tensor_namesConst*%
valueBBlayer_2/b/biases*
dtype0
R
%save_108/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_108/RestoreV2_5	RestoreV2save_108/Const!save_108/RestoreV2_5/tensor_names%save_108/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_108/Assign_5Assignlayer_2/b/biasessave_108/RestoreV2_5*#
_class
loc:@layer_2/b/biases*
T0*
validate_shape(*
use_locking(
�
save_108/restore_allNoOp^save_108/Assign^save_108/Assign_1^save_108/Assign_2^save_108/Assign_3^save_108/Assign_4^save_108/Assign_5
<
save_109/ConstConst*
valueB Bmodel*
dtype0
�
save_109/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_109/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B B B 
�
save_109/SaveV2SaveV2save_109/Constsave_109/SaveV2/tensor_names save_109/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_109/control_dependencyIdentitysave_109/Const^save_109/SaveV2*!
_class
loc:@save_109/Const*
T0
[
save_109/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_109/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_109/RestoreV2	RestoreV2save_109/Constsave_109/RestoreV2/tensor_names#save_109/RestoreV2/shape_and_slices*
dtypes
2
�
save_109/AssignAssignlayer/W/Weightssave_109/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
\
!save_109/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_109/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_109/RestoreV2_1	RestoreV2save_109/Const!save_109/RestoreV2_1/tensor_names%save_109/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_109/Assign_1Assignlayer/b/biasessave_109/RestoreV2_1*
use_locking(*
T0*!
_class
loc:@layer/b/biases*
validate_shape(
_
!save_109/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_109/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_109/RestoreV2_2	RestoreV2save_109/Const!save_109/RestoreV2_2/tensor_names%save_109/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_109/Assign_2Assignlayer_1/W/Weightssave_109/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
^
!save_109/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
R
%save_109/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_109/RestoreV2_3	RestoreV2save_109/Const!save_109/RestoreV2_3/tensor_names%save_109/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_109/Assign_3Assignlayer_1/b/biasessave_109/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
_
!save_109/RestoreV2_4/tensor_namesConst*
dtype0*&
valueBBlayer_2/W/Weights
R
%save_109/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
�
save_109/RestoreV2_4	RestoreV2save_109/Const!save_109/RestoreV2_4/tensor_names%save_109/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_109/Assign_4Assignlayer_2/W/Weightssave_109/RestoreV2_4*$
_class
loc:@layer_2/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_109/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_109/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_109/RestoreV2_5	RestoreV2save_109/Const!save_109/RestoreV2_5/tensor_names%save_109/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_109/Assign_5Assignlayer_2/b/biasessave_109/RestoreV2_5*#
_class
loc:@layer_2/b/biases*
T0*
validate_shape(*
use_locking(
�
save_109/restore_allNoOp^save_109/Assign^save_109/Assign_1^save_109/Assign_2^save_109/Assign_3^save_109/Assign_4^save_109/Assign_5
<
save_110/ConstConst*
valueB Bmodel*
dtype0
�
save_110/SaveV2/tensor_namesConst*
dtype0*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases
W
 save_110/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_110/SaveV2SaveV2save_110/Constsave_110/SaveV2/tensor_names save_110/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_110/control_dependencyIdentitysave_110/Const^save_110/SaveV2*
T0*!
_class
loc:@save_110/Const
[
save_110/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_110/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_110/RestoreV2	RestoreV2save_110/Constsave_110/RestoreV2/tensor_names#save_110/RestoreV2/shape_and_slices*
dtypes
2
�
save_110/AssignAssignlayer/W/Weightssave_110/RestoreV2*
use_locking(*
validate_shape(*
T0*"
_class
loc:@layer/W/Weights
\
!save_110/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_110/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_110/RestoreV2_1	RestoreV2save_110/Const!save_110/RestoreV2_1/tensor_names%save_110/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_110/Assign_1Assignlayer/b/biasessave_110/RestoreV2_1*
use_locking(*
T0*!
_class
loc:@layer/b/biases*
validate_shape(
_
!save_110/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
R
%save_110/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_110/RestoreV2_2	RestoreV2save_110/Const!save_110/RestoreV2_2/tensor_names%save_110/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_110/Assign_2Assignlayer_1/W/Weightssave_110/RestoreV2_2*
use_locking(*
T0*$
_class
loc:@layer_1/W/Weights*
validate_shape(
^
!save_110/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
R
%save_110/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_110/RestoreV2_3	RestoreV2save_110/Const!save_110/RestoreV2_3/tensor_names%save_110/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_110/Assign_3Assignlayer_1/b/biasessave_110/RestoreV2_3*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_1/b/biases
_
!save_110/RestoreV2_4/tensor_namesConst*
dtype0*&
valueBBlayer_2/W/Weights
R
%save_110/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_110/RestoreV2_4	RestoreV2save_110/Const!save_110/RestoreV2_4/tensor_names%save_110/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_110/Assign_4Assignlayer_2/W/Weightssave_110/RestoreV2_4*$
_class
loc:@layer_2/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_110/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_110/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_110/RestoreV2_5	RestoreV2save_110/Const!save_110/RestoreV2_5/tensor_names%save_110/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_110/Assign_5Assignlayer_2/b/biasessave_110/RestoreV2_5*
validate_shape(*#
_class
loc:@layer_2/b/biases*
T0*
use_locking(
�
save_110/restore_allNoOp^save_110/Assign^save_110/Assign_1^save_110/Assign_2^save_110/Assign_3^save_110/Assign_4^save_110/Assign_5
<
save_111/ConstConst*
dtype0*
valueB Bmodel
�
save_111/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_111/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_111/SaveV2SaveV2save_111/Constsave_111/SaveV2/tensor_names save_111/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_111/control_dependencyIdentitysave_111/Const^save_111/SaveV2*!
_class
loc:@save_111/Const*
T0
[
save_111/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
P
#save_111/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_111/RestoreV2	RestoreV2save_111/Constsave_111/RestoreV2/tensor_names#save_111/RestoreV2/shape_and_slices*
dtypes
2
�
save_111/AssignAssignlayer/W/Weightssave_111/RestoreV2*
use_locking(*
validate_shape(*
T0*"
_class
loc:@layer/W/Weights
\
!save_111/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
R
%save_111/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_111/RestoreV2_1	RestoreV2save_111/Const!save_111/RestoreV2_1/tensor_names%save_111/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_111/Assign_1Assignlayer/b/biasessave_111/RestoreV2_1*
use_locking(*
validate_shape(*
T0*!
_class
loc:@layer/b/biases
_
!save_111/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_111/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_111/RestoreV2_2	RestoreV2save_111/Const!save_111/RestoreV2_2/tensor_names%save_111/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_111/Assign_2Assignlayer_1/W/Weightssave_111/RestoreV2_2*
validate_shape(*$
_class
loc:@layer_1/W/Weights*
T0*
use_locking(
^
!save_111/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
R
%save_111/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_111/RestoreV2_3	RestoreV2save_111/Const!save_111/RestoreV2_3/tensor_names%save_111/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_111/Assign_3Assignlayer_1/b/biasessave_111/RestoreV2_3*
use_locking(*
T0*#
_class
loc:@layer_1/b/biases*
validate_shape(
_
!save_111/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_111/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
�
save_111/RestoreV2_4	RestoreV2save_111/Const!save_111/RestoreV2_4/tensor_names%save_111/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_111/Assign_4Assignlayer_2/W/Weightssave_111/RestoreV2_4*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_2/W/Weights
^
!save_111/RestoreV2_5/tensor_namesConst*%
valueBBlayer_2/b/biases*
dtype0
R
%save_111/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_111/RestoreV2_5	RestoreV2save_111/Const!save_111/RestoreV2_5/tensor_names%save_111/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_111/Assign_5Assignlayer_2/b/biasessave_111/RestoreV2_5*#
_class
loc:@layer_2/b/biases*
T0*
validate_shape(*
use_locking(
�
save_111/restore_allNoOp^save_111/Assign^save_111/Assign_1^save_111/Assign_2^save_111/Assign_3^save_111/Assign_4^save_111/Assign_5
<
save_112/ConstConst*
valueB Bmodel*
dtype0
�
save_112/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_112/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_112/SaveV2SaveV2save_112/Constsave_112/SaveV2/tensor_names save_112/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_112/control_dependencyIdentitysave_112/Const^save_112/SaveV2*
T0*!
_class
loc:@save_112/Const
[
save_112/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
P
#save_112/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_112/RestoreV2	RestoreV2save_112/Constsave_112/RestoreV2/tensor_names#save_112/RestoreV2/shape_and_slices*
dtypes
2
�
save_112/AssignAssignlayer/W/Weightssave_112/RestoreV2*"
_class
loc:@layer/W/Weights*
T0*
validate_shape(*
use_locking(
\
!save_112/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
R
%save_112/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_112/RestoreV2_1	RestoreV2save_112/Const!save_112/RestoreV2_1/tensor_names%save_112/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_112/Assign_1Assignlayer/b/biasessave_112/RestoreV2_1*
validate_shape(*!
_class
loc:@layer/b/biases*
T0*
use_locking(
_
!save_112/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_112/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_112/RestoreV2_2	RestoreV2save_112/Const!save_112/RestoreV2_2/tensor_names%save_112/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_112/Assign_2Assignlayer_1/W/Weightssave_112/RestoreV2_2*$
_class
loc:@layer_1/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_112/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
R
%save_112/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_112/RestoreV2_3	RestoreV2save_112/Const!save_112/RestoreV2_3/tensor_names%save_112/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_112/Assign_3Assignlayer_1/b/biasessave_112/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
_
!save_112/RestoreV2_4/tensor_namesConst*
dtype0*&
valueBBlayer_2/W/Weights
R
%save_112/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_112/RestoreV2_4	RestoreV2save_112/Const!save_112/RestoreV2_4/tensor_names%save_112/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_112/Assign_4Assignlayer_2/W/Weightssave_112/RestoreV2_4*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_2/W/Weights
^
!save_112/RestoreV2_5/tensor_namesConst*%
valueBBlayer_2/b/biases*
dtype0
R
%save_112/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_112/RestoreV2_5	RestoreV2save_112/Const!save_112/RestoreV2_5/tensor_names%save_112/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_112/Assign_5Assignlayer_2/b/biasessave_112/RestoreV2_5*
validate_shape(*#
_class
loc:@layer_2/b/biases*
T0*
use_locking(
�
save_112/restore_allNoOp^save_112/Assign^save_112/Assign_1^save_112/Assign_2^save_112/Assign_3^save_112/Assign_4^save_112/Assign_5
<
save_113/ConstConst*
dtype0*
valueB Bmodel
�
save_113/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_113/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B B B 
�
save_113/SaveV2SaveV2save_113/Constsave_113/SaveV2/tensor_names save_113/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_113/control_dependencyIdentitysave_113/Const^save_113/SaveV2*
T0*!
_class
loc:@save_113/Const
[
save_113/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_113/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_113/RestoreV2	RestoreV2save_113/Constsave_113/RestoreV2/tensor_names#save_113/RestoreV2/shape_and_slices*
dtypes
2
�
save_113/AssignAssignlayer/W/Weightssave_113/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
\
!save_113/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
R
%save_113/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_113/RestoreV2_1	RestoreV2save_113/Const!save_113/RestoreV2_1/tensor_names%save_113/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_113/Assign_1Assignlayer/b/biasessave_113/RestoreV2_1*
validate_shape(*!
_class
loc:@layer/b/biases*
T0*
use_locking(
_
!save_113/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_113/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_113/RestoreV2_2	RestoreV2save_113/Const!save_113/RestoreV2_2/tensor_names%save_113/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_113/Assign_2Assignlayer_1/W/Weightssave_113/RestoreV2_2*$
_class
loc:@layer_1/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_113/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
R
%save_113/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_113/RestoreV2_3	RestoreV2save_113/Const!save_113/RestoreV2_3/tensor_names%save_113/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_113/Assign_3Assignlayer_1/b/biasessave_113/RestoreV2_3*#
_class
loc:@layer_1/b/biases*
T0*
validate_shape(*
use_locking(
_
!save_113/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_113/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_113/RestoreV2_4	RestoreV2save_113/Const!save_113/RestoreV2_4/tensor_names%save_113/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_113/Assign_4Assignlayer_2/W/Weightssave_113/RestoreV2_4*
use_locking(*
T0*$
_class
loc:@layer_2/W/Weights*
validate_shape(
^
!save_113/RestoreV2_5/tensor_namesConst*%
valueBBlayer_2/b/biases*
dtype0
R
%save_113/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_113/RestoreV2_5	RestoreV2save_113/Const!save_113/RestoreV2_5/tensor_names%save_113/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_113/Assign_5Assignlayer_2/b/biasessave_113/RestoreV2_5*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_2/b/biases
�
save_113/restore_allNoOp^save_113/Assign^save_113/Assign_1^save_113/Assign_2^save_113/Assign_3^save_113/Assign_4^save_113/Assign_5
<
save_114/ConstConst*
dtype0*
valueB Bmodel
�
save_114/SaveV2/tensor_namesConst*
dtype0*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases
W
 save_114/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_114/SaveV2SaveV2save_114/Constsave_114/SaveV2/tensor_names save_114/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_114/control_dependencyIdentitysave_114/Const^save_114/SaveV2*
T0*!
_class
loc:@save_114/Const
[
save_114/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_114/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_114/RestoreV2	RestoreV2save_114/Constsave_114/RestoreV2/tensor_names#save_114/RestoreV2/shape_and_slices*
dtypes
2
�
save_114/AssignAssignlayer/W/Weightssave_114/RestoreV2*
use_locking(*
validate_shape(*
T0*"
_class
loc:@layer/W/Weights
\
!save_114/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_114/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_114/RestoreV2_1	RestoreV2save_114/Const!save_114/RestoreV2_1/tensor_names%save_114/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_114/Assign_1Assignlayer/b/biasessave_114/RestoreV2_1*!
_class
loc:@layer/b/biases*
T0*
validate_shape(*
use_locking(
_
!save_114/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
R
%save_114/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_114/RestoreV2_2	RestoreV2save_114/Const!save_114/RestoreV2_2/tensor_names%save_114/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_114/Assign_2Assignlayer_1/W/Weightssave_114/RestoreV2_2*$
_class
loc:@layer_1/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_114/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
R
%save_114/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_114/RestoreV2_3	RestoreV2save_114/Const!save_114/RestoreV2_3/tensor_names%save_114/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_114/Assign_3Assignlayer_1/b/biasessave_114/RestoreV2_3*
use_locking(*
T0*#
_class
loc:@layer_1/b/biases*
validate_shape(
_
!save_114/RestoreV2_4/tensor_namesConst*
dtype0*&
valueBBlayer_2/W/Weights
R
%save_114/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_114/RestoreV2_4	RestoreV2save_114/Const!save_114/RestoreV2_4/tensor_names%save_114/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_114/Assign_4Assignlayer_2/W/Weightssave_114/RestoreV2_4*$
_class
loc:@layer_2/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_114/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_114/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_114/RestoreV2_5	RestoreV2save_114/Const!save_114/RestoreV2_5/tensor_names%save_114/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_114/Assign_5Assignlayer_2/b/biasessave_114/RestoreV2_5*
validate_shape(*#
_class
loc:@layer_2/b/biases*
T0*
use_locking(
�
save_114/restore_allNoOp^save_114/Assign^save_114/Assign_1^save_114/Assign_2^save_114/Assign_3^save_114/Assign_4^save_114/Assign_5
<
save_115/ConstConst*
dtype0*
valueB Bmodel
�
save_115/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_115/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_115/SaveV2SaveV2save_115/Constsave_115/SaveV2/tensor_names save_115/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_115/control_dependencyIdentitysave_115/Const^save_115/SaveV2*
T0*!
_class
loc:@save_115/Const
[
save_115/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_115/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_115/RestoreV2	RestoreV2save_115/Constsave_115/RestoreV2/tensor_names#save_115/RestoreV2/shape_and_slices*
dtypes
2
�
save_115/AssignAssignlayer/W/Weightssave_115/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
\
!save_115/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_115/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_115/RestoreV2_1	RestoreV2save_115/Const!save_115/RestoreV2_1/tensor_names%save_115/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_115/Assign_1Assignlayer/b/biasessave_115/RestoreV2_1*
use_locking(*
validate_shape(*
T0*!
_class
loc:@layer/b/biases
_
!save_115/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_115/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_115/RestoreV2_2	RestoreV2save_115/Const!save_115/RestoreV2_2/tensor_names%save_115/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_115/Assign_2Assignlayer_1/W/Weightssave_115/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
^
!save_115/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
R
%save_115/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_115/RestoreV2_3	RestoreV2save_115/Const!save_115/RestoreV2_3/tensor_names%save_115/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_115/Assign_3Assignlayer_1/b/biasessave_115/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
_
!save_115/RestoreV2_4/tensor_namesConst*
dtype0*&
valueBBlayer_2/W/Weights
R
%save_115/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_115/RestoreV2_4	RestoreV2save_115/Const!save_115/RestoreV2_4/tensor_names%save_115/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_115/Assign_4Assignlayer_2/W/Weightssave_115/RestoreV2_4*$
_class
loc:@layer_2/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_115/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_115/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_115/RestoreV2_5	RestoreV2save_115/Const!save_115/RestoreV2_5/tensor_names%save_115/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_115/Assign_5Assignlayer_2/b/biasessave_115/RestoreV2_5*
use_locking(*
T0*#
_class
loc:@layer_2/b/biases*
validate_shape(
�
save_115/restore_allNoOp^save_115/Assign^save_115/Assign_1^save_115/Assign_2^save_115/Assign_3^save_115/Assign_4^save_115/Assign_5
<
save_116/ConstConst*
dtype0*
valueB Bmodel
�
save_116/SaveV2/tensor_namesConst*
dtype0*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases
W
 save_116/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B B B 
�
save_116/SaveV2SaveV2save_116/Constsave_116/SaveV2/tensor_names save_116/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_116/control_dependencyIdentitysave_116/Const^save_116/SaveV2*
T0*!
_class
loc:@save_116/Const
[
save_116/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_116/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_116/RestoreV2	RestoreV2save_116/Constsave_116/RestoreV2/tensor_names#save_116/RestoreV2/shape_and_slices*
dtypes
2
�
save_116/AssignAssignlayer/W/Weightssave_116/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
\
!save_116/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_116/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_116/RestoreV2_1	RestoreV2save_116/Const!save_116/RestoreV2_1/tensor_names%save_116/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_116/Assign_1Assignlayer/b/biasessave_116/RestoreV2_1*
use_locking(*
validate_shape(*
T0*!
_class
loc:@layer/b/biases
_
!save_116/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_116/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_116/RestoreV2_2	RestoreV2save_116/Const!save_116/RestoreV2_2/tensor_names%save_116/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_116/Assign_2Assignlayer_1/W/Weightssave_116/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
^
!save_116/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
R
%save_116/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_116/RestoreV2_3	RestoreV2save_116/Const!save_116/RestoreV2_3/tensor_names%save_116/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_116/Assign_3Assignlayer_1/b/biasessave_116/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
_
!save_116/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_116/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
�
save_116/RestoreV2_4	RestoreV2save_116/Const!save_116/RestoreV2_4/tensor_names%save_116/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_116/Assign_4Assignlayer_2/W/Weightssave_116/RestoreV2_4*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_2/W/Weights
^
!save_116/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_116/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_116/RestoreV2_5	RestoreV2save_116/Const!save_116/RestoreV2_5/tensor_names%save_116/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_116/Assign_5Assignlayer_2/b/biasessave_116/RestoreV2_5*
validate_shape(*#
_class
loc:@layer_2/b/biases*
T0*
use_locking(
�
save_116/restore_allNoOp^save_116/Assign^save_116/Assign_1^save_116/Assign_2^save_116/Assign_3^save_116/Assign_4^save_116/Assign_5
<
save_117/ConstConst*
dtype0*
valueB Bmodel
�
save_117/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_117/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_117/SaveV2SaveV2save_117/Constsave_117/SaveV2/tensor_names save_117/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_117/control_dependencyIdentitysave_117/Const^save_117/SaveV2*!
_class
loc:@save_117/Const*
T0
[
save_117/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_117/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_117/RestoreV2	RestoreV2save_117/Constsave_117/RestoreV2/tensor_names#save_117/RestoreV2/shape_and_slices*
dtypes
2
�
save_117/AssignAssignlayer/W/Weightssave_117/RestoreV2*"
_class
loc:@layer/W/Weights*
T0*
validate_shape(*
use_locking(
\
!save_117/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_117/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_117/RestoreV2_1	RestoreV2save_117/Const!save_117/RestoreV2_1/tensor_names%save_117/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_117/Assign_1Assignlayer/b/biasessave_117/RestoreV2_1*
use_locking(*
T0*!
_class
loc:@layer/b/biases*
validate_shape(
_
!save_117/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_117/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_117/RestoreV2_2	RestoreV2save_117/Const!save_117/RestoreV2_2/tensor_names%save_117/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_117/Assign_2Assignlayer_1/W/Weightssave_117/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
^
!save_117/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
R
%save_117/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_117/RestoreV2_3	RestoreV2save_117/Const!save_117/RestoreV2_3/tensor_names%save_117/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_117/Assign_3Assignlayer_1/b/biasessave_117/RestoreV2_3*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_1/b/biases
_
!save_117/RestoreV2_4/tensor_namesConst*
dtype0*&
valueBBlayer_2/W/Weights
R
%save_117/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_117/RestoreV2_4	RestoreV2save_117/Const!save_117/RestoreV2_4/tensor_names%save_117/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_117/Assign_4Assignlayer_2/W/Weightssave_117/RestoreV2_4*
validate_shape(*$
_class
loc:@layer_2/W/Weights*
T0*
use_locking(
^
!save_117/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_117/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_117/RestoreV2_5	RestoreV2save_117/Const!save_117/RestoreV2_5/tensor_names%save_117/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_117/Assign_5Assignlayer_2/b/biasessave_117/RestoreV2_5*
validate_shape(*#
_class
loc:@layer_2/b/biases*
T0*
use_locking(
�
save_117/restore_allNoOp^save_117/Assign^save_117/Assign_1^save_117/Assign_2^save_117/Assign_3^save_117/Assign_4^save_117/Assign_5
<
save_118/ConstConst*
valueB Bmodel*
dtype0
�
save_118/SaveV2/tensor_namesConst*
dtype0*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases
W
 save_118/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B B B 
�
save_118/SaveV2SaveV2save_118/Constsave_118/SaveV2/tensor_names save_118/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_118/control_dependencyIdentitysave_118/Const^save_118/SaveV2*
T0*!
_class
loc:@save_118/Const
[
save_118/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
P
#save_118/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_118/RestoreV2	RestoreV2save_118/Constsave_118/RestoreV2/tensor_names#save_118/RestoreV2/shape_and_slices*
dtypes
2
�
save_118/AssignAssignlayer/W/Weightssave_118/RestoreV2*
use_locking(*
validate_shape(*
T0*"
_class
loc:@layer/W/Weights
\
!save_118/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_118/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_118/RestoreV2_1	RestoreV2save_118/Const!save_118/RestoreV2_1/tensor_names%save_118/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_118/Assign_1Assignlayer/b/biasessave_118/RestoreV2_1*
use_locking(*
validate_shape(*
T0*!
_class
loc:@layer/b/biases
_
!save_118/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_118/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_118/RestoreV2_2	RestoreV2save_118/Const!save_118/RestoreV2_2/tensor_names%save_118/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_118/Assign_2Assignlayer_1/W/Weightssave_118/RestoreV2_2*
use_locking(*
T0*$
_class
loc:@layer_1/W/Weights*
validate_shape(
^
!save_118/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
R
%save_118/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_118/RestoreV2_3	RestoreV2save_118/Const!save_118/RestoreV2_3/tensor_names%save_118/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_118/Assign_3Assignlayer_1/b/biasessave_118/RestoreV2_3*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_1/b/biases
_
!save_118/RestoreV2_4/tensor_namesConst*
dtype0*&
valueBBlayer_2/W/Weights
R
%save_118/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
�
save_118/RestoreV2_4	RestoreV2save_118/Const!save_118/RestoreV2_4/tensor_names%save_118/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_118/Assign_4Assignlayer_2/W/Weightssave_118/RestoreV2_4*
use_locking(*
T0*$
_class
loc:@layer_2/W/Weights*
validate_shape(
^
!save_118/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_118/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_118/RestoreV2_5	RestoreV2save_118/Const!save_118/RestoreV2_5/tensor_names%save_118/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_118/Assign_5Assignlayer_2/b/biasessave_118/RestoreV2_5*#
_class
loc:@layer_2/b/biases*
T0*
validate_shape(*
use_locking(
�
save_118/restore_allNoOp^save_118/Assign^save_118/Assign_1^save_118/Assign_2^save_118/Assign_3^save_118/Assign_4^save_118/Assign_5
<
save_119/ConstConst*
dtype0*
valueB Bmodel
�
save_119/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_119/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B B B 
�
save_119/SaveV2SaveV2save_119/Constsave_119/SaveV2/tensor_names save_119/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_119/control_dependencyIdentitysave_119/Const^save_119/SaveV2*
T0*!
_class
loc:@save_119/Const
[
save_119/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_119/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_119/RestoreV2	RestoreV2save_119/Constsave_119/RestoreV2/tensor_names#save_119/RestoreV2/shape_and_slices*
dtypes
2
�
save_119/AssignAssignlayer/W/Weightssave_119/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
\
!save_119/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
R
%save_119/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_119/RestoreV2_1	RestoreV2save_119/Const!save_119/RestoreV2_1/tensor_names%save_119/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_119/Assign_1Assignlayer/b/biasessave_119/RestoreV2_1*
use_locking(*
T0*!
_class
loc:@layer/b/biases*
validate_shape(
_
!save_119/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_119/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_119/RestoreV2_2	RestoreV2save_119/Const!save_119/RestoreV2_2/tensor_names%save_119/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_119/Assign_2Assignlayer_1/W/Weightssave_119/RestoreV2_2*
validate_shape(*$
_class
loc:@layer_1/W/Weights*
T0*
use_locking(
^
!save_119/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
R
%save_119/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_119/RestoreV2_3	RestoreV2save_119/Const!save_119/RestoreV2_3/tensor_names%save_119/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_119/Assign_3Assignlayer_1/b/biasessave_119/RestoreV2_3*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_1/b/biases
_
!save_119/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_119/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_119/RestoreV2_4	RestoreV2save_119/Const!save_119/RestoreV2_4/tensor_names%save_119/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_119/Assign_4Assignlayer_2/W/Weightssave_119/RestoreV2_4*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_2/W/Weights
^
!save_119/RestoreV2_5/tensor_namesConst*%
valueBBlayer_2/b/biases*
dtype0
R
%save_119/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_119/RestoreV2_5	RestoreV2save_119/Const!save_119/RestoreV2_5/tensor_names%save_119/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_119/Assign_5Assignlayer_2/b/biasessave_119/RestoreV2_5*#
_class
loc:@layer_2/b/biases*
T0*
validate_shape(*
use_locking(
�
save_119/restore_allNoOp^save_119/Assign^save_119/Assign_1^save_119/Assign_2^save_119/Assign_3^save_119/Assign_4^save_119/Assign_5
<
save_120/ConstConst*
valueB Bmodel*
dtype0
�
save_120/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_120/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B B B 
�
save_120/SaveV2SaveV2save_120/Constsave_120/SaveV2/tensor_names save_120/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_120/control_dependencyIdentitysave_120/Const^save_120/SaveV2*
T0*!
_class
loc:@save_120/Const
[
save_120/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_120/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_120/RestoreV2	RestoreV2save_120/Constsave_120/RestoreV2/tensor_names#save_120/RestoreV2/shape_and_slices*
dtypes
2
�
save_120/AssignAssignlayer/W/Weightssave_120/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
\
!save_120/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
R
%save_120/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_120/RestoreV2_1	RestoreV2save_120/Const!save_120/RestoreV2_1/tensor_names%save_120/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_120/Assign_1Assignlayer/b/biasessave_120/RestoreV2_1*
validate_shape(*!
_class
loc:@layer/b/biases*
T0*
use_locking(
_
!save_120/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_120/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_120/RestoreV2_2	RestoreV2save_120/Const!save_120/RestoreV2_2/tensor_names%save_120/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_120/Assign_2Assignlayer_1/W/Weightssave_120/RestoreV2_2*
validate_shape(*$
_class
loc:@layer_1/W/Weights*
T0*
use_locking(
^
!save_120/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
R
%save_120/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_120/RestoreV2_3	RestoreV2save_120/Const!save_120/RestoreV2_3/tensor_names%save_120/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_120/Assign_3Assignlayer_1/b/biasessave_120/RestoreV2_3*#
_class
loc:@layer_1/b/biases*
T0*
validate_shape(*
use_locking(
_
!save_120/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_120/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
�
save_120/RestoreV2_4	RestoreV2save_120/Const!save_120/RestoreV2_4/tensor_names%save_120/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_120/Assign_4Assignlayer_2/W/Weightssave_120/RestoreV2_4*
validate_shape(*$
_class
loc:@layer_2/W/Weights*
T0*
use_locking(
^
!save_120/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_120/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_120/RestoreV2_5	RestoreV2save_120/Const!save_120/RestoreV2_5/tensor_names%save_120/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_120/Assign_5Assignlayer_2/b/biasessave_120/RestoreV2_5*
use_locking(*
T0*#
_class
loc:@layer_2/b/biases*
validate_shape(
�
save_120/restore_allNoOp^save_120/Assign^save_120/Assign_1^save_120/Assign_2^save_120/Assign_3^save_120/Assign_4^save_120/Assign_5
<
save_121/ConstConst*
dtype0*
valueB Bmodel
�
save_121/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_121/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_121/SaveV2SaveV2save_121/Constsave_121/SaveV2/tensor_names save_121/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_121/control_dependencyIdentitysave_121/Const^save_121/SaveV2*
T0*!
_class
loc:@save_121/Const
[
save_121/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_121/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_121/RestoreV2	RestoreV2save_121/Constsave_121/RestoreV2/tensor_names#save_121/RestoreV2/shape_and_slices*
dtypes
2
�
save_121/AssignAssignlayer/W/Weightssave_121/RestoreV2*"
_class
loc:@layer/W/Weights*
T0*
validate_shape(*
use_locking(
\
!save_121/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
R
%save_121/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_121/RestoreV2_1	RestoreV2save_121/Const!save_121/RestoreV2_1/tensor_names%save_121/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_121/Assign_1Assignlayer/b/biasessave_121/RestoreV2_1*
validate_shape(*!
_class
loc:@layer/b/biases*
T0*
use_locking(
_
!save_121/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_121/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_121/RestoreV2_2	RestoreV2save_121/Const!save_121/RestoreV2_2/tensor_names%save_121/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_121/Assign_2Assignlayer_1/W/Weightssave_121/RestoreV2_2*$
_class
loc:@layer_1/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_121/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
R
%save_121/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_121/RestoreV2_3	RestoreV2save_121/Const!save_121/RestoreV2_3/tensor_names%save_121/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_121/Assign_3Assignlayer_1/b/biasessave_121/RestoreV2_3*
use_locking(*
T0*#
_class
loc:@layer_1/b/biases*
validate_shape(
_
!save_121/RestoreV2_4/tensor_namesConst*
dtype0*&
valueBBlayer_2/W/Weights
R
%save_121/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_121/RestoreV2_4	RestoreV2save_121/Const!save_121/RestoreV2_4/tensor_names%save_121/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_121/Assign_4Assignlayer_2/W/Weightssave_121/RestoreV2_4*
validate_shape(*$
_class
loc:@layer_2/W/Weights*
T0*
use_locking(
^
!save_121/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_121/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_121/RestoreV2_5	RestoreV2save_121/Const!save_121/RestoreV2_5/tensor_names%save_121/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_121/Assign_5Assignlayer_2/b/biasessave_121/RestoreV2_5*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_2/b/biases
�
save_121/restore_allNoOp^save_121/Assign^save_121/Assign_1^save_121/Assign_2^save_121/Assign_3^save_121/Assign_4^save_121/Assign_5
<
save_122/ConstConst*
dtype0*
valueB Bmodel
�
save_122/SaveV2/tensor_namesConst*
dtype0*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases
W
 save_122/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B B B 
�
save_122/SaveV2SaveV2save_122/Constsave_122/SaveV2/tensor_names save_122/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_122/control_dependencyIdentitysave_122/Const^save_122/SaveV2*
T0*!
_class
loc:@save_122/Const
[
save_122/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_122/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_122/RestoreV2	RestoreV2save_122/Constsave_122/RestoreV2/tensor_names#save_122/RestoreV2/shape_and_slices*
dtypes
2
�
save_122/AssignAssignlayer/W/Weightssave_122/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
\
!save_122/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
R
%save_122/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_122/RestoreV2_1	RestoreV2save_122/Const!save_122/RestoreV2_1/tensor_names%save_122/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_122/Assign_1Assignlayer/b/biasessave_122/RestoreV2_1*!
_class
loc:@layer/b/biases*
T0*
validate_shape(*
use_locking(
_
!save_122/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
R
%save_122/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_122/RestoreV2_2	RestoreV2save_122/Const!save_122/RestoreV2_2/tensor_names%save_122/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_122/Assign_2Assignlayer_1/W/Weightssave_122/RestoreV2_2*
use_locking(*
T0*$
_class
loc:@layer_1/W/Weights*
validate_shape(
^
!save_122/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
R
%save_122/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_122/RestoreV2_3	RestoreV2save_122/Const!save_122/RestoreV2_3/tensor_names%save_122/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_122/Assign_3Assignlayer_1/b/biasessave_122/RestoreV2_3*#
_class
loc:@layer_1/b/biases*
T0*
validate_shape(*
use_locking(
_
!save_122/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_122/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
�
save_122/RestoreV2_4	RestoreV2save_122/Const!save_122/RestoreV2_4/tensor_names%save_122/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_122/Assign_4Assignlayer_2/W/Weightssave_122/RestoreV2_4*
use_locking(*
T0*$
_class
loc:@layer_2/W/Weights*
validate_shape(
^
!save_122/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_122/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_122/RestoreV2_5	RestoreV2save_122/Const!save_122/RestoreV2_5/tensor_names%save_122/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_122/Assign_5Assignlayer_2/b/biasessave_122/RestoreV2_5*
validate_shape(*#
_class
loc:@layer_2/b/biases*
T0*
use_locking(
�
save_122/restore_allNoOp^save_122/Assign^save_122/Assign_1^save_122/Assign_2^save_122/Assign_3^save_122/Assign_4^save_122/Assign_5
<
save_123/ConstConst*
dtype0*
valueB Bmodel
�
save_123/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_123/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B B B 
�
save_123/SaveV2SaveV2save_123/Constsave_123/SaveV2/tensor_names save_123/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_123/control_dependencyIdentitysave_123/Const^save_123/SaveV2*
T0*!
_class
loc:@save_123/Const
[
save_123/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
P
#save_123/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_123/RestoreV2	RestoreV2save_123/Constsave_123/RestoreV2/tensor_names#save_123/RestoreV2/shape_and_slices*
dtypes
2
�
save_123/AssignAssignlayer/W/Weightssave_123/RestoreV2*"
_class
loc:@layer/W/Weights*
T0*
validate_shape(*
use_locking(
\
!save_123/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
R
%save_123/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_123/RestoreV2_1	RestoreV2save_123/Const!save_123/RestoreV2_1/tensor_names%save_123/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_123/Assign_1Assignlayer/b/biasessave_123/RestoreV2_1*!
_class
loc:@layer/b/biases*
T0*
validate_shape(*
use_locking(
_
!save_123/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
R
%save_123/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_123/RestoreV2_2	RestoreV2save_123/Const!save_123/RestoreV2_2/tensor_names%save_123/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_123/Assign_2Assignlayer_1/W/Weightssave_123/RestoreV2_2*$
_class
loc:@layer_1/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_123/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
R
%save_123/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_123/RestoreV2_3	RestoreV2save_123/Const!save_123/RestoreV2_3/tensor_names%save_123/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_123/Assign_3Assignlayer_1/b/biasessave_123/RestoreV2_3*
use_locking(*
T0*#
_class
loc:@layer_1/b/biases*
validate_shape(
_
!save_123/RestoreV2_4/tensor_namesConst*
dtype0*&
valueBBlayer_2/W/Weights
R
%save_123/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_123/RestoreV2_4	RestoreV2save_123/Const!save_123/RestoreV2_4/tensor_names%save_123/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_123/Assign_4Assignlayer_2/W/Weightssave_123/RestoreV2_4*$
_class
loc:@layer_2/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_123/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_123/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_123/RestoreV2_5	RestoreV2save_123/Const!save_123/RestoreV2_5/tensor_names%save_123/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_123/Assign_5Assignlayer_2/b/biasessave_123/RestoreV2_5*
use_locking(*
T0*#
_class
loc:@layer_2/b/biases*
validate_shape(
�
save_123/restore_allNoOp^save_123/Assign^save_123/Assign_1^save_123/Assign_2^save_123/Assign_3^save_123/Assign_4^save_123/Assign_5
<
save_124/ConstConst*
dtype0*
valueB Bmodel
�
save_124/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_124/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B B B 
�
save_124/SaveV2SaveV2save_124/Constsave_124/SaveV2/tensor_names save_124/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_124/control_dependencyIdentitysave_124/Const^save_124/SaveV2*!
_class
loc:@save_124/Const*
T0
[
save_124/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
P
#save_124/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_124/RestoreV2	RestoreV2save_124/Constsave_124/RestoreV2/tensor_names#save_124/RestoreV2/shape_and_slices*
dtypes
2
�
save_124/AssignAssignlayer/W/Weightssave_124/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
\
!save_124/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
R
%save_124/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_124/RestoreV2_1	RestoreV2save_124/Const!save_124/RestoreV2_1/tensor_names%save_124/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_124/Assign_1Assignlayer/b/biasessave_124/RestoreV2_1*
use_locking(*
validate_shape(*
T0*!
_class
loc:@layer/b/biases
_
!save_124/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
R
%save_124/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_124/RestoreV2_2	RestoreV2save_124/Const!save_124/RestoreV2_2/tensor_names%save_124/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_124/Assign_2Assignlayer_1/W/Weightssave_124/RestoreV2_2*
validate_shape(*$
_class
loc:@layer_1/W/Weights*
T0*
use_locking(
^
!save_124/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
R
%save_124/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_124/RestoreV2_3	RestoreV2save_124/Const!save_124/RestoreV2_3/tensor_names%save_124/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_124/Assign_3Assignlayer_1/b/biasessave_124/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
_
!save_124/RestoreV2_4/tensor_namesConst*
dtype0*&
valueBBlayer_2/W/Weights
R
%save_124/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
�
save_124/RestoreV2_4	RestoreV2save_124/Const!save_124/RestoreV2_4/tensor_names%save_124/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_124/Assign_4Assignlayer_2/W/Weightssave_124/RestoreV2_4*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_2/W/Weights
^
!save_124/RestoreV2_5/tensor_namesConst*%
valueBBlayer_2/b/biases*
dtype0
R
%save_124/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_124/RestoreV2_5	RestoreV2save_124/Const!save_124/RestoreV2_5/tensor_names%save_124/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_124/Assign_5Assignlayer_2/b/biasessave_124/RestoreV2_5*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_2/b/biases
�
save_124/restore_allNoOp^save_124/Assign^save_124/Assign_1^save_124/Assign_2^save_124/Assign_3^save_124/Assign_4^save_124/Assign_5
<
save_125/ConstConst*
valueB Bmodel*
dtype0
�
save_125/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_125/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_125/SaveV2SaveV2save_125/Constsave_125/SaveV2/tensor_names save_125/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_125/control_dependencyIdentitysave_125/Const^save_125/SaveV2*!
_class
loc:@save_125/Const*
T0
[
save_125/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
P
#save_125/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_125/RestoreV2	RestoreV2save_125/Constsave_125/RestoreV2/tensor_names#save_125/RestoreV2/shape_and_slices*
dtypes
2
�
save_125/AssignAssignlayer/W/Weightssave_125/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
\
!save_125/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_125/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_125/RestoreV2_1	RestoreV2save_125/Const!save_125/RestoreV2_1/tensor_names%save_125/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_125/Assign_1Assignlayer/b/biasessave_125/RestoreV2_1*
validate_shape(*!
_class
loc:@layer/b/biases*
T0*
use_locking(
_
!save_125/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_125/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_125/RestoreV2_2	RestoreV2save_125/Const!save_125/RestoreV2_2/tensor_names%save_125/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_125/Assign_2Assignlayer_1/W/Weightssave_125/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
^
!save_125/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
R
%save_125/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_125/RestoreV2_3	RestoreV2save_125/Const!save_125/RestoreV2_3/tensor_names%save_125/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_125/Assign_3Assignlayer_1/b/biasessave_125/RestoreV2_3*#
_class
loc:@layer_1/b/biases*
T0*
validate_shape(*
use_locking(
_
!save_125/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_125/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
�
save_125/RestoreV2_4	RestoreV2save_125/Const!save_125/RestoreV2_4/tensor_names%save_125/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_125/Assign_4Assignlayer_2/W/Weightssave_125/RestoreV2_4*$
_class
loc:@layer_2/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_125/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_125/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_125/RestoreV2_5	RestoreV2save_125/Const!save_125/RestoreV2_5/tensor_names%save_125/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_125/Assign_5Assignlayer_2/b/biasessave_125/RestoreV2_5*
validate_shape(*#
_class
loc:@layer_2/b/biases*
T0*
use_locking(
�
save_125/restore_allNoOp^save_125/Assign^save_125/Assign_1^save_125/Assign_2^save_125/Assign_3^save_125/Assign_4^save_125/Assign_5
<
save_126/ConstConst*
valueB Bmodel*
dtype0
�
save_126/SaveV2/tensor_namesConst*
dtype0*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases
W
 save_126/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_126/SaveV2SaveV2save_126/Constsave_126/SaveV2/tensor_names save_126/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_126/control_dependencyIdentitysave_126/Const^save_126/SaveV2*!
_class
loc:@save_126/Const*
T0
[
save_126/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_126/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_126/RestoreV2	RestoreV2save_126/Constsave_126/RestoreV2/tensor_names#save_126/RestoreV2/shape_and_slices*
dtypes
2
�
save_126/AssignAssignlayer/W/Weightssave_126/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
\
!save_126/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_126/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_126/RestoreV2_1	RestoreV2save_126/Const!save_126/RestoreV2_1/tensor_names%save_126/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_126/Assign_1Assignlayer/b/biasessave_126/RestoreV2_1*
validate_shape(*!
_class
loc:@layer/b/biases*
T0*
use_locking(
_
!save_126/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_126/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_126/RestoreV2_2	RestoreV2save_126/Const!save_126/RestoreV2_2/tensor_names%save_126/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_126/Assign_2Assignlayer_1/W/Weightssave_126/RestoreV2_2*$
_class
loc:@layer_1/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_126/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
R
%save_126/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_126/RestoreV2_3	RestoreV2save_126/Const!save_126/RestoreV2_3/tensor_names%save_126/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_126/Assign_3Assignlayer_1/b/biasessave_126/RestoreV2_3*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_1/b/biases
_
!save_126/RestoreV2_4/tensor_namesConst*
dtype0*&
valueBBlayer_2/W/Weights
R
%save_126/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_126/RestoreV2_4	RestoreV2save_126/Const!save_126/RestoreV2_4/tensor_names%save_126/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_126/Assign_4Assignlayer_2/W/Weightssave_126/RestoreV2_4*$
_class
loc:@layer_2/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_126/RestoreV2_5/tensor_namesConst*%
valueBBlayer_2/b/biases*
dtype0
R
%save_126/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_126/RestoreV2_5	RestoreV2save_126/Const!save_126/RestoreV2_5/tensor_names%save_126/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_126/Assign_5Assignlayer_2/b/biasessave_126/RestoreV2_5*#
_class
loc:@layer_2/b/biases*
T0*
validate_shape(*
use_locking(
�
save_126/restore_allNoOp^save_126/Assign^save_126/Assign_1^save_126/Assign_2^save_126/Assign_3^save_126/Assign_4^save_126/Assign_5
<
save_127/ConstConst*
dtype0*
valueB Bmodel
�
save_127/SaveV2/tensor_namesConst*
dtype0*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases
W
 save_127/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B B B 
�
save_127/SaveV2SaveV2save_127/Constsave_127/SaveV2/tensor_names save_127/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_127/control_dependencyIdentitysave_127/Const^save_127/SaveV2*!
_class
loc:@save_127/Const*
T0
[
save_127/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
P
#save_127/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_127/RestoreV2	RestoreV2save_127/Constsave_127/RestoreV2/tensor_names#save_127/RestoreV2/shape_and_slices*
dtypes
2
�
save_127/AssignAssignlayer/W/Weightssave_127/RestoreV2*"
_class
loc:@layer/W/Weights*
T0*
validate_shape(*
use_locking(
\
!save_127/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
R
%save_127/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_127/RestoreV2_1	RestoreV2save_127/Const!save_127/RestoreV2_1/tensor_names%save_127/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_127/Assign_1Assignlayer/b/biasessave_127/RestoreV2_1*
use_locking(*
validate_shape(*
T0*!
_class
loc:@layer/b/biases
_
!save_127/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
R
%save_127/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_127/RestoreV2_2	RestoreV2save_127/Const!save_127/RestoreV2_2/tensor_names%save_127/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_127/Assign_2Assignlayer_1/W/Weightssave_127/RestoreV2_2*$
_class
loc:@layer_1/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_127/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
R
%save_127/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_127/RestoreV2_3	RestoreV2save_127/Const!save_127/RestoreV2_3/tensor_names%save_127/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_127/Assign_3Assignlayer_1/b/biasessave_127/RestoreV2_3*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_1/b/biases
_
!save_127/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_127/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
�
save_127/RestoreV2_4	RestoreV2save_127/Const!save_127/RestoreV2_4/tensor_names%save_127/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_127/Assign_4Assignlayer_2/W/Weightssave_127/RestoreV2_4*
validate_shape(*$
_class
loc:@layer_2/W/Weights*
T0*
use_locking(
^
!save_127/RestoreV2_5/tensor_namesConst*%
valueBBlayer_2/b/biases*
dtype0
R
%save_127/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_127/RestoreV2_5	RestoreV2save_127/Const!save_127/RestoreV2_5/tensor_names%save_127/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_127/Assign_5Assignlayer_2/b/biasessave_127/RestoreV2_5*
validate_shape(*#
_class
loc:@layer_2/b/biases*
T0*
use_locking(
�
save_127/restore_allNoOp^save_127/Assign^save_127/Assign_1^save_127/Assign_2^save_127/Assign_3^save_127/Assign_4^save_127/Assign_5
<
save_128/ConstConst*
dtype0*
valueB Bmodel
�
save_128/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_128/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B B B 
�
save_128/SaveV2SaveV2save_128/Constsave_128/SaveV2/tensor_names save_128/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_128/control_dependencyIdentitysave_128/Const^save_128/SaveV2*
T0*!
_class
loc:@save_128/Const
[
save_128/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
P
#save_128/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_128/RestoreV2	RestoreV2save_128/Constsave_128/RestoreV2/tensor_names#save_128/RestoreV2/shape_and_slices*
dtypes
2
�
save_128/AssignAssignlayer/W/Weightssave_128/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
\
!save_128/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_128/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_128/RestoreV2_1	RestoreV2save_128/Const!save_128/RestoreV2_1/tensor_names%save_128/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_128/Assign_1Assignlayer/b/biasessave_128/RestoreV2_1*
use_locking(*
validate_shape(*
T0*!
_class
loc:@layer/b/biases
_
!save_128/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_128/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_128/RestoreV2_2	RestoreV2save_128/Const!save_128/RestoreV2_2/tensor_names%save_128/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_128/Assign_2Assignlayer_1/W/Weightssave_128/RestoreV2_2*
use_locking(*
T0*$
_class
loc:@layer_1/W/Weights*
validate_shape(
^
!save_128/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
R
%save_128/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_128/RestoreV2_3	RestoreV2save_128/Const!save_128/RestoreV2_3/tensor_names%save_128/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_128/Assign_3Assignlayer_1/b/biasessave_128/RestoreV2_3*
use_locking(*
T0*#
_class
loc:@layer_1/b/biases*
validate_shape(
_
!save_128/RestoreV2_4/tensor_namesConst*
dtype0*&
valueBBlayer_2/W/Weights
R
%save_128/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
�
save_128/RestoreV2_4	RestoreV2save_128/Const!save_128/RestoreV2_4/tensor_names%save_128/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_128/Assign_4Assignlayer_2/W/Weightssave_128/RestoreV2_4*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_2/W/Weights
^
!save_128/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_128/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_128/RestoreV2_5	RestoreV2save_128/Const!save_128/RestoreV2_5/tensor_names%save_128/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_128/Assign_5Assignlayer_2/b/biasessave_128/RestoreV2_5*
use_locking(*
T0*#
_class
loc:@layer_2/b/biases*
validate_shape(
�
save_128/restore_allNoOp^save_128/Assign^save_128/Assign_1^save_128/Assign_2^save_128/Assign_3^save_128/Assign_4^save_128/Assign_5
<
save_129/ConstConst*
valueB Bmodel*
dtype0
�
save_129/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_129/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_129/SaveV2SaveV2save_129/Constsave_129/SaveV2/tensor_names save_129/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_129/control_dependencyIdentitysave_129/Const^save_129/SaveV2*
T0*!
_class
loc:@save_129/Const
[
save_129/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_129/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_129/RestoreV2	RestoreV2save_129/Constsave_129/RestoreV2/tensor_names#save_129/RestoreV2/shape_and_slices*
dtypes
2
�
save_129/AssignAssignlayer/W/Weightssave_129/RestoreV2*
use_locking(*
validate_shape(*
T0*"
_class
loc:@layer/W/Weights
\
!save_129/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
R
%save_129/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_129/RestoreV2_1	RestoreV2save_129/Const!save_129/RestoreV2_1/tensor_names%save_129/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_129/Assign_1Assignlayer/b/biasessave_129/RestoreV2_1*
use_locking(*
validate_shape(*
T0*!
_class
loc:@layer/b/biases
_
!save_129/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_129/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_129/RestoreV2_2	RestoreV2save_129/Const!save_129/RestoreV2_2/tensor_names%save_129/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_129/Assign_2Assignlayer_1/W/Weightssave_129/RestoreV2_2*$
_class
loc:@layer_1/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_129/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
R
%save_129/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_129/RestoreV2_3	RestoreV2save_129/Const!save_129/RestoreV2_3/tensor_names%save_129/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_129/Assign_3Assignlayer_1/b/biasessave_129/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
_
!save_129/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_129/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_129/RestoreV2_4	RestoreV2save_129/Const!save_129/RestoreV2_4/tensor_names%save_129/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_129/Assign_4Assignlayer_2/W/Weightssave_129/RestoreV2_4*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_2/W/Weights
^
!save_129/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_129/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_129/RestoreV2_5	RestoreV2save_129/Const!save_129/RestoreV2_5/tensor_names%save_129/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_129/Assign_5Assignlayer_2/b/biasessave_129/RestoreV2_5*
validate_shape(*#
_class
loc:@layer_2/b/biases*
T0*
use_locking(
�
save_129/restore_allNoOp^save_129/Assign^save_129/Assign_1^save_129/Assign_2^save_129/Assign_3^save_129/Assign_4^save_129/Assign_5
<
save_130/ConstConst*
valueB Bmodel*
dtype0
�
save_130/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_130/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_130/SaveV2SaveV2save_130/Constsave_130/SaveV2/tensor_names save_130/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_130/control_dependencyIdentitysave_130/Const^save_130/SaveV2*!
_class
loc:@save_130/Const*
T0
[
save_130/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_130/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_130/RestoreV2	RestoreV2save_130/Constsave_130/RestoreV2/tensor_names#save_130/RestoreV2/shape_and_slices*
dtypes
2
�
save_130/AssignAssignlayer/W/Weightssave_130/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
\
!save_130/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_130/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_130/RestoreV2_1	RestoreV2save_130/Const!save_130/RestoreV2_1/tensor_names%save_130/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_130/Assign_1Assignlayer/b/biasessave_130/RestoreV2_1*
use_locking(*
validate_shape(*
T0*!
_class
loc:@layer/b/biases
_
!save_130/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_130/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_130/RestoreV2_2	RestoreV2save_130/Const!save_130/RestoreV2_2/tensor_names%save_130/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_130/Assign_2Assignlayer_1/W/Weightssave_130/RestoreV2_2*
validate_shape(*$
_class
loc:@layer_1/W/Weights*
T0*
use_locking(
^
!save_130/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
R
%save_130/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_130/RestoreV2_3	RestoreV2save_130/Const!save_130/RestoreV2_3/tensor_names%save_130/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_130/Assign_3Assignlayer_1/b/biasessave_130/RestoreV2_3*
use_locking(*
T0*#
_class
loc:@layer_1/b/biases*
validate_shape(
_
!save_130/RestoreV2_4/tensor_namesConst*
dtype0*&
valueBBlayer_2/W/Weights
R
%save_130/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_130/RestoreV2_4	RestoreV2save_130/Const!save_130/RestoreV2_4/tensor_names%save_130/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_130/Assign_4Assignlayer_2/W/Weightssave_130/RestoreV2_4*$
_class
loc:@layer_2/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_130/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_130/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_130/RestoreV2_5	RestoreV2save_130/Const!save_130/RestoreV2_5/tensor_names%save_130/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_130/Assign_5Assignlayer_2/b/biasessave_130/RestoreV2_5*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_2/b/biases
�
save_130/restore_allNoOp^save_130/Assign^save_130/Assign_1^save_130/Assign_2^save_130/Assign_3^save_130/Assign_4^save_130/Assign_5
<
save_131/ConstConst*
valueB Bmodel*
dtype0
�
save_131/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_131/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_131/SaveV2SaveV2save_131/Constsave_131/SaveV2/tensor_names save_131/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_131/control_dependencyIdentitysave_131/Const^save_131/SaveV2*
T0*!
_class
loc:@save_131/Const
[
save_131/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_131/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_131/RestoreV2	RestoreV2save_131/Constsave_131/RestoreV2/tensor_names#save_131/RestoreV2/shape_and_slices*
dtypes
2
�
save_131/AssignAssignlayer/W/Weightssave_131/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
\
!save_131/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
R
%save_131/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_131/RestoreV2_1	RestoreV2save_131/Const!save_131/RestoreV2_1/tensor_names%save_131/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_131/Assign_1Assignlayer/b/biasessave_131/RestoreV2_1*
use_locking(*
T0*!
_class
loc:@layer/b/biases*
validate_shape(
_
!save_131/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
R
%save_131/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_131/RestoreV2_2	RestoreV2save_131/Const!save_131/RestoreV2_2/tensor_names%save_131/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_131/Assign_2Assignlayer_1/W/Weightssave_131/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
^
!save_131/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
R
%save_131/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_131/RestoreV2_3	RestoreV2save_131/Const!save_131/RestoreV2_3/tensor_names%save_131/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_131/Assign_3Assignlayer_1/b/biasessave_131/RestoreV2_3*
use_locking(*
T0*#
_class
loc:@layer_1/b/biases*
validate_shape(
_
!save_131/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_131/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_131/RestoreV2_4	RestoreV2save_131/Const!save_131/RestoreV2_4/tensor_names%save_131/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_131/Assign_4Assignlayer_2/W/Weightssave_131/RestoreV2_4*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_2/W/Weights
^
!save_131/RestoreV2_5/tensor_namesConst*%
valueBBlayer_2/b/biases*
dtype0
R
%save_131/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_131/RestoreV2_5	RestoreV2save_131/Const!save_131/RestoreV2_5/tensor_names%save_131/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_131/Assign_5Assignlayer_2/b/biasessave_131/RestoreV2_5*
validate_shape(*#
_class
loc:@layer_2/b/biases*
T0*
use_locking(
�
save_131/restore_allNoOp^save_131/Assign^save_131/Assign_1^save_131/Assign_2^save_131/Assign_3^save_131/Assign_4^save_131/Assign_5
<
save_132/ConstConst*
valueB Bmodel*
dtype0
�
save_132/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_132/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_132/SaveV2SaveV2save_132/Constsave_132/SaveV2/tensor_names save_132/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_132/control_dependencyIdentitysave_132/Const^save_132/SaveV2*
T0*!
_class
loc:@save_132/Const
[
save_132/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_132/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_132/RestoreV2	RestoreV2save_132/Constsave_132/RestoreV2/tensor_names#save_132/RestoreV2/shape_and_slices*
dtypes
2
�
save_132/AssignAssignlayer/W/Weightssave_132/RestoreV2*
use_locking(*
validate_shape(*
T0*"
_class
loc:@layer/W/Weights
\
!save_132/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_132/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_132/RestoreV2_1	RestoreV2save_132/Const!save_132/RestoreV2_1/tensor_names%save_132/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_132/Assign_1Assignlayer/b/biasessave_132/RestoreV2_1*
use_locking(*
validate_shape(*
T0*!
_class
loc:@layer/b/biases
_
!save_132/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_132/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_132/RestoreV2_2	RestoreV2save_132/Const!save_132/RestoreV2_2/tensor_names%save_132/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_132/Assign_2Assignlayer_1/W/Weightssave_132/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
^
!save_132/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
R
%save_132/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_132/RestoreV2_3	RestoreV2save_132/Const!save_132/RestoreV2_3/tensor_names%save_132/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_132/Assign_3Assignlayer_1/b/biasessave_132/RestoreV2_3*
use_locking(*
T0*#
_class
loc:@layer_1/b/biases*
validate_shape(
_
!save_132/RestoreV2_4/tensor_namesConst*
dtype0*&
valueBBlayer_2/W/Weights
R
%save_132/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_132/RestoreV2_4	RestoreV2save_132/Const!save_132/RestoreV2_4/tensor_names%save_132/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_132/Assign_4Assignlayer_2/W/Weightssave_132/RestoreV2_4*$
_class
loc:@layer_2/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_132/RestoreV2_5/tensor_namesConst*%
valueBBlayer_2/b/biases*
dtype0
R
%save_132/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_132/RestoreV2_5	RestoreV2save_132/Const!save_132/RestoreV2_5/tensor_names%save_132/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_132/Assign_5Assignlayer_2/b/biasessave_132/RestoreV2_5*
validate_shape(*#
_class
loc:@layer_2/b/biases*
T0*
use_locking(
�
save_132/restore_allNoOp^save_132/Assign^save_132/Assign_1^save_132/Assign_2^save_132/Assign_3^save_132/Assign_4^save_132/Assign_5
<
save_133/ConstConst*
dtype0*
valueB Bmodel
�
save_133/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_133/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_133/SaveV2SaveV2save_133/Constsave_133/SaveV2/tensor_names save_133/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_133/control_dependencyIdentitysave_133/Const^save_133/SaveV2*
T0*!
_class
loc:@save_133/Const
[
save_133/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
P
#save_133/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_133/RestoreV2	RestoreV2save_133/Constsave_133/RestoreV2/tensor_names#save_133/RestoreV2/shape_and_slices*
dtypes
2
�
save_133/AssignAssignlayer/W/Weightssave_133/RestoreV2*"
_class
loc:@layer/W/Weights*
T0*
validate_shape(*
use_locking(
\
!save_133/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_133/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_133/RestoreV2_1	RestoreV2save_133/Const!save_133/RestoreV2_1/tensor_names%save_133/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_133/Assign_1Assignlayer/b/biasessave_133/RestoreV2_1*
use_locking(*
validate_shape(*
T0*!
_class
loc:@layer/b/biases
_
!save_133/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
R
%save_133/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_133/RestoreV2_2	RestoreV2save_133/Const!save_133/RestoreV2_2/tensor_names%save_133/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_133/Assign_2Assignlayer_1/W/Weightssave_133/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
^
!save_133/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
R
%save_133/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_133/RestoreV2_3	RestoreV2save_133/Const!save_133/RestoreV2_3/tensor_names%save_133/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_133/Assign_3Assignlayer_1/b/biasessave_133/RestoreV2_3*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_1/b/biases
_
!save_133/RestoreV2_4/tensor_namesConst*
dtype0*&
valueBBlayer_2/W/Weights
R
%save_133/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_133/RestoreV2_4	RestoreV2save_133/Const!save_133/RestoreV2_4/tensor_names%save_133/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_133/Assign_4Assignlayer_2/W/Weightssave_133/RestoreV2_4*$
_class
loc:@layer_2/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_133/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_133/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_133/RestoreV2_5	RestoreV2save_133/Const!save_133/RestoreV2_5/tensor_names%save_133/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_133/Assign_5Assignlayer_2/b/biasessave_133/RestoreV2_5*
validate_shape(*#
_class
loc:@layer_2/b/biases*
T0*
use_locking(
�
save_133/restore_allNoOp^save_133/Assign^save_133/Assign_1^save_133/Assign_2^save_133/Assign_3^save_133/Assign_4^save_133/Assign_5
<
save_134/ConstConst*
valueB Bmodel*
dtype0
�
save_134/SaveV2/tensor_namesConst*
dtype0*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases
W
 save_134/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_134/SaveV2SaveV2save_134/Constsave_134/SaveV2/tensor_names save_134/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_134/control_dependencyIdentitysave_134/Const^save_134/SaveV2*!
_class
loc:@save_134/Const*
T0
[
save_134/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_134/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_134/RestoreV2	RestoreV2save_134/Constsave_134/RestoreV2/tensor_names#save_134/RestoreV2/shape_and_slices*
dtypes
2
�
save_134/AssignAssignlayer/W/Weightssave_134/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
\
!save_134/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
R
%save_134/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_134/RestoreV2_1	RestoreV2save_134/Const!save_134/RestoreV2_1/tensor_names%save_134/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_134/Assign_1Assignlayer/b/biasessave_134/RestoreV2_1*
use_locking(*
validate_shape(*
T0*!
_class
loc:@layer/b/biases
_
!save_134/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
R
%save_134/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_134/RestoreV2_2	RestoreV2save_134/Const!save_134/RestoreV2_2/tensor_names%save_134/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_134/Assign_2Assignlayer_1/W/Weightssave_134/RestoreV2_2*
validate_shape(*$
_class
loc:@layer_1/W/Weights*
T0*
use_locking(
^
!save_134/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
R
%save_134/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_134/RestoreV2_3	RestoreV2save_134/Const!save_134/RestoreV2_3/tensor_names%save_134/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_134/Assign_3Assignlayer_1/b/biasessave_134/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
_
!save_134/RestoreV2_4/tensor_namesConst*
dtype0*&
valueBBlayer_2/W/Weights
R
%save_134/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_134/RestoreV2_4	RestoreV2save_134/Const!save_134/RestoreV2_4/tensor_names%save_134/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_134/Assign_4Assignlayer_2/W/Weightssave_134/RestoreV2_4*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_2/W/Weights
^
!save_134/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_134/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_134/RestoreV2_5	RestoreV2save_134/Const!save_134/RestoreV2_5/tensor_names%save_134/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_134/Assign_5Assignlayer_2/b/biasessave_134/RestoreV2_5*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_2/b/biases
�
save_134/restore_allNoOp^save_134/Assign^save_134/Assign_1^save_134/Assign_2^save_134/Assign_3^save_134/Assign_4^save_134/Assign_5
<
save_135/ConstConst*
valueB Bmodel*
dtype0
�
save_135/SaveV2/tensor_namesConst*
dtype0*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases
W
 save_135/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_135/SaveV2SaveV2save_135/Constsave_135/SaveV2/tensor_names save_135/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_135/control_dependencyIdentitysave_135/Const^save_135/SaveV2*!
_class
loc:@save_135/Const*
T0
[
save_135/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_135/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_135/RestoreV2	RestoreV2save_135/Constsave_135/RestoreV2/tensor_names#save_135/RestoreV2/shape_and_slices*
dtypes
2
�
save_135/AssignAssignlayer/W/Weightssave_135/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
\
!save_135/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_135/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_135/RestoreV2_1	RestoreV2save_135/Const!save_135/RestoreV2_1/tensor_names%save_135/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_135/Assign_1Assignlayer/b/biasessave_135/RestoreV2_1*
use_locking(*
T0*!
_class
loc:@layer/b/biases*
validate_shape(
_
!save_135/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_135/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_135/RestoreV2_2	RestoreV2save_135/Const!save_135/RestoreV2_2/tensor_names%save_135/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_135/Assign_2Assignlayer_1/W/Weightssave_135/RestoreV2_2*
use_locking(*
T0*$
_class
loc:@layer_1/W/Weights*
validate_shape(
^
!save_135/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
R
%save_135/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_135/RestoreV2_3	RestoreV2save_135/Const!save_135/RestoreV2_3/tensor_names%save_135/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_135/Assign_3Assignlayer_1/b/biasessave_135/RestoreV2_3*
use_locking(*
T0*#
_class
loc:@layer_1/b/biases*
validate_shape(
_
!save_135/RestoreV2_4/tensor_namesConst*
dtype0*&
valueBBlayer_2/W/Weights
R
%save_135/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_135/RestoreV2_4	RestoreV2save_135/Const!save_135/RestoreV2_4/tensor_names%save_135/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_135/Assign_4Assignlayer_2/W/Weightssave_135/RestoreV2_4*
validate_shape(*$
_class
loc:@layer_2/W/Weights*
T0*
use_locking(
^
!save_135/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_135/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_135/RestoreV2_5	RestoreV2save_135/Const!save_135/RestoreV2_5/tensor_names%save_135/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_135/Assign_5Assignlayer_2/b/biasessave_135/RestoreV2_5*#
_class
loc:@layer_2/b/biases*
T0*
validate_shape(*
use_locking(
�
save_135/restore_allNoOp^save_135/Assign^save_135/Assign_1^save_135/Assign_2^save_135/Assign_3^save_135/Assign_4^save_135/Assign_5
<
save_136/ConstConst*
valueB Bmodel*
dtype0
�
save_136/SaveV2/tensor_namesConst*
dtype0*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases
W
 save_136/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_136/SaveV2SaveV2save_136/Constsave_136/SaveV2/tensor_names save_136/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_136/control_dependencyIdentitysave_136/Const^save_136/SaveV2*
T0*!
_class
loc:@save_136/Const
[
save_136/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_136/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_136/RestoreV2	RestoreV2save_136/Constsave_136/RestoreV2/tensor_names#save_136/RestoreV2/shape_and_slices*
dtypes
2
�
save_136/AssignAssignlayer/W/Weightssave_136/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
\
!save_136/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_136/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_136/RestoreV2_1	RestoreV2save_136/Const!save_136/RestoreV2_1/tensor_names%save_136/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_136/Assign_1Assignlayer/b/biasessave_136/RestoreV2_1*
use_locking(*
T0*!
_class
loc:@layer/b/biases*
validate_shape(
_
!save_136/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_136/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_136/RestoreV2_2	RestoreV2save_136/Const!save_136/RestoreV2_2/tensor_names%save_136/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_136/Assign_2Assignlayer_1/W/Weightssave_136/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
^
!save_136/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
R
%save_136/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_136/RestoreV2_3	RestoreV2save_136/Const!save_136/RestoreV2_3/tensor_names%save_136/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_136/Assign_3Assignlayer_1/b/biasessave_136/RestoreV2_3*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_1/b/biases
_
!save_136/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_136/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
�
save_136/RestoreV2_4	RestoreV2save_136/Const!save_136/RestoreV2_4/tensor_names%save_136/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_136/Assign_4Assignlayer_2/W/Weightssave_136/RestoreV2_4*$
_class
loc:@layer_2/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_136/RestoreV2_5/tensor_namesConst*%
valueBBlayer_2/b/biases*
dtype0
R
%save_136/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_136/RestoreV2_5	RestoreV2save_136/Const!save_136/RestoreV2_5/tensor_names%save_136/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_136/Assign_5Assignlayer_2/b/biasessave_136/RestoreV2_5*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_2/b/biases
�
save_136/restore_allNoOp^save_136/Assign^save_136/Assign_1^save_136/Assign_2^save_136/Assign_3^save_136/Assign_4^save_136/Assign_5
<
save_137/ConstConst*
valueB Bmodel*
dtype0
�
save_137/SaveV2/tensor_namesConst*
dtype0*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases
W
 save_137/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B B B 
�
save_137/SaveV2SaveV2save_137/Constsave_137/SaveV2/tensor_names save_137/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_137/control_dependencyIdentitysave_137/Const^save_137/SaveV2*
T0*!
_class
loc:@save_137/Const
[
save_137/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
P
#save_137/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_137/RestoreV2	RestoreV2save_137/Constsave_137/RestoreV2/tensor_names#save_137/RestoreV2/shape_and_slices*
dtypes
2
�
save_137/AssignAssignlayer/W/Weightssave_137/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
\
!save_137/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_137/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_137/RestoreV2_1	RestoreV2save_137/Const!save_137/RestoreV2_1/tensor_names%save_137/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_137/Assign_1Assignlayer/b/biasessave_137/RestoreV2_1*
use_locking(*
validate_shape(*
T0*!
_class
loc:@layer/b/biases
_
!save_137/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_137/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_137/RestoreV2_2	RestoreV2save_137/Const!save_137/RestoreV2_2/tensor_names%save_137/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_137/Assign_2Assignlayer_1/W/Weightssave_137/RestoreV2_2*
use_locking(*
T0*$
_class
loc:@layer_1/W/Weights*
validate_shape(
^
!save_137/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
R
%save_137/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_137/RestoreV2_3	RestoreV2save_137/Const!save_137/RestoreV2_3/tensor_names%save_137/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_137/Assign_3Assignlayer_1/b/biasessave_137/RestoreV2_3*
use_locking(*
T0*#
_class
loc:@layer_1/b/biases*
validate_shape(
_
!save_137/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_137/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_137/RestoreV2_4	RestoreV2save_137/Const!save_137/RestoreV2_4/tensor_names%save_137/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_137/Assign_4Assignlayer_2/W/Weightssave_137/RestoreV2_4*$
_class
loc:@layer_2/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_137/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_137/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_137/RestoreV2_5	RestoreV2save_137/Const!save_137/RestoreV2_5/tensor_names%save_137/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_137/Assign_5Assignlayer_2/b/biasessave_137/RestoreV2_5*
validate_shape(*#
_class
loc:@layer_2/b/biases*
T0*
use_locking(
�
save_137/restore_allNoOp^save_137/Assign^save_137/Assign_1^save_137/Assign_2^save_137/Assign_3^save_137/Assign_4^save_137/Assign_5
<
save_138/ConstConst*
valueB Bmodel*
dtype0
�
save_138/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_138/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B B B 
�
save_138/SaveV2SaveV2save_138/Constsave_138/SaveV2/tensor_names save_138/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_138/control_dependencyIdentitysave_138/Const^save_138/SaveV2*
T0*!
_class
loc:@save_138/Const
[
save_138/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_138/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_138/RestoreV2	RestoreV2save_138/Constsave_138/RestoreV2/tensor_names#save_138/RestoreV2/shape_and_slices*
dtypes
2
�
save_138/AssignAssignlayer/W/Weightssave_138/RestoreV2*"
_class
loc:@layer/W/Weights*
T0*
validate_shape(*
use_locking(
\
!save_138/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
R
%save_138/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_138/RestoreV2_1	RestoreV2save_138/Const!save_138/RestoreV2_1/tensor_names%save_138/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_138/Assign_1Assignlayer/b/biasessave_138/RestoreV2_1*
validate_shape(*!
_class
loc:@layer/b/biases*
T0*
use_locking(
_
!save_138/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
R
%save_138/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_138/RestoreV2_2	RestoreV2save_138/Const!save_138/RestoreV2_2/tensor_names%save_138/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_138/Assign_2Assignlayer_1/W/Weightssave_138/RestoreV2_2*
validate_shape(*$
_class
loc:@layer_1/W/Weights*
T0*
use_locking(
^
!save_138/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
R
%save_138/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_138/RestoreV2_3	RestoreV2save_138/Const!save_138/RestoreV2_3/tensor_names%save_138/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_138/Assign_3Assignlayer_1/b/biasessave_138/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
_
!save_138/RestoreV2_4/tensor_namesConst*
dtype0*&
valueBBlayer_2/W/Weights
R
%save_138/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_138/RestoreV2_4	RestoreV2save_138/Const!save_138/RestoreV2_4/tensor_names%save_138/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_138/Assign_4Assignlayer_2/W/Weightssave_138/RestoreV2_4*
validate_shape(*$
_class
loc:@layer_2/W/Weights*
T0*
use_locking(
^
!save_138/RestoreV2_5/tensor_namesConst*%
valueBBlayer_2/b/biases*
dtype0
R
%save_138/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_138/RestoreV2_5	RestoreV2save_138/Const!save_138/RestoreV2_5/tensor_names%save_138/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_138/Assign_5Assignlayer_2/b/biasessave_138/RestoreV2_5*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_2/b/biases
�
save_138/restore_allNoOp^save_138/Assign^save_138/Assign_1^save_138/Assign_2^save_138/Assign_3^save_138/Assign_4^save_138/Assign_5
<
save_139/ConstConst*
valueB Bmodel*
dtype0
�
save_139/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_139/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B B B 
�
save_139/SaveV2SaveV2save_139/Constsave_139/SaveV2/tensor_names save_139/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_139/control_dependencyIdentitysave_139/Const^save_139/SaveV2*!
_class
loc:@save_139/Const*
T0
[
save_139/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
P
#save_139/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_139/RestoreV2	RestoreV2save_139/Constsave_139/RestoreV2/tensor_names#save_139/RestoreV2/shape_and_slices*
dtypes
2
�
save_139/AssignAssignlayer/W/Weightssave_139/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
\
!save_139/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_139/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_139/RestoreV2_1	RestoreV2save_139/Const!save_139/RestoreV2_1/tensor_names%save_139/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_139/Assign_1Assignlayer/b/biasessave_139/RestoreV2_1*
use_locking(*
T0*!
_class
loc:@layer/b/biases*
validate_shape(
_
!save_139/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
R
%save_139/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_139/RestoreV2_2	RestoreV2save_139/Const!save_139/RestoreV2_2/tensor_names%save_139/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_139/Assign_2Assignlayer_1/W/Weightssave_139/RestoreV2_2*
use_locking(*
T0*$
_class
loc:@layer_1/W/Weights*
validate_shape(
^
!save_139/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
R
%save_139/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_139/RestoreV2_3	RestoreV2save_139/Const!save_139/RestoreV2_3/tensor_names%save_139/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_139/Assign_3Assignlayer_1/b/biasessave_139/RestoreV2_3*
use_locking(*
T0*#
_class
loc:@layer_1/b/biases*
validate_shape(
_
!save_139/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_139/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
�
save_139/RestoreV2_4	RestoreV2save_139/Const!save_139/RestoreV2_4/tensor_names%save_139/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_139/Assign_4Assignlayer_2/W/Weightssave_139/RestoreV2_4*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_2/W/Weights
^
!save_139/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_139/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_139/RestoreV2_5	RestoreV2save_139/Const!save_139/RestoreV2_5/tensor_names%save_139/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_139/Assign_5Assignlayer_2/b/biasessave_139/RestoreV2_5*
use_locking(*
T0*#
_class
loc:@layer_2/b/biases*
validate_shape(
�
save_139/restore_allNoOp^save_139/Assign^save_139/Assign_1^save_139/Assign_2^save_139/Assign_3^save_139/Assign_4^save_139/Assign_5
<
save_140/ConstConst*
dtype0*
valueB Bmodel
�
save_140/SaveV2/tensor_namesConst*
dtype0*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases
W
 save_140/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B B B 
�
save_140/SaveV2SaveV2save_140/Constsave_140/SaveV2/tensor_names save_140/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_140/control_dependencyIdentitysave_140/Const^save_140/SaveV2*!
_class
loc:@save_140/Const*
T0
[
save_140/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
P
#save_140/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_140/RestoreV2	RestoreV2save_140/Constsave_140/RestoreV2/tensor_names#save_140/RestoreV2/shape_and_slices*
dtypes
2
�
save_140/AssignAssignlayer/W/Weightssave_140/RestoreV2*
use_locking(*
validate_shape(*
T0*"
_class
loc:@layer/W/Weights
\
!save_140/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_140/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_140/RestoreV2_1	RestoreV2save_140/Const!save_140/RestoreV2_1/tensor_names%save_140/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_140/Assign_1Assignlayer/b/biasessave_140/RestoreV2_1*
use_locking(*
T0*!
_class
loc:@layer/b/biases*
validate_shape(
_
!save_140/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
R
%save_140/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_140/RestoreV2_2	RestoreV2save_140/Const!save_140/RestoreV2_2/tensor_names%save_140/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_140/Assign_2Assignlayer_1/W/Weightssave_140/RestoreV2_2*
use_locking(*
T0*$
_class
loc:@layer_1/W/Weights*
validate_shape(
^
!save_140/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
R
%save_140/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_140/RestoreV2_3	RestoreV2save_140/Const!save_140/RestoreV2_3/tensor_names%save_140/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_140/Assign_3Assignlayer_1/b/biasessave_140/RestoreV2_3*#
_class
loc:@layer_1/b/biases*
T0*
validate_shape(*
use_locking(
_
!save_140/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_140/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
�
save_140/RestoreV2_4	RestoreV2save_140/Const!save_140/RestoreV2_4/tensor_names%save_140/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_140/Assign_4Assignlayer_2/W/Weightssave_140/RestoreV2_4*
validate_shape(*$
_class
loc:@layer_2/W/Weights*
T0*
use_locking(
^
!save_140/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_140/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_140/RestoreV2_5	RestoreV2save_140/Const!save_140/RestoreV2_5/tensor_names%save_140/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_140/Assign_5Assignlayer_2/b/biasessave_140/RestoreV2_5*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_2/b/biases
�
save_140/restore_allNoOp^save_140/Assign^save_140/Assign_1^save_140/Assign_2^save_140/Assign_3^save_140/Assign_4^save_140/Assign_5
<
save_141/ConstConst*
valueB Bmodel*
dtype0
�
save_141/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_141/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_141/SaveV2SaveV2save_141/Constsave_141/SaveV2/tensor_names save_141/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_141/control_dependencyIdentitysave_141/Const^save_141/SaveV2*
T0*!
_class
loc:@save_141/Const
[
save_141/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_141/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_141/RestoreV2	RestoreV2save_141/Constsave_141/RestoreV2/tensor_names#save_141/RestoreV2/shape_and_slices*
dtypes
2
�
save_141/AssignAssignlayer/W/Weightssave_141/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
\
!save_141/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
R
%save_141/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_141/RestoreV2_1	RestoreV2save_141/Const!save_141/RestoreV2_1/tensor_names%save_141/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_141/Assign_1Assignlayer/b/biasessave_141/RestoreV2_1*!
_class
loc:@layer/b/biases*
T0*
validate_shape(*
use_locking(
_
!save_141/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
R
%save_141/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_141/RestoreV2_2	RestoreV2save_141/Const!save_141/RestoreV2_2/tensor_names%save_141/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_141/Assign_2Assignlayer_1/W/Weightssave_141/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
^
!save_141/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
R
%save_141/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_141/RestoreV2_3	RestoreV2save_141/Const!save_141/RestoreV2_3/tensor_names%save_141/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_141/Assign_3Assignlayer_1/b/biasessave_141/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
_
!save_141/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_141/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
�
save_141/RestoreV2_4	RestoreV2save_141/Const!save_141/RestoreV2_4/tensor_names%save_141/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_141/Assign_4Assignlayer_2/W/Weightssave_141/RestoreV2_4*$
_class
loc:@layer_2/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_141/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_141/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_141/RestoreV2_5	RestoreV2save_141/Const!save_141/RestoreV2_5/tensor_names%save_141/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_141/Assign_5Assignlayer_2/b/biasessave_141/RestoreV2_5*
use_locking(*
T0*#
_class
loc:@layer_2/b/biases*
validate_shape(
�
save_141/restore_allNoOp^save_141/Assign^save_141/Assign_1^save_141/Assign_2^save_141/Assign_3^save_141/Assign_4^save_141/Assign_5
<
save_142/ConstConst*
valueB Bmodel*
dtype0
�
save_142/SaveV2/tensor_namesConst*
dtype0*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases
W
 save_142/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B B B 
�
save_142/SaveV2SaveV2save_142/Constsave_142/SaveV2/tensor_names save_142/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_142/control_dependencyIdentitysave_142/Const^save_142/SaveV2*
T0*!
_class
loc:@save_142/Const
[
save_142/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
P
#save_142/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_142/RestoreV2	RestoreV2save_142/Constsave_142/RestoreV2/tensor_names#save_142/RestoreV2/shape_and_slices*
dtypes
2
�
save_142/AssignAssignlayer/W/Weightssave_142/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
\
!save_142/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
R
%save_142/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_142/RestoreV2_1	RestoreV2save_142/Const!save_142/RestoreV2_1/tensor_names%save_142/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_142/Assign_1Assignlayer/b/biasessave_142/RestoreV2_1*
use_locking(*
validate_shape(*
T0*!
_class
loc:@layer/b/biases
_
!save_142/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_142/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_142/RestoreV2_2	RestoreV2save_142/Const!save_142/RestoreV2_2/tensor_names%save_142/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_142/Assign_2Assignlayer_1/W/Weightssave_142/RestoreV2_2*$
_class
loc:@layer_1/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_142/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
R
%save_142/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_142/RestoreV2_3	RestoreV2save_142/Const!save_142/RestoreV2_3/tensor_names%save_142/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_142/Assign_3Assignlayer_1/b/biasessave_142/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
_
!save_142/RestoreV2_4/tensor_namesConst*
dtype0*&
valueBBlayer_2/W/Weights
R
%save_142/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_142/RestoreV2_4	RestoreV2save_142/Const!save_142/RestoreV2_4/tensor_names%save_142/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_142/Assign_4Assignlayer_2/W/Weightssave_142/RestoreV2_4*
use_locking(*
T0*$
_class
loc:@layer_2/W/Weights*
validate_shape(
^
!save_142/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_142/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_142/RestoreV2_5	RestoreV2save_142/Const!save_142/RestoreV2_5/tensor_names%save_142/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_142/Assign_5Assignlayer_2/b/biasessave_142/RestoreV2_5*
use_locking(*
T0*#
_class
loc:@layer_2/b/biases*
validate_shape(
�
save_142/restore_allNoOp^save_142/Assign^save_142/Assign_1^save_142/Assign_2^save_142/Assign_3^save_142/Assign_4^save_142/Assign_5
<
save_143/ConstConst*
dtype0*
valueB Bmodel
�
save_143/SaveV2/tensor_namesConst*
dtype0*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases
W
 save_143/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B B B 
�
save_143/SaveV2SaveV2save_143/Constsave_143/SaveV2/tensor_names save_143/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_143/control_dependencyIdentitysave_143/Const^save_143/SaveV2*!
_class
loc:@save_143/Const*
T0
[
save_143/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_143/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_143/RestoreV2	RestoreV2save_143/Constsave_143/RestoreV2/tensor_names#save_143/RestoreV2/shape_and_slices*
dtypes
2
�
save_143/AssignAssignlayer/W/Weightssave_143/RestoreV2*
use_locking(*
validate_shape(*
T0*"
_class
loc:@layer/W/Weights
\
!save_143/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
R
%save_143/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_143/RestoreV2_1	RestoreV2save_143/Const!save_143/RestoreV2_1/tensor_names%save_143/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_143/Assign_1Assignlayer/b/biasessave_143/RestoreV2_1*
use_locking(*
T0*!
_class
loc:@layer/b/biases*
validate_shape(
_
!save_143/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
R
%save_143/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_143/RestoreV2_2	RestoreV2save_143/Const!save_143/RestoreV2_2/tensor_names%save_143/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_143/Assign_2Assignlayer_1/W/Weightssave_143/RestoreV2_2*
use_locking(*
T0*$
_class
loc:@layer_1/W/Weights*
validate_shape(
^
!save_143/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
R
%save_143/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_143/RestoreV2_3	RestoreV2save_143/Const!save_143/RestoreV2_3/tensor_names%save_143/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_143/Assign_3Assignlayer_1/b/biasessave_143/RestoreV2_3*
use_locking(*
T0*#
_class
loc:@layer_1/b/biases*
validate_shape(
_
!save_143/RestoreV2_4/tensor_namesConst*
dtype0*&
valueBBlayer_2/W/Weights
R
%save_143/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
�
save_143/RestoreV2_4	RestoreV2save_143/Const!save_143/RestoreV2_4/tensor_names%save_143/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_143/Assign_4Assignlayer_2/W/Weightssave_143/RestoreV2_4*$
_class
loc:@layer_2/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_143/RestoreV2_5/tensor_namesConst*%
valueBBlayer_2/b/biases*
dtype0
R
%save_143/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_143/RestoreV2_5	RestoreV2save_143/Const!save_143/RestoreV2_5/tensor_names%save_143/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_143/Assign_5Assignlayer_2/b/biasessave_143/RestoreV2_5*
use_locking(*
T0*#
_class
loc:@layer_2/b/biases*
validate_shape(
�
save_143/restore_allNoOp^save_143/Assign^save_143/Assign_1^save_143/Assign_2^save_143/Assign_3^save_143/Assign_4^save_143/Assign_5
<
save_144/ConstConst*
dtype0*
valueB Bmodel
�
save_144/SaveV2/tensor_namesConst*
dtype0*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases
W
 save_144/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_144/SaveV2SaveV2save_144/Constsave_144/SaveV2/tensor_names save_144/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_144/control_dependencyIdentitysave_144/Const^save_144/SaveV2*
T0*!
_class
loc:@save_144/Const
[
save_144/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_144/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_144/RestoreV2	RestoreV2save_144/Constsave_144/RestoreV2/tensor_names#save_144/RestoreV2/shape_and_slices*
dtypes
2
�
save_144/AssignAssignlayer/W/Weightssave_144/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
\
!save_144/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
R
%save_144/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_144/RestoreV2_1	RestoreV2save_144/Const!save_144/RestoreV2_1/tensor_names%save_144/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_144/Assign_1Assignlayer/b/biasessave_144/RestoreV2_1*
use_locking(*
T0*!
_class
loc:@layer/b/biases*
validate_shape(
_
!save_144/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_144/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_144/RestoreV2_2	RestoreV2save_144/Const!save_144/RestoreV2_2/tensor_names%save_144/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_144/Assign_2Assignlayer_1/W/Weightssave_144/RestoreV2_2*$
_class
loc:@layer_1/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_144/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
R
%save_144/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_144/RestoreV2_3	RestoreV2save_144/Const!save_144/RestoreV2_3/tensor_names%save_144/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_144/Assign_3Assignlayer_1/b/biasessave_144/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
_
!save_144/RestoreV2_4/tensor_namesConst*
dtype0*&
valueBBlayer_2/W/Weights
R
%save_144/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_144/RestoreV2_4	RestoreV2save_144/Const!save_144/RestoreV2_4/tensor_names%save_144/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_144/Assign_4Assignlayer_2/W/Weightssave_144/RestoreV2_4*$
_class
loc:@layer_2/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_144/RestoreV2_5/tensor_namesConst*%
valueBBlayer_2/b/biases*
dtype0
R
%save_144/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_144/RestoreV2_5	RestoreV2save_144/Const!save_144/RestoreV2_5/tensor_names%save_144/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_144/Assign_5Assignlayer_2/b/biasessave_144/RestoreV2_5*
use_locking(*
T0*#
_class
loc:@layer_2/b/biases*
validate_shape(
�
save_144/restore_allNoOp^save_144/Assign^save_144/Assign_1^save_144/Assign_2^save_144/Assign_3^save_144/Assign_4^save_144/Assign_5
<
save_145/ConstConst*
valueB Bmodel*
dtype0
�
save_145/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_145/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_145/SaveV2SaveV2save_145/Constsave_145/SaveV2/tensor_names save_145/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_145/control_dependencyIdentitysave_145/Const^save_145/SaveV2*!
_class
loc:@save_145/Const*
T0
[
save_145/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_145/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_145/RestoreV2	RestoreV2save_145/Constsave_145/RestoreV2/tensor_names#save_145/RestoreV2/shape_and_slices*
dtypes
2
�
save_145/AssignAssignlayer/W/Weightssave_145/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
\
!save_145/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_145/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_145/RestoreV2_1	RestoreV2save_145/Const!save_145/RestoreV2_1/tensor_names%save_145/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_145/Assign_1Assignlayer/b/biasessave_145/RestoreV2_1*!
_class
loc:@layer/b/biases*
T0*
validate_shape(*
use_locking(
_
!save_145/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
R
%save_145/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_145/RestoreV2_2	RestoreV2save_145/Const!save_145/RestoreV2_2/tensor_names%save_145/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_145/Assign_2Assignlayer_1/W/Weightssave_145/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
^
!save_145/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
R
%save_145/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_145/RestoreV2_3	RestoreV2save_145/Const!save_145/RestoreV2_3/tensor_names%save_145/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_145/Assign_3Assignlayer_1/b/biasessave_145/RestoreV2_3*
use_locking(*
T0*#
_class
loc:@layer_1/b/biases*
validate_shape(
_
!save_145/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_145/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_145/RestoreV2_4	RestoreV2save_145/Const!save_145/RestoreV2_4/tensor_names%save_145/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_145/Assign_4Assignlayer_2/W/Weightssave_145/RestoreV2_4*
use_locking(*
T0*$
_class
loc:@layer_2/W/Weights*
validate_shape(
^
!save_145/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_145/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_145/RestoreV2_5	RestoreV2save_145/Const!save_145/RestoreV2_5/tensor_names%save_145/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_145/Assign_5Assignlayer_2/b/biasessave_145/RestoreV2_5*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_2/b/biases
�
save_145/restore_allNoOp^save_145/Assign^save_145/Assign_1^save_145/Assign_2^save_145/Assign_3^save_145/Assign_4^save_145/Assign_5
<
save_146/ConstConst*
dtype0*
valueB Bmodel
�
save_146/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_146/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_146/SaveV2SaveV2save_146/Constsave_146/SaveV2/tensor_names save_146/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_146/control_dependencyIdentitysave_146/Const^save_146/SaveV2*
T0*!
_class
loc:@save_146/Const
[
save_146/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
P
#save_146/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_146/RestoreV2	RestoreV2save_146/Constsave_146/RestoreV2/tensor_names#save_146/RestoreV2/shape_and_slices*
dtypes
2
�
save_146/AssignAssignlayer/W/Weightssave_146/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
\
!save_146/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
R
%save_146/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_146/RestoreV2_1	RestoreV2save_146/Const!save_146/RestoreV2_1/tensor_names%save_146/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_146/Assign_1Assignlayer/b/biasessave_146/RestoreV2_1*!
_class
loc:@layer/b/biases*
T0*
validate_shape(*
use_locking(
_
!save_146/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
R
%save_146/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_146/RestoreV2_2	RestoreV2save_146/Const!save_146/RestoreV2_2/tensor_names%save_146/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_146/Assign_2Assignlayer_1/W/Weightssave_146/RestoreV2_2*
validate_shape(*$
_class
loc:@layer_1/W/Weights*
T0*
use_locking(
^
!save_146/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
R
%save_146/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_146/RestoreV2_3	RestoreV2save_146/Const!save_146/RestoreV2_3/tensor_names%save_146/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_146/Assign_3Assignlayer_1/b/biasessave_146/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
_
!save_146/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_146/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
�
save_146/RestoreV2_4	RestoreV2save_146/Const!save_146/RestoreV2_4/tensor_names%save_146/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_146/Assign_4Assignlayer_2/W/Weightssave_146/RestoreV2_4*
validate_shape(*$
_class
loc:@layer_2/W/Weights*
T0*
use_locking(
^
!save_146/RestoreV2_5/tensor_namesConst*%
valueBBlayer_2/b/biases*
dtype0
R
%save_146/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_146/RestoreV2_5	RestoreV2save_146/Const!save_146/RestoreV2_5/tensor_names%save_146/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_146/Assign_5Assignlayer_2/b/biasessave_146/RestoreV2_5*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_2/b/biases
�
save_146/restore_allNoOp^save_146/Assign^save_146/Assign_1^save_146/Assign_2^save_146/Assign_3^save_146/Assign_4^save_146/Assign_5
<
save_147/ConstConst*
valueB Bmodel*
dtype0
�
save_147/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_147/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_147/SaveV2SaveV2save_147/Constsave_147/SaveV2/tensor_names save_147/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_147/control_dependencyIdentitysave_147/Const^save_147/SaveV2*!
_class
loc:@save_147/Const*
T0
[
save_147/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_147/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_147/RestoreV2	RestoreV2save_147/Constsave_147/RestoreV2/tensor_names#save_147/RestoreV2/shape_and_slices*
dtypes
2
�
save_147/AssignAssignlayer/W/Weightssave_147/RestoreV2*
use_locking(*
validate_shape(*
T0*"
_class
loc:@layer/W/Weights
\
!save_147/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
R
%save_147/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_147/RestoreV2_1	RestoreV2save_147/Const!save_147/RestoreV2_1/tensor_names%save_147/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_147/Assign_1Assignlayer/b/biasessave_147/RestoreV2_1*
validate_shape(*!
_class
loc:@layer/b/biases*
T0*
use_locking(
_
!save_147/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_147/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_147/RestoreV2_2	RestoreV2save_147/Const!save_147/RestoreV2_2/tensor_names%save_147/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_147/Assign_2Assignlayer_1/W/Weightssave_147/RestoreV2_2*
use_locking(*
T0*$
_class
loc:@layer_1/W/Weights*
validate_shape(
^
!save_147/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
R
%save_147/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_147/RestoreV2_3	RestoreV2save_147/Const!save_147/RestoreV2_3/tensor_names%save_147/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_147/Assign_3Assignlayer_1/b/biasessave_147/RestoreV2_3*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_1/b/biases
_
!save_147/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_147/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_147/RestoreV2_4	RestoreV2save_147/Const!save_147/RestoreV2_4/tensor_names%save_147/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_147/Assign_4Assignlayer_2/W/Weightssave_147/RestoreV2_4*
use_locking(*
T0*$
_class
loc:@layer_2/W/Weights*
validate_shape(
^
!save_147/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_147/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_147/RestoreV2_5	RestoreV2save_147/Const!save_147/RestoreV2_5/tensor_names%save_147/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_147/Assign_5Assignlayer_2/b/biasessave_147/RestoreV2_5*
validate_shape(*#
_class
loc:@layer_2/b/biases*
T0*
use_locking(
�
save_147/restore_allNoOp^save_147/Assign^save_147/Assign_1^save_147/Assign_2^save_147/Assign_3^save_147/Assign_4^save_147/Assign_5
<
save_148/ConstConst*
dtype0*
valueB Bmodel
�
save_148/SaveV2/tensor_namesConst*
dtype0*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases
W
 save_148/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B B B 
�
save_148/SaveV2SaveV2save_148/Constsave_148/SaveV2/tensor_names save_148/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_148/control_dependencyIdentitysave_148/Const^save_148/SaveV2*!
_class
loc:@save_148/Const*
T0
[
save_148/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_148/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_148/RestoreV2	RestoreV2save_148/Constsave_148/RestoreV2/tensor_names#save_148/RestoreV2/shape_and_slices*
dtypes
2
�
save_148/AssignAssignlayer/W/Weightssave_148/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
\
!save_148/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_148/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_148/RestoreV2_1	RestoreV2save_148/Const!save_148/RestoreV2_1/tensor_names%save_148/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_148/Assign_1Assignlayer/b/biasessave_148/RestoreV2_1*
use_locking(*
validate_shape(*
T0*!
_class
loc:@layer/b/biases
_
!save_148/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
R
%save_148/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_148/RestoreV2_2	RestoreV2save_148/Const!save_148/RestoreV2_2/tensor_names%save_148/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_148/Assign_2Assignlayer_1/W/Weightssave_148/RestoreV2_2*
use_locking(*
T0*$
_class
loc:@layer_1/W/Weights*
validate_shape(
^
!save_148/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
R
%save_148/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_148/RestoreV2_3	RestoreV2save_148/Const!save_148/RestoreV2_3/tensor_names%save_148/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_148/Assign_3Assignlayer_1/b/biasessave_148/RestoreV2_3*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_1/b/biases
_
!save_148/RestoreV2_4/tensor_namesConst*
dtype0*&
valueBBlayer_2/W/Weights
R
%save_148/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
�
save_148/RestoreV2_4	RestoreV2save_148/Const!save_148/RestoreV2_4/tensor_names%save_148/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_148/Assign_4Assignlayer_2/W/Weightssave_148/RestoreV2_4*$
_class
loc:@layer_2/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_148/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_148/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_148/RestoreV2_5	RestoreV2save_148/Const!save_148/RestoreV2_5/tensor_names%save_148/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_148/Assign_5Assignlayer_2/b/biasessave_148/RestoreV2_5*
validate_shape(*#
_class
loc:@layer_2/b/biases*
T0*
use_locking(
�
save_148/restore_allNoOp^save_148/Assign^save_148/Assign_1^save_148/Assign_2^save_148/Assign_3^save_148/Assign_4^save_148/Assign_5
<
save_149/ConstConst*
dtype0*
valueB Bmodel
�
save_149/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_149/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_149/SaveV2SaveV2save_149/Constsave_149/SaveV2/tensor_names save_149/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_149/control_dependencyIdentitysave_149/Const^save_149/SaveV2*
T0*!
_class
loc:@save_149/Const
[
save_149/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
P
#save_149/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_149/RestoreV2	RestoreV2save_149/Constsave_149/RestoreV2/tensor_names#save_149/RestoreV2/shape_and_slices*
dtypes
2
�
save_149/AssignAssignlayer/W/Weightssave_149/RestoreV2*"
_class
loc:@layer/W/Weights*
T0*
validate_shape(*
use_locking(
\
!save_149/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_149/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_149/RestoreV2_1	RestoreV2save_149/Const!save_149/RestoreV2_1/tensor_names%save_149/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_149/Assign_1Assignlayer/b/biasessave_149/RestoreV2_1*
use_locking(*
T0*!
_class
loc:@layer/b/biases*
validate_shape(
_
!save_149/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_149/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_149/RestoreV2_2	RestoreV2save_149/Const!save_149/RestoreV2_2/tensor_names%save_149/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_149/Assign_2Assignlayer_1/W/Weightssave_149/RestoreV2_2*$
_class
loc:@layer_1/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_149/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
R
%save_149/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_149/RestoreV2_3	RestoreV2save_149/Const!save_149/RestoreV2_3/tensor_names%save_149/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_149/Assign_3Assignlayer_1/b/biasessave_149/RestoreV2_3*
use_locking(*
T0*#
_class
loc:@layer_1/b/biases*
validate_shape(
_
!save_149/RestoreV2_4/tensor_namesConst*
dtype0*&
valueBBlayer_2/W/Weights
R
%save_149/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_149/RestoreV2_4	RestoreV2save_149/Const!save_149/RestoreV2_4/tensor_names%save_149/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_149/Assign_4Assignlayer_2/W/Weightssave_149/RestoreV2_4*$
_class
loc:@layer_2/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_149/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_149/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_149/RestoreV2_5	RestoreV2save_149/Const!save_149/RestoreV2_5/tensor_names%save_149/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_149/Assign_5Assignlayer_2/b/biasessave_149/RestoreV2_5*
use_locking(*
T0*#
_class
loc:@layer_2/b/biases*
validate_shape(
�
save_149/restore_allNoOp^save_149/Assign^save_149/Assign_1^save_149/Assign_2^save_149/Assign_3^save_149/Assign_4^save_149/Assign_5
<
save_150/ConstConst*
valueB Bmodel*
dtype0
�
save_150/SaveV2/tensor_namesConst*
dtype0*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases
W
 save_150/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_150/SaveV2SaveV2save_150/Constsave_150/SaveV2/tensor_names save_150/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_150/control_dependencyIdentitysave_150/Const^save_150/SaveV2*
T0*!
_class
loc:@save_150/Const
[
save_150/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_150/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_150/RestoreV2	RestoreV2save_150/Constsave_150/RestoreV2/tensor_names#save_150/RestoreV2/shape_and_slices*
dtypes
2
�
save_150/AssignAssignlayer/W/Weightssave_150/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
\
!save_150/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
R
%save_150/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_150/RestoreV2_1	RestoreV2save_150/Const!save_150/RestoreV2_1/tensor_names%save_150/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_150/Assign_1Assignlayer/b/biasessave_150/RestoreV2_1*
use_locking(*
validate_shape(*
T0*!
_class
loc:@layer/b/biases
_
!save_150/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
R
%save_150/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_150/RestoreV2_2	RestoreV2save_150/Const!save_150/RestoreV2_2/tensor_names%save_150/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_150/Assign_2Assignlayer_1/W/Weightssave_150/RestoreV2_2*
use_locking(*
T0*$
_class
loc:@layer_1/W/Weights*
validate_shape(
^
!save_150/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
R
%save_150/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_150/RestoreV2_3	RestoreV2save_150/Const!save_150/RestoreV2_3/tensor_names%save_150/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_150/Assign_3Assignlayer_1/b/biasessave_150/RestoreV2_3*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_1/b/biases
_
!save_150/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_150/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
�
save_150/RestoreV2_4	RestoreV2save_150/Const!save_150/RestoreV2_4/tensor_names%save_150/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_150/Assign_4Assignlayer_2/W/Weightssave_150/RestoreV2_4*$
_class
loc:@layer_2/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_150/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_150/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_150/RestoreV2_5	RestoreV2save_150/Const!save_150/RestoreV2_5/tensor_names%save_150/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_150/Assign_5Assignlayer_2/b/biasessave_150/RestoreV2_5*
validate_shape(*#
_class
loc:@layer_2/b/biases*
T0*
use_locking(
�
save_150/restore_allNoOp^save_150/Assign^save_150/Assign_1^save_150/Assign_2^save_150/Assign_3^save_150/Assign_4^save_150/Assign_5
<
save_151/ConstConst*
dtype0*
valueB Bmodel
�
save_151/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_151/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_151/SaveV2SaveV2save_151/Constsave_151/SaveV2/tensor_names save_151/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_151/control_dependencyIdentitysave_151/Const^save_151/SaveV2*!
_class
loc:@save_151/Const*
T0
[
save_151/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_151/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_151/RestoreV2	RestoreV2save_151/Constsave_151/RestoreV2/tensor_names#save_151/RestoreV2/shape_and_slices*
dtypes
2
�
save_151/AssignAssignlayer/W/Weightssave_151/RestoreV2*"
_class
loc:@layer/W/Weights*
T0*
validate_shape(*
use_locking(
\
!save_151/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_151/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_151/RestoreV2_1	RestoreV2save_151/Const!save_151/RestoreV2_1/tensor_names%save_151/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_151/Assign_1Assignlayer/b/biasessave_151/RestoreV2_1*
validate_shape(*!
_class
loc:@layer/b/biases*
T0*
use_locking(
_
!save_151/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_151/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_151/RestoreV2_2	RestoreV2save_151/Const!save_151/RestoreV2_2/tensor_names%save_151/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_151/Assign_2Assignlayer_1/W/Weightssave_151/RestoreV2_2*$
_class
loc:@layer_1/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_151/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
R
%save_151/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_151/RestoreV2_3	RestoreV2save_151/Const!save_151/RestoreV2_3/tensor_names%save_151/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_151/Assign_3Assignlayer_1/b/biasessave_151/RestoreV2_3*
use_locking(*
T0*#
_class
loc:@layer_1/b/biases*
validate_shape(
_
!save_151/RestoreV2_4/tensor_namesConst*
dtype0*&
valueBBlayer_2/W/Weights
R
%save_151/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_151/RestoreV2_4	RestoreV2save_151/Const!save_151/RestoreV2_4/tensor_names%save_151/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_151/Assign_4Assignlayer_2/W/Weightssave_151/RestoreV2_4*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_2/W/Weights
^
!save_151/RestoreV2_5/tensor_namesConst*%
valueBBlayer_2/b/biases*
dtype0
R
%save_151/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_151/RestoreV2_5	RestoreV2save_151/Const!save_151/RestoreV2_5/tensor_names%save_151/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_151/Assign_5Assignlayer_2/b/biasessave_151/RestoreV2_5*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_2/b/biases
�
save_151/restore_allNoOp^save_151/Assign^save_151/Assign_1^save_151/Assign_2^save_151/Assign_3^save_151/Assign_4^save_151/Assign_5
<
save_152/ConstConst*
valueB Bmodel*
dtype0
�
save_152/SaveV2/tensor_namesConst*
dtype0*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases
W
 save_152/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_152/SaveV2SaveV2save_152/Constsave_152/SaveV2/tensor_names save_152/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_152/control_dependencyIdentitysave_152/Const^save_152/SaveV2*
T0*!
_class
loc:@save_152/Const
[
save_152/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
P
#save_152/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_152/RestoreV2	RestoreV2save_152/Constsave_152/RestoreV2/tensor_names#save_152/RestoreV2/shape_and_slices*
dtypes
2
�
save_152/AssignAssignlayer/W/Weightssave_152/RestoreV2*
use_locking(*
validate_shape(*
T0*"
_class
loc:@layer/W/Weights
\
!save_152/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
R
%save_152/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_152/RestoreV2_1	RestoreV2save_152/Const!save_152/RestoreV2_1/tensor_names%save_152/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_152/Assign_1Assignlayer/b/biasessave_152/RestoreV2_1*
use_locking(*
validate_shape(*
T0*!
_class
loc:@layer/b/biases
_
!save_152/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
R
%save_152/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_152/RestoreV2_2	RestoreV2save_152/Const!save_152/RestoreV2_2/tensor_names%save_152/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_152/Assign_2Assignlayer_1/W/Weightssave_152/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
^
!save_152/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
R
%save_152/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_152/RestoreV2_3	RestoreV2save_152/Const!save_152/RestoreV2_3/tensor_names%save_152/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_152/Assign_3Assignlayer_1/b/biasessave_152/RestoreV2_3*
use_locking(*
T0*#
_class
loc:@layer_1/b/biases*
validate_shape(
_
!save_152/RestoreV2_4/tensor_namesConst*
dtype0*&
valueBBlayer_2/W/Weights
R
%save_152/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
�
save_152/RestoreV2_4	RestoreV2save_152/Const!save_152/RestoreV2_4/tensor_names%save_152/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_152/Assign_4Assignlayer_2/W/Weightssave_152/RestoreV2_4*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_2/W/Weights
^
!save_152/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_152/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_152/RestoreV2_5	RestoreV2save_152/Const!save_152/RestoreV2_5/tensor_names%save_152/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_152/Assign_5Assignlayer_2/b/biasessave_152/RestoreV2_5*
use_locking(*
T0*#
_class
loc:@layer_2/b/biases*
validate_shape(
�
save_152/restore_allNoOp^save_152/Assign^save_152/Assign_1^save_152/Assign_2^save_152/Assign_3^save_152/Assign_4^save_152/Assign_5
<
save_153/ConstConst*
valueB Bmodel*
dtype0
�
save_153/SaveV2/tensor_namesConst*
dtype0*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases
W
 save_153/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B B B 
�
save_153/SaveV2SaveV2save_153/Constsave_153/SaveV2/tensor_names save_153/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_153/control_dependencyIdentitysave_153/Const^save_153/SaveV2*
T0*!
_class
loc:@save_153/Const
[
save_153/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_153/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_153/RestoreV2	RestoreV2save_153/Constsave_153/RestoreV2/tensor_names#save_153/RestoreV2/shape_and_slices*
dtypes
2
�
save_153/AssignAssignlayer/W/Weightssave_153/RestoreV2*
use_locking(*
validate_shape(*
T0*"
_class
loc:@layer/W/Weights
\
!save_153/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_153/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_153/RestoreV2_1	RestoreV2save_153/Const!save_153/RestoreV2_1/tensor_names%save_153/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_153/Assign_1Assignlayer/b/biasessave_153/RestoreV2_1*
use_locking(*
T0*!
_class
loc:@layer/b/biases*
validate_shape(
_
!save_153/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_153/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_153/RestoreV2_2	RestoreV2save_153/Const!save_153/RestoreV2_2/tensor_names%save_153/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_153/Assign_2Assignlayer_1/W/Weightssave_153/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
^
!save_153/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
R
%save_153/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_153/RestoreV2_3	RestoreV2save_153/Const!save_153/RestoreV2_3/tensor_names%save_153/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_153/Assign_3Assignlayer_1/b/biasessave_153/RestoreV2_3*#
_class
loc:@layer_1/b/biases*
T0*
validate_shape(*
use_locking(
_
!save_153/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_153/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_153/RestoreV2_4	RestoreV2save_153/Const!save_153/RestoreV2_4/tensor_names%save_153/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_153/Assign_4Assignlayer_2/W/Weightssave_153/RestoreV2_4*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_2/W/Weights
^
!save_153/RestoreV2_5/tensor_namesConst*%
valueBBlayer_2/b/biases*
dtype0
R
%save_153/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_153/RestoreV2_5	RestoreV2save_153/Const!save_153/RestoreV2_5/tensor_names%save_153/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_153/Assign_5Assignlayer_2/b/biasessave_153/RestoreV2_5*
use_locking(*
T0*#
_class
loc:@layer_2/b/biases*
validate_shape(
�
save_153/restore_allNoOp^save_153/Assign^save_153/Assign_1^save_153/Assign_2^save_153/Assign_3^save_153/Assign_4^save_153/Assign_5
<
save_154/ConstConst*
dtype0*
valueB Bmodel
�
save_154/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_154/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_154/SaveV2SaveV2save_154/Constsave_154/SaveV2/tensor_names save_154/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_154/control_dependencyIdentitysave_154/Const^save_154/SaveV2*!
_class
loc:@save_154/Const*
T0
[
save_154/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_154/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_154/RestoreV2	RestoreV2save_154/Constsave_154/RestoreV2/tensor_names#save_154/RestoreV2/shape_and_slices*
dtypes
2
�
save_154/AssignAssignlayer/W/Weightssave_154/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
\
!save_154/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
R
%save_154/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_154/RestoreV2_1	RestoreV2save_154/Const!save_154/RestoreV2_1/tensor_names%save_154/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_154/Assign_1Assignlayer/b/biasessave_154/RestoreV2_1*
validate_shape(*!
_class
loc:@layer/b/biases*
T0*
use_locking(
_
!save_154/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
R
%save_154/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_154/RestoreV2_2	RestoreV2save_154/Const!save_154/RestoreV2_2/tensor_names%save_154/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_154/Assign_2Assignlayer_1/W/Weightssave_154/RestoreV2_2*$
_class
loc:@layer_1/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_154/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
R
%save_154/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_154/RestoreV2_3	RestoreV2save_154/Const!save_154/RestoreV2_3/tensor_names%save_154/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_154/Assign_3Assignlayer_1/b/biasessave_154/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
_
!save_154/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_154/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_154/RestoreV2_4	RestoreV2save_154/Const!save_154/RestoreV2_4/tensor_names%save_154/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_154/Assign_4Assignlayer_2/W/Weightssave_154/RestoreV2_4*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_2/W/Weights
^
!save_154/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_154/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_154/RestoreV2_5	RestoreV2save_154/Const!save_154/RestoreV2_5/tensor_names%save_154/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_154/Assign_5Assignlayer_2/b/biasessave_154/RestoreV2_5*#
_class
loc:@layer_2/b/biases*
T0*
validate_shape(*
use_locking(
�
save_154/restore_allNoOp^save_154/Assign^save_154/Assign_1^save_154/Assign_2^save_154/Assign_3^save_154/Assign_4^save_154/Assign_5
<
save_155/ConstConst*
dtype0*
valueB Bmodel
�
save_155/SaveV2/tensor_namesConst*
dtype0*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases
W
 save_155/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B B B 
�
save_155/SaveV2SaveV2save_155/Constsave_155/SaveV2/tensor_names save_155/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_155/control_dependencyIdentitysave_155/Const^save_155/SaveV2*
T0*!
_class
loc:@save_155/Const
[
save_155/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
P
#save_155/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_155/RestoreV2	RestoreV2save_155/Constsave_155/RestoreV2/tensor_names#save_155/RestoreV2/shape_and_slices*
dtypes
2
�
save_155/AssignAssignlayer/W/Weightssave_155/RestoreV2*
use_locking(*
validate_shape(*
T0*"
_class
loc:@layer/W/Weights
\
!save_155/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_155/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_155/RestoreV2_1	RestoreV2save_155/Const!save_155/RestoreV2_1/tensor_names%save_155/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_155/Assign_1Assignlayer/b/biasessave_155/RestoreV2_1*!
_class
loc:@layer/b/biases*
T0*
validate_shape(*
use_locking(
_
!save_155/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_155/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_155/RestoreV2_2	RestoreV2save_155/Const!save_155/RestoreV2_2/tensor_names%save_155/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_155/Assign_2Assignlayer_1/W/Weightssave_155/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
^
!save_155/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
R
%save_155/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_155/RestoreV2_3	RestoreV2save_155/Const!save_155/RestoreV2_3/tensor_names%save_155/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_155/Assign_3Assignlayer_1/b/biasessave_155/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
_
!save_155/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_155/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_155/RestoreV2_4	RestoreV2save_155/Const!save_155/RestoreV2_4/tensor_names%save_155/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_155/Assign_4Assignlayer_2/W/Weightssave_155/RestoreV2_4*
validate_shape(*$
_class
loc:@layer_2/W/Weights*
T0*
use_locking(
^
!save_155/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_155/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_155/RestoreV2_5	RestoreV2save_155/Const!save_155/RestoreV2_5/tensor_names%save_155/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_155/Assign_5Assignlayer_2/b/biasessave_155/RestoreV2_5*
validate_shape(*#
_class
loc:@layer_2/b/biases*
T0*
use_locking(
�
save_155/restore_allNoOp^save_155/Assign^save_155/Assign_1^save_155/Assign_2^save_155/Assign_3^save_155/Assign_4^save_155/Assign_5
<
save_156/ConstConst*
dtype0*
valueB Bmodel
�
save_156/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_156/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_156/SaveV2SaveV2save_156/Constsave_156/SaveV2/tensor_names save_156/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_156/control_dependencyIdentitysave_156/Const^save_156/SaveV2*!
_class
loc:@save_156/Const*
T0
[
save_156/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
P
#save_156/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_156/RestoreV2	RestoreV2save_156/Constsave_156/RestoreV2/tensor_names#save_156/RestoreV2/shape_and_slices*
dtypes
2
�
save_156/AssignAssignlayer/W/Weightssave_156/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
\
!save_156/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_156/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_156/RestoreV2_1	RestoreV2save_156/Const!save_156/RestoreV2_1/tensor_names%save_156/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_156/Assign_1Assignlayer/b/biasessave_156/RestoreV2_1*
use_locking(*
T0*!
_class
loc:@layer/b/biases*
validate_shape(
_
!save_156/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_156/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_156/RestoreV2_2	RestoreV2save_156/Const!save_156/RestoreV2_2/tensor_names%save_156/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_156/Assign_2Assignlayer_1/W/Weightssave_156/RestoreV2_2*$
_class
loc:@layer_1/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_156/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
R
%save_156/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_156/RestoreV2_3	RestoreV2save_156/Const!save_156/RestoreV2_3/tensor_names%save_156/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_156/Assign_3Assignlayer_1/b/biasessave_156/RestoreV2_3*#
_class
loc:@layer_1/b/biases*
T0*
validate_shape(*
use_locking(
_
!save_156/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_156/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
�
save_156/RestoreV2_4	RestoreV2save_156/Const!save_156/RestoreV2_4/tensor_names%save_156/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_156/Assign_4Assignlayer_2/W/Weightssave_156/RestoreV2_4*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_2/W/Weights
^
!save_156/RestoreV2_5/tensor_namesConst*%
valueBBlayer_2/b/biases*
dtype0
R
%save_156/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_156/RestoreV2_5	RestoreV2save_156/Const!save_156/RestoreV2_5/tensor_names%save_156/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_156/Assign_5Assignlayer_2/b/biasessave_156/RestoreV2_5*
use_locking(*
T0*#
_class
loc:@layer_2/b/biases*
validate_shape(
�
save_156/restore_allNoOp^save_156/Assign^save_156/Assign_1^save_156/Assign_2^save_156/Assign_3^save_156/Assign_4^save_156/Assign_5
<
save_157/ConstConst*
dtype0*
valueB Bmodel
�
save_157/SaveV2/tensor_namesConst*
dtype0*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases
W
 save_157/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B B B 
�
save_157/SaveV2SaveV2save_157/Constsave_157/SaveV2/tensor_names save_157/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_157/control_dependencyIdentitysave_157/Const^save_157/SaveV2*!
_class
loc:@save_157/Const*
T0
[
save_157/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_157/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_157/RestoreV2	RestoreV2save_157/Constsave_157/RestoreV2/tensor_names#save_157/RestoreV2/shape_and_slices*
dtypes
2
�
save_157/AssignAssignlayer/W/Weightssave_157/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
\
!save_157/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_157/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_157/RestoreV2_1	RestoreV2save_157/Const!save_157/RestoreV2_1/tensor_names%save_157/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_157/Assign_1Assignlayer/b/biasessave_157/RestoreV2_1*
validate_shape(*!
_class
loc:@layer/b/biases*
T0*
use_locking(
_
!save_157/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
R
%save_157/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_157/RestoreV2_2	RestoreV2save_157/Const!save_157/RestoreV2_2/tensor_names%save_157/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_157/Assign_2Assignlayer_1/W/Weightssave_157/RestoreV2_2*
validate_shape(*$
_class
loc:@layer_1/W/Weights*
T0*
use_locking(
^
!save_157/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
R
%save_157/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_157/RestoreV2_3	RestoreV2save_157/Const!save_157/RestoreV2_3/tensor_names%save_157/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_157/Assign_3Assignlayer_1/b/biasessave_157/RestoreV2_3*#
_class
loc:@layer_1/b/biases*
T0*
validate_shape(*
use_locking(
_
!save_157/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_157/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
�
save_157/RestoreV2_4	RestoreV2save_157/Const!save_157/RestoreV2_4/tensor_names%save_157/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_157/Assign_4Assignlayer_2/W/Weightssave_157/RestoreV2_4*
use_locking(*
T0*$
_class
loc:@layer_2/W/Weights*
validate_shape(
^
!save_157/RestoreV2_5/tensor_namesConst*%
valueBBlayer_2/b/biases*
dtype0
R
%save_157/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_157/RestoreV2_5	RestoreV2save_157/Const!save_157/RestoreV2_5/tensor_names%save_157/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_157/Assign_5Assignlayer_2/b/biasessave_157/RestoreV2_5*
use_locking(*
T0*#
_class
loc:@layer_2/b/biases*
validate_shape(
�
save_157/restore_allNoOp^save_157/Assign^save_157/Assign_1^save_157/Assign_2^save_157/Assign_3^save_157/Assign_4^save_157/Assign_5
<
save_158/ConstConst*
dtype0*
valueB Bmodel
�
save_158/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_158/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B B B 
�
save_158/SaveV2SaveV2save_158/Constsave_158/SaveV2/tensor_names save_158/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_158/control_dependencyIdentitysave_158/Const^save_158/SaveV2*!
_class
loc:@save_158/Const*
T0
[
save_158/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
P
#save_158/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_158/RestoreV2	RestoreV2save_158/Constsave_158/RestoreV2/tensor_names#save_158/RestoreV2/shape_and_slices*
dtypes
2
�
save_158/AssignAssignlayer/W/Weightssave_158/RestoreV2*
use_locking(*
validate_shape(*
T0*"
_class
loc:@layer/W/Weights
\
!save_158/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
R
%save_158/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_158/RestoreV2_1	RestoreV2save_158/Const!save_158/RestoreV2_1/tensor_names%save_158/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_158/Assign_1Assignlayer/b/biasessave_158/RestoreV2_1*
use_locking(*
validate_shape(*
T0*!
_class
loc:@layer/b/biases
_
!save_158/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_158/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_158/RestoreV2_2	RestoreV2save_158/Const!save_158/RestoreV2_2/tensor_names%save_158/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_158/Assign_2Assignlayer_1/W/Weightssave_158/RestoreV2_2*
use_locking(*
T0*$
_class
loc:@layer_1/W/Weights*
validate_shape(
^
!save_158/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
R
%save_158/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_158/RestoreV2_3	RestoreV2save_158/Const!save_158/RestoreV2_3/tensor_names%save_158/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_158/Assign_3Assignlayer_1/b/biasessave_158/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
_
!save_158/RestoreV2_4/tensor_namesConst*
dtype0*&
valueBBlayer_2/W/Weights
R
%save_158/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
�
save_158/RestoreV2_4	RestoreV2save_158/Const!save_158/RestoreV2_4/tensor_names%save_158/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_158/Assign_4Assignlayer_2/W/Weightssave_158/RestoreV2_4*
use_locking(*
T0*$
_class
loc:@layer_2/W/Weights*
validate_shape(
^
!save_158/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_158/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_158/RestoreV2_5	RestoreV2save_158/Const!save_158/RestoreV2_5/tensor_names%save_158/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_158/Assign_5Assignlayer_2/b/biasessave_158/RestoreV2_5*#
_class
loc:@layer_2/b/biases*
T0*
validate_shape(*
use_locking(
�
save_158/restore_allNoOp^save_158/Assign^save_158/Assign_1^save_158/Assign_2^save_158/Assign_3^save_158/Assign_4^save_158/Assign_5
<
save_159/ConstConst*
valueB Bmodel*
dtype0
�
save_159/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_159/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_159/SaveV2SaveV2save_159/Constsave_159/SaveV2/tensor_names save_159/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_159/control_dependencyIdentitysave_159/Const^save_159/SaveV2*
T0*!
_class
loc:@save_159/Const
[
save_159/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_159/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_159/RestoreV2	RestoreV2save_159/Constsave_159/RestoreV2/tensor_names#save_159/RestoreV2/shape_and_slices*
dtypes
2
�
save_159/AssignAssignlayer/W/Weightssave_159/RestoreV2*"
_class
loc:@layer/W/Weights*
T0*
validate_shape(*
use_locking(
\
!save_159/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
R
%save_159/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_159/RestoreV2_1	RestoreV2save_159/Const!save_159/RestoreV2_1/tensor_names%save_159/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_159/Assign_1Assignlayer/b/biasessave_159/RestoreV2_1*
use_locking(*
validate_shape(*
T0*!
_class
loc:@layer/b/biases
_
!save_159/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
R
%save_159/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_159/RestoreV2_2	RestoreV2save_159/Const!save_159/RestoreV2_2/tensor_names%save_159/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_159/Assign_2Assignlayer_1/W/Weightssave_159/RestoreV2_2*$
_class
loc:@layer_1/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_159/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
R
%save_159/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_159/RestoreV2_3	RestoreV2save_159/Const!save_159/RestoreV2_3/tensor_names%save_159/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_159/Assign_3Assignlayer_1/b/biasessave_159/RestoreV2_3*
use_locking(*
T0*#
_class
loc:@layer_1/b/biases*
validate_shape(
_
!save_159/RestoreV2_4/tensor_namesConst*
dtype0*&
valueBBlayer_2/W/Weights
R
%save_159/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
�
save_159/RestoreV2_4	RestoreV2save_159/Const!save_159/RestoreV2_4/tensor_names%save_159/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_159/Assign_4Assignlayer_2/W/Weightssave_159/RestoreV2_4*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_2/W/Weights
^
!save_159/RestoreV2_5/tensor_namesConst*%
valueBBlayer_2/b/biases*
dtype0
R
%save_159/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_159/RestoreV2_5	RestoreV2save_159/Const!save_159/RestoreV2_5/tensor_names%save_159/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_159/Assign_5Assignlayer_2/b/biasessave_159/RestoreV2_5*
validate_shape(*#
_class
loc:@layer_2/b/biases*
T0*
use_locking(
�
save_159/restore_allNoOp^save_159/Assign^save_159/Assign_1^save_159/Assign_2^save_159/Assign_3^save_159/Assign_4^save_159/Assign_5
<
save_160/ConstConst*
valueB Bmodel*
dtype0
�
save_160/SaveV2/tensor_namesConst*
dtype0*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases
W
 save_160/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B B B 
�
save_160/SaveV2SaveV2save_160/Constsave_160/SaveV2/tensor_names save_160/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_160/control_dependencyIdentitysave_160/Const^save_160/SaveV2*
T0*!
_class
loc:@save_160/Const
[
save_160/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_160/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_160/RestoreV2	RestoreV2save_160/Constsave_160/RestoreV2/tensor_names#save_160/RestoreV2/shape_and_slices*
dtypes
2
�
save_160/AssignAssignlayer/W/Weightssave_160/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
\
!save_160/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
R
%save_160/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_160/RestoreV2_1	RestoreV2save_160/Const!save_160/RestoreV2_1/tensor_names%save_160/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_160/Assign_1Assignlayer/b/biasessave_160/RestoreV2_1*
validate_shape(*!
_class
loc:@layer/b/biases*
T0*
use_locking(
_
!save_160/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_160/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_160/RestoreV2_2	RestoreV2save_160/Const!save_160/RestoreV2_2/tensor_names%save_160/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_160/Assign_2Assignlayer_1/W/Weightssave_160/RestoreV2_2*
use_locking(*
T0*$
_class
loc:@layer_1/W/Weights*
validate_shape(
^
!save_160/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
R
%save_160/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_160/RestoreV2_3	RestoreV2save_160/Const!save_160/RestoreV2_3/tensor_names%save_160/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_160/Assign_3Assignlayer_1/b/biasessave_160/RestoreV2_3*#
_class
loc:@layer_1/b/biases*
T0*
validate_shape(*
use_locking(
_
!save_160/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_160/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
�
save_160/RestoreV2_4	RestoreV2save_160/Const!save_160/RestoreV2_4/tensor_names%save_160/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_160/Assign_4Assignlayer_2/W/Weightssave_160/RestoreV2_4*
validate_shape(*$
_class
loc:@layer_2/W/Weights*
T0*
use_locking(
^
!save_160/RestoreV2_5/tensor_namesConst*%
valueBBlayer_2/b/biases*
dtype0
R
%save_160/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_160/RestoreV2_5	RestoreV2save_160/Const!save_160/RestoreV2_5/tensor_names%save_160/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_160/Assign_5Assignlayer_2/b/biasessave_160/RestoreV2_5*
use_locking(*
T0*#
_class
loc:@layer_2/b/biases*
validate_shape(
�
save_160/restore_allNoOp^save_160/Assign^save_160/Assign_1^save_160/Assign_2^save_160/Assign_3^save_160/Assign_4^save_160/Assign_5
<
save_161/ConstConst*
valueB Bmodel*
dtype0
�
save_161/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_161/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_161/SaveV2SaveV2save_161/Constsave_161/SaveV2/tensor_names save_161/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_161/control_dependencyIdentitysave_161/Const^save_161/SaveV2*
T0*!
_class
loc:@save_161/Const
[
save_161/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
P
#save_161/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_161/RestoreV2	RestoreV2save_161/Constsave_161/RestoreV2/tensor_names#save_161/RestoreV2/shape_and_slices*
dtypes
2
�
save_161/AssignAssignlayer/W/Weightssave_161/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
\
!save_161/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_161/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_161/RestoreV2_1	RestoreV2save_161/Const!save_161/RestoreV2_1/tensor_names%save_161/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_161/Assign_1Assignlayer/b/biasessave_161/RestoreV2_1*
use_locking(*
validate_shape(*
T0*!
_class
loc:@layer/b/biases
_
!save_161/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_161/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_161/RestoreV2_2	RestoreV2save_161/Const!save_161/RestoreV2_2/tensor_names%save_161/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_161/Assign_2Assignlayer_1/W/Weightssave_161/RestoreV2_2*
use_locking(*
T0*$
_class
loc:@layer_1/W/Weights*
validate_shape(
^
!save_161/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
R
%save_161/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_161/RestoreV2_3	RestoreV2save_161/Const!save_161/RestoreV2_3/tensor_names%save_161/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_161/Assign_3Assignlayer_1/b/biasessave_161/RestoreV2_3*
use_locking(*
T0*#
_class
loc:@layer_1/b/biases*
validate_shape(
_
!save_161/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_161/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
�
save_161/RestoreV2_4	RestoreV2save_161/Const!save_161/RestoreV2_4/tensor_names%save_161/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_161/Assign_4Assignlayer_2/W/Weightssave_161/RestoreV2_4*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_2/W/Weights
^
!save_161/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_161/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_161/RestoreV2_5	RestoreV2save_161/Const!save_161/RestoreV2_5/tensor_names%save_161/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_161/Assign_5Assignlayer_2/b/biasessave_161/RestoreV2_5*
validate_shape(*#
_class
loc:@layer_2/b/biases*
T0*
use_locking(
�
save_161/restore_allNoOp^save_161/Assign^save_161/Assign_1^save_161/Assign_2^save_161/Assign_3^save_161/Assign_4^save_161/Assign_5
<
save_162/ConstConst*
valueB Bmodel*
dtype0
�
save_162/SaveV2/tensor_namesConst*
dtype0*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases
W
 save_162/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B B B 
�
save_162/SaveV2SaveV2save_162/Constsave_162/SaveV2/tensor_names save_162/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_162/control_dependencyIdentitysave_162/Const^save_162/SaveV2*
T0*!
_class
loc:@save_162/Const
[
save_162/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
P
#save_162/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_162/RestoreV2	RestoreV2save_162/Constsave_162/RestoreV2/tensor_names#save_162/RestoreV2/shape_and_slices*
dtypes
2
�
save_162/AssignAssignlayer/W/Weightssave_162/RestoreV2*
use_locking(*
validate_shape(*
T0*"
_class
loc:@layer/W/Weights
\
!save_162/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
R
%save_162/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_162/RestoreV2_1	RestoreV2save_162/Const!save_162/RestoreV2_1/tensor_names%save_162/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_162/Assign_1Assignlayer/b/biasessave_162/RestoreV2_1*!
_class
loc:@layer/b/biases*
T0*
validate_shape(*
use_locking(
_
!save_162/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
R
%save_162/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_162/RestoreV2_2	RestoreV2save_162/Const!save_162/RestoreV2_2/tensor_names%save_162/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_162/Assign_2Assignlayer_1/W/Weightssave_162/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
^
!save_162/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
R
%save_162/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_162/RestoreV2_3	RestoreV2save_162/Const!save_162/RestoreV2_3/tensor_names%save_162/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_162/Assign_3Assignlayer_1/b/biasessave_162/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
_
!save_162/RestoreV2_4/tensor_namesConst*
dtype0*&
valueBBlayer_2/W/Weights
R
%save_162/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
�
save_162/RestoreV2_4	RestoreV2save_162/Const!save_162/RestoreV2_4/tensor_names%save_162/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_162/Assign_4Assignlayer_2/W/Weightssave_162/RestoreV2_4*
use_locking(*
T0*$
_class
loc:@layer_2/W/Weights*
validate_shape(
^
!save_162/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_162/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_162/RestoreV2_5	RestoreV2save_162/Const!save_162/RestoreV2_5/tensor_names%save_162/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_162/Assign_5Assignlayer_2/b/biasessave_162/RestoreV2_5*#
_class
loc:@layer_2/b/biases*
T0*
validate_shape(*
use_locking(
�
save_162/restore_allNoOp^save_162/Assign^save_162/Assign_1^save_162/Assign_2^save_162/Assign_3^save_162/Assign_4^save_162/Assign_5
<
save_163/ConstConst*
dtype0*
valueB Bmodel
�
save_163/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_163/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B B B 
�
save_163/SaveV2SaveV2save_163/Constsave_163/SaveV2/tensor_names save_163/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_163/control_dependencyIdentitysave_163/Const^save_163/SaveV2*!
_class
loc:@save_163/Const*
T0
[
save_163/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
P
#save_163/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_163/RestoreV2	RestoreV2save_163/Constsave_163/RestoreV2/tensor_names#save_163/RestoreV2/shape_and_slices*
dtypes
2
�
save_163/AssignAssignlayer/W/Weightssave_163/RestoreV2*
use_locking(*
validate_shape(*
T0*"
_class
loc:@layer/W/Weights
\
!save_163/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
R
%save_163/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_163/RestoreV2_1	RestoreV2save_163/Const!save_163/RestoreV2_1/tensor_names%save_163/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_163/Assign_1Assignlayer/b/biasessave_163/RestoreV2_1*
use_locking(*
T0*!
_class
loc:@layer/b/biases*
validate_shape(
_
!save_163/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
R
%save_163/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_163/RestoreV2_2	RestoreV2save_163/Const!save_163/RestoreV2_2/tensor_names%save_163/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_163/Assign_2Assignlayer_1/W/Weightssave_163/RestoreV2_2*
validate_shape(*$
_class
loc:@layer_1/W/Weights*
T0*
use_locking(
^
!save_163/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
R
%save_163/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_163/RestoreV2_3	RestoreV2save_163/Const!save_163/RestoreV2_3/tensor_names%save_163/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_163/Assign_3Assignlayer_1/b/biasessave_163/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
_
!save_163/RestoreV2_4/tensor_namesConst*
dtype0*&
valueBBlayer_2/W/Weights
R
%save_163/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_163/RestoreV2_4	RestoreV2save_163/Const!save_163/RestoreV2_4/tensor_names%save_163/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_163/Assign_4Assignlayer_2/W/Weightssave_163/RestoreV2_4*
use_locking(*
T0*$
_class
loc:@layer_2/W/Weights*
validate_shape(
^
!save_163/RestoreV2_5/tensor_namesConst*%
valueBBlayer_2/b/biases*
dtype0
R
%save_163/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_163/RestoreV2_5	RestoreV2save_163/Const!save_163/RestoreV2_5/tensor_names%save_163/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_163/Assign_5Assignlayer_2/b/biasessave_163/RestoreV2_5*#
_class
loc:@layer_2/b/biases*
T0*
validate_shape(*
use_locking(
�
save_163/restore_allNoOp^save_163/Assign^save_163/Assign_1^save_163/Assign_2^save_163/Assign_3^save_163/Assign_4^save_163/Assign_5
<
save_164/ConstConst*
dtype0*
valueB Bmodel
�
save_164/SaveV2/tensor_namesConst*
dtype0*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases
W
 save_164/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_164/SaveV2SaveV2save_164/Constsave_164/SaveV2/tensor_names save_164/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_164/control_dependencyIdentitysave_164/Const^save_164/SaveV2*
T0*!
_class
loc:@save_164/Const
[
save_164/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_164/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_164/RestoreV2	RestoreV2save_164/Constsave_164/RestoreV2/tensor_names#save_164/RestoreV2/shape_and_slices*
dtypes
2
�
save_164/AssignAssignlayer/W/Weightssave_164/RestoreV2*"
_class
loc:@layer/W/Weights*
T0*
validate_shape(*
use_locking(
\
!save_164/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
R
%save_164/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_164/RestoreV2_1	RestoreV2save_164/Const!save_164/RestoreV2_1/tensor_names%save_164/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_164/Assign_1Assignlayer/b/biasessave_164/RestoreV2_1*
use_locking(*
validate_shape(*
T0*!
_class
loc:@layer/b/biases
_
!save_164/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
R
%save_164/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_164/RestoreV2_2	RestoreV2save_164/Const!save_164/RestoreV2_2/tensor_names%save_164/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_164/Assign_2Assignlayer_1/W/Weightssave_164/RestoreV2_2*
use_locking(*
T0*$
_class
loc:@layer_1/W/Weights*
validate_shape(
^
!save_164/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
R
%save_164/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_164/RestoreV2_3	RestoreV2save_164/Const!save_164/RestoreV2_3/tensor_names%save_164/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_164/Assign_3Assignlayer_1/b/biasessave_164/RestoreV2_3*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_1/b/biases
_
!save_164/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_164/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
�
save_164/RestoreV2_4	RestoreV2save_164/Const!save_164/RestoreV2_4/tensor_names%save_164/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_164/Assign_4Assignlayer_2/W/Weightssave_164/RestoreV2_4*
validate_shape(*$
_class
loc:@layer_2/W/Weights*
T0*
use_locking(
^
!save_164/RestoreV2_5/tensor_namesConst*%
valueBBlayer_2/b/biases*
dtype0
R
%save_164/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_164/RestoreV2_5	RestoreV2save_164/Const!save_164/RestoreV2_5/tensor_names%save_164/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_164/Assign_5Assignlayer_2/b/biasessave_164/RestoreV2_5*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_2/b/biases
�
save_164/restore_allNoOp^save_164/Assign^save_164/Assign_1^save_164/Assign_2^save_164/Assign_3^save_164/Assign_4^save_164/Assign_5
<
save_165/ConstConst*
valueB Bmodel*
dtype0
�
save_165/SaveV2/tensor_namesConst*
dtype0*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases
W
 save_165/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B B B 
�
save_165/SaveV2SaveV2save_165/Constsave_165/SaveV2/tensor_names save_165/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_165/control_dependencyIdentitysave_165/Const^save_165/SaveV2*
T0*!
_class
loc:@save_165/Const
[
save_165/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_165/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_165/RestoreV2	RestoreV2save_165/Constsave_165/RestoreV2/tensor_names#save_165/RestoreV2/shape_and_slices*
dtypes
2
�
save_165/AssignAssignlayer/W/Weightssave_165/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
\
!save_165/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_165/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_165/RestoreV2_1	RestoreV2save_165/Const!save_165/RestoreV2_1/tensor_names%save_165/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_165/Assign_1Assignlayer/b/biasessave_165/RestoreV2_1*!
_class
loc:@layer/b/biases*
T0*
validate_shape(*
use_locking(
_
!save_165/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_165/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_165/RestoreV2_2	RestoreV2save_165/Const!save_165/RestoreV2_2/tensor_names%save_165/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_165/Assign_2Assignlayer_1/W/Weightssave_165/RestoreV2_2*
use_locking(*
T0*$
_class
loc:@layer_1/W/Weights*
validate_shape(
^
!save_165/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
R
%save_165/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_165/RestoreV2_3	RestoreV2save_165/Const!save_165/RestoreV2_3/tensor_names%save_165/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_165/Assign_3Assignlayer_1/b/biasessave_165/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
_
!save_165/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_165/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_165/RestoreV2_4	RestoreV2save_165/Const!save_165/RestoreV2_4/tensor_names%save_165/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_165/Assign_4Assignlayer_2/W/Weightssave_165/RestoreV2_4*$
_class
loc:@layer_2/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_165/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_165/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_165/RestoreV2_5	RestoreV2save_165/Const!save_165/RestoreV2_5/tensor_names%save_165/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_165/Assign_5Assignlayer_2/b/biasessave_165/RestoreV2_5*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_2/b/biases
�
save_165/restore_allNoOp^save_165/Assign^save_165/Assign_1^save_165/Assign_2^save_165/Assign_3^save_165/Assign_4^save_165/Assign_5
<
save_166/ConstConst*
valueB Bmodel*
dtype0
�
save_166/SaveV2/tensor_namesConst*
dtype0*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases
W
 save_166/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_166/SaveV2SaveV2save_166/Constsave_166/SaveV2/tensor_names save_166/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_166/control_dependencyIdentitysave_166/Const^save_166/SaveV2*!
_class
loc:@save_166/Const*
T0
[
save_166/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
P
#save_166/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_166/RestoreV2	RestoreV2save_166/Constsave_166/RestoreV2/tensor_names#save_166/RestoreV2/shape_and_slices*
dtypes
2
�
save_166/AssignAssignlayer/W/Weightssave_166/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
\
!save_166/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_166/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_166/RestoreV2_1	RestoreV2save_166/Const!save_166/RestoreV2_1/tensor_names%save_166/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_166/Assign_1Assignlayer/b/biasessave_166/RestoreV2_1*
use_locking(*
validate_shape(*
T0*!
_class
loc:@layer/b/biases
_
!save_166/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_166/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_166/RestoreV2_2	RestoreV2save_166/Const!save_166/RestoreV2_2/tensor_names%save_166/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_166/Assign_2Assignlayer_1/W/Weightssave_166/RestoreV2_2*$
_class
loc:@layer_1/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_166/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
R
%save_166/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_166/RestoreV2_3	RestoreV2save_166/Const!save_166/RestoreV2_3/tensor_names%save_166/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_166/Assign_3Assignlayer_1/b/biasessave_166/RestoreV2_3*
use_locking(*
T0*#
_class
loc:@layer_1/b/biases*
validate_shape(
_
!save_166/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_166/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
�
save_166/RestoreV2_4	RestoreV2save_166/Const!save_166/RestoreV2_4/tensor_names%save_166/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_166/Assign_4Assignlayer_2/W/Weightssave_166/RestoreV2_4*$
_class
loc:@layer_2/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_166/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_166/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_166/RestoreV2_5	RestoreV2save_166/Const!save_166/RestoreV2_5/tensor_names%save_166/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_166/Assign_5Assignlayer_2/b/biasessave_166/RestoreV2_5*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_2/b/biases
�
save_166/restore_allNoOp^save_166/Assign^save_166/Assign_1^save_166/Assign_2^save_166/Assign_3^save_166/Assign_4^save_166/Assign_5
<
save_167/ConstConst*
valueB Bmodel*
dtype0
�
save_167/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_167/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_167/SaveV2SaveV2save_167/Constsave_167/SaveV2/tensor_names save_167/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_167/control_dependencyIdentitysave_167/Const^save_167/SaveV2*!
_class
loc:@save_167/Const*
T0
[
save_167/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
P
#save_167/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_167/RestoreV2	RestoreV2save_167/Constsave_167/RestoreV2/tensor_names#save_167/RestoreV2/shape_and_slices*
dtypes
2
�
save_167/AssignAssignlayer/W/Weightssave_167/RestoreV2*
use_locking(*
validate_shape(*
T0*"
_class
loc:@layer/W/Weights
\
!save_167/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
R
%save_167/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_167/RestoreV2_1	RestoreV2save_167/Const!save_167/RestoreV2_1/tensor_names%save_167/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_167/Assign_1Assignlayer/b/biasessave_167/RestoreV2_1*
use_locking(*
T0*!
_class
loc:@layer/b/biases*
validate_shape(
_
!save_167/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
R
%save_167/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_167/RestoreV2_2	RestoreV2save_167/Const!save_167/RestoreV2_2/tensor_names%save_167/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_167/Assign_2Assignlayer_1/W/Weightssave_167/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
^
!save_167/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
R
%save_167/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_167/RestoreV2_3	RestoreV2save_167/Const!save_167/RestoreV2_3/tensor_names%save_167/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_167/Assign_3Assignlayer_1/b/biasessave_167/RestoreV2_3*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_1/b/biases
_
!save_167/RestoreV2_4/tensor_namesConst*
dtype0*&
valueBBlayer_2/W/Weights
R
%save_167/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
�
save_167/RestoreV2_4	RestoreV2save_167/Const!save_167/RestoreV2_4/tensor_names%save_167/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_167/Assign_4Assignlayer_2/W/Weightssave_167/RestoreV2_4*$
_class
loc:@layer_2/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_167/RestoreV2_5/tensor_namesConst*%
valueBBlayer_2/b/biases*
dtype0
R
%save_167/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_167/RestoreV2_5	RestoreV2save_167/Const!save_167/RestoreV2_5/tensor_names%save_167/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_167/Assign_5Assignlayer_2/b/biasessave_167/RestoreV2_5*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_2/b/biases
�
save_167/restore_allNoOp^save_167/Assign^save_167/Assign_1^save_167/Assign_2^save_167/Assign_3^save_167/Assign_4^save_167/Assign_5
<
save_168/ConstConst*
dtype0*
valueB Bmodel
�
save_168/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_168/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B B B 
�
save_168/SaveV2SaveV2save_168/Constsave_168/SaveV2/tensor_names save_168/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_168/control_dependencyIdentitysave_168/Const^save_168/SaveV2*!
_class
loc:@save_168/Const*
T0
[
save_168/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
P
#save_168/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_168/RestoreV2	RestoreV2save_168/Constsave_168/RestoreV2/tensor_names#save_168/RestoreV2/shape_and_slices*
dtypes
2
�
save_168/AssignAssignlayer/W/Weightssave_168/RestoreV2*"
_class
loc:@layer/W/Weights*
T0*
validate_shape(*
use_locking(
\
!save_168/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
R
%save_168/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_168/RestoreV2_1	RestoreV2save_168/Const!save_168/RestoreV2_1/tensor_names%save_168/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_168/Assign_1Assignlayer/b/biasessave_168/RestoreV2_1*!
_class
loc:@layer/b/biases*
T0*
validate_shape(*
use_locking(
_
!save_168/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
R
%save_168/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_168/RestoreV2_2	RestoreV2save_168/Const!save_168/RestoreV2_2/tensor_names%save_168/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_168/Assign_2Assignlayer_1/W/Weightssave_168/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
^
!save_168/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
R
%save_168/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_168/RestoreV2_3	RestoreV2save_168/Const!save_168/RestoreV2_3/tensor_names%save_168/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_168/Assign_3Assignlayer_1/b/biasessave_168/RestoreV2_3*#
_class
loc:@layer_1/b/biases*
T0*
validate_shape(*
use_locking(
_
!save_168/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_168/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_168/RestoreV2_4	RestoreV2save_168/Const!save_168/RestoreV2_4/tensor_names%save_168/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_168/Assign_4Assignlayer_2/W/Weightssave_168/RestoreV2_4*
use_locking(*
T0*$
_class
loc:@layer_2/W/Weights*
validate_shape(
^
!save_168/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_168/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_168/RestoreV2_5	RestoreV2save_168/Const!save_168/RestoreV2_5/tensor_names%save_168/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_168/Assign_5Assignlayer_2/b/biasessave_168/RestoreV2_5*
validate_shape(*#
_class
loc:@layer_2/b/biases*
T0*
use_locking(
�
save_168/restore_allNoOp^save_168/Assign^save_168/Assign_1^save_168/Assign_2^save_168/Assign_3^save_168/Assign_4^save_168/Assign_5
<
save_169/ConstConst*
valueB Bmodel*
dtype0
�
save_169/SaveV2/tensor_namesConst*
dtype0*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases
W
 save_169/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_169/SaveV2SaveV2save_169/Constsave_169/SaveV2/tensor_names save_169/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_169/control_dependencyIdentitysave_169/Const^save_169/SaveV2*!
_class
loc:@save_169/Const*
T0
[
save_169/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_169/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_169/RestoreV2	RestoreV2save_169/Constsave_169/RestoreV2/tensor_names#save_169/RestoreV2/shape_and_slices*
dtypes
2
�
save_169/AssignAssignlayer/W/Weightssave_169/RestoreV2*"
_class
loc:@layer/W/Weights*
T0*
validate_shape(*
use_locking(
\
!save_169/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
R
%save_169/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_169/RestoreV2_1	RestoreV2save_169/Const!save_169/RestoreV2_1/tensor_names%save_169/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_169/Assign_1Assignlayer/b/biasessave_169/RestoreV2_1*
use_locking(*
validate_shape(*
T0*!
_class
loc:@layer/b/biases
_
!save_169/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
R
%save_169/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_169/RestoreV2_2	RestoreV2save_169/Const!save_169/RestoreV2_2/tensor_names%save_169/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_169/Assign_2Assignlayer_1/W/Weightssave_169/RestoreV2_2*
use_locking(*
T0*$
_class
loc:@layer_1/W/Weights*
validate_shape(
^
!save_169/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
R
%save_169/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_169/RestoreV2_3	RestoreV2save_169/Const!save_169/RestoreV2_3/tensor_names%save_169/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_169/Assign_3Assignlayer_1/b/biasessave_169/RestoreV2_3*#
_class
loc:@layer_1/b/biases*
T0*
validate_shape(*
use_locking(
_
!save_169/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_169/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
�
save_169/RestoreV2_4	RestoreV2save_169/Const!save_169/RestoreV2_4/tensor_names%save_169/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_169/Assign_4Assignlayer_2/W/Weightssave_169/RestoreV2_4*
validate_shape(*$
_class
loc:@layer_2/W/Weights*
T0*
use_locking(
^
!save_169/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_169/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_169/RestoreV2_5	RestoreV2save_169/Const!save_169/RestoreV2_5/tensor_names%save_169/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_169/Assign_5Assignlayer_2/b/biasessave_169/RestoreV2_5*
use_locking(*
T0*#
_class
loc:@layer_2/b/biases*
validate_shape(
�
save_169/restore_allNoOp^save_169/Assign^save_169/Assign_1^save_169/Assign_2^save_169/Assign_3^save_169/Assign_4^save_169/Assign_5
<
save_170/ConstConst*
dtype0*
valueB Bmodel
�
save_170/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_170/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_170/SaveV2SaveV2save_170/Constsave_170/SaveV2/tensor_names save_170/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_170/control_dependencyIdentitysave_170/Const^save_170/SaveV2*!
_class
loc:@save_170/Const*
T0
[
save_170/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_170/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_170/RestoreV2	RestoreV2save_170/Constsave_170/RestoreV2/tensor_names#save_170/RestoreV2/shape_and_slices*
dtypes
2
�
save_170/AssignAssignlayer/W/Weightssave_170/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
\
!save_170/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_170/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_170/RestoreV2_1	RestoreV2save_170/Const!save_170/RestoreV2_1/tensor_names%save_170/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_170/Assign_1Assignlayer/b/biasessave_170/RestoreV2_1*
use_locking(*
validate_shape(*
T0*!
_class
loc:@layer/b/biases
_
!save_170/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
R
%save_170/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_170/RestoreV2_2	RestoreV2save_170/Const!save_170/RestoreV2_2/tensor_names%save_170/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_170/Assign_2Assignlayer_1/W/Weightssave_170/RestoreV2_2*$
_class
loc:@layer_1/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_170/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
R
%save_170/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_170/RestoreV2_3	RestoreV2save_170/Const!save_170/RestoreV2_3/tensor_names%save_170/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_170/Assign_3Assignlayer_1/b/biasessave_170/RestoreV2_3*#
_class
loc:@layer_1/b/biases*
T0*
validate_shape(*
use_locking(
_
!save_170/RestoreV2_4/tensor_namesConst*
dtype0*&
valueBBlayer_2/W/Weights
R
%save_170/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
�
save_170/RestoreV2_4	RestoreV2save_170/Const!save_170/RestoreV2_4/tensor_names%save_170/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_170/Assign_4Assignlayer_2/W/Weightssave_170/RestoreV2_4*$
_class
loc:@layer_2/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_170/RestoreV2_5/tensor_namesConst*%
valueBBlayer_2/b/biases*
dtype0
R
%save_170/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_170/RestoreV2_5	RestoreV2save_170/Const!save_170/RestoreV2_5/tensor_names%save_170/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_170/Assign_5Assignlayer_2/b/biasessave_170/RestoreV2_5*
use_locking(*
T0*#
_class
loc:@layer_2/b/biases*
validate_shape(
�
save_170/restore_allNoOp^save_170/Assign^save_170/Assign_1^save_170/Assign_2^save_170/Assign_3^save_170/Assign_4^save_170/Assign_5
<
save_171/ConstConst*
valueB Bmodel*
dtype0
�
save_171/SaveV2/tensor_namesConst*
dtype0*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases
W
 save_171/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B B B 
�
save_171/SaveV2SaveV2save_171/Constsave_171/SaveV2/tensor_names save_171/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_171/control_dependencyIdentitysave_171/Const^save_171/SaveV2*!
_class
loc:@save_171/Const*
T0
[
save_171/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_171/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_171/RestoreV2	RestoreV2save_171/Constsave_171/RestoreV2/tensor_names#save_171/RestoreV2/shape_and_slices*
dtypes
2
�
save_171/AssignAssignlayer/W/Weightssave_171/RestoreV2*"
_class
loc:@layer/W/Weights*
T0*
validate_shape(*
use_locking(
\
!save_171/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_171/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_171/RestoreV2_1	RestoreV2save_171/Const!save_171/RestoreV2_1/tensor_names%save_171/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_171/Assign_1Assignlayer/b/biasessave_171/RestoreV2_1*
validate_shape(*!
_class
loc:@layer/b/biases*
T0*
use_locking(
_
!save_171/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
R
%save_171/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_171/RestoreV2_2	RestoreV2save_171/Const!save_171/RestoreV2_2/tensor_names%save_171/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_171/Assign_2Assignlayer_1/W/Weightssave_171/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
^
!save_171/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
R
%save_171/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_171/RestoreV2_3	RestoreV2save_171/Const!save_171/RestoreV2_3/tensor_names%save_171/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_171/Assign_3Assignlayer_1/b/biasessave_171/RestoreV2_3*#
_class
loc:@layer_1/b/biases*
T0*
validate_shape(*
use_locking(
_
!save_171/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_171/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_171/RestoreV2_4	RestoreV2save_171/Const!save_171/RestoreV2_4/tensor_names%save_171/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_171/Assign_4Assignlayer_2/W/Weightssave_171/RestoreV2_4*$
_class
loc:@layer_2/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_171/RestoreV2_5/tensor_namesConst*%
valueBBlayer_2/b/biases*
dtype0
R
%save_171/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_171/RestoreV2_5	RestoreV2save_171/Const!save_171/RestoreV2_5/tensor_names%save_171/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_171/Assign_5Assignlayer_2/b/biasessave_171/RestoreV2_5*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_2/b/biases
�
save_171/restore_allNoOp^save_171/Assign^save_171/Assign_1^save_171/Assign_2^save_171/Assign_3^save_171/Assign_4^save_171/Assign_5
<
save_172/ConstConst*
valueB Bmodel*
dtype0
�
save_172/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_172/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B B B 
�
save_172/SaveV2SaveV2save_172/Constsave_172/SaveV2/tensor_names save_172/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_172/control_dependencyIdentitysave_172/Const^save_172/SaveV2*!
_class
loc:@save_172/Const*
T0
[
save_172/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_172/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_172/RestoreV2	RestoreV2save_172/Constsave_172/RestoreV2/tensor_names#save_172/RestoreV2/shape_and_slices*
dtypes
2
�
save_172/AssignAssignlayer/W/Weightssave_172/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
\
!save_172/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_172/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_172/RestoreV2_1	RestoreV2save_172/Const!save_172/RestoreV2_1/tensor_names%save_172/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_172/Assign_1Assignlayer/b/biasessave_172/RestoreV2_1*
validate_shape(*!
_class
loc:@layer/b/biases*
T0*
use_locking(
_
!save_172/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
R
%save_172/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_172/RestoreV2_2	RestoreV2save_172/Const!save_172/RestoreV2_2/tensor_names%save_172/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_172/Assign_2Assignlayer_1/W/Weightssave_172/RestoreV2_2*
validate_shape(*$
_class
loc:@layer_1/W/Weights*
T0*
use_locking(
^
!save_172/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
R
%save_172/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_172/RestoreV2_3	RestoreV2save_172/Const!save_172/RestoreV2_3/tensor_names%save_172/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_172/Assign_3Assignlayer_1/b/biasessave_172/RestoreV2_3*
use_locking(*
T0*#
_class
loc:@layer_1/b/biases*
validate_shape(
_
!save_172/RestoreV2_4/tensor_namesConst*
dtype0*&
valueBBlayer_2/W/Weights
R
%save_172/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
�
save_172/RestoreV2_4	RestoreV2save_172/Const!save_172/RestoreV2_4/tensor_names%save_172/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_172/Assign_4Assignlayer_2/W/Weightssave_172/RestoreV2_4*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_2/W/Weights
^
!save_172/RestoreV2_5/tensor_namesConst*%
valueBBlayer_2/b/biases*
dtype0
R
%save_172/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_172/RestoreV2_5	RestoreV2save_172/Const!save_172/RestoreV2_5/tensor_names%save_172/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_172/Assign_5Assignlayer_2/b/biasessave_172/RestoreV2_5*
use_locking(*
T0*#
_class
loc:@layer_2/b/biases*
validate_shape(
�
save_172/restore_allNoOp^save_172/Assign^save_172/Assign_1^save_172/Assign_2^save_172/Assign_3^save_172/Assign_4^save_172/Assign_5
<
save_173/ConstConst*
valueB Bmodel*
dtype0
�
save_173/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_173/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B B B 
�
save_173/SaveV2SaveV2save_173/Constsave_173/SaveV2/tensor_names save_173/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_173/control_dependencyIdentitysave_173/Const^save_173/SaveV2*!
_class
loc:@save_173/Const*
T0
[
save_173/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_173/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_173/RestoreV2	RestoreV2save_173/Constsave_173/RestoreV2/tensor_names#save_173/RestoreV2/shape_and_slices*
dtypes
2
�
save_173/AssignAssignlayer/W/Weightssave_173/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
\
!save_173/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_173/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_173/RestoreV2_1	RestoreV2save_173/Const!save_173/RestoreV2_1/tensor_names%save_173/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_173/Assign_1Assignlayer/b/biasessave_173/RestoreV2_1*
validate_shape(*!
_class
loc:@layer/b/biases*
T0*
use_locking(
_
!save_173/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_173/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_173/RestoreV2_2	RestoreV2save_173/Const!save_173/RestoreV2_2/tensor_names%save_173/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_173/Assign_2Assignlayer_1/W/Weightssave_173/RestoreV2_2*$
_class
loc:@layer_1/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_173/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
R
%save_173/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_173/RestoreV2_3	RestoreV2save_173/Const!save_173/RestoreV2_3/tensor_names%save_173/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_173/Assign_3Assignlayer_1/b/biasessave_173/RestoreV2_3*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_1/b/biases
_
!save_173/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_173/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
�
save_173/RestoreV2_4	RestoreV2save_173/Const!save_173/RestoreV2_4/tensor_names%save_173/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_173/Assign_4Assignlayer_2/W/Weightssave_173/RestoreV2_4*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_2/W/Weights
^
!save_173/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_173/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_173/RestoreV2_5	RestoreV2save_173/Const!save_173/RestoreV2_5/tensor_names%save_173/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_173/Assign_5Assignlayer_2/b/biasessave_173/RestoreV2_5*#
_class
loc:@layer_2/b/biases*
T0*
validate_shape(*
use_locking(
�
save_173/restore_allNoOp^save_173/Assign^save_173/Assign_1^save_173/Assign_2^save_173/Assign_3^save_173/Assign_4^save_173/Assign_5
<
save_174/ConstConst*
valueB Bmodel*
dtype0
�
save_174/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_174/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_174/SaveV2SaveV2save_174/Constsave_174/SaveV2/tensor_names save_174/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_174/control_dependencyIdentitysave_174/Const^save_174/SaveV2*
T0*!
_class
loc:@save_174/Const
[
save_174/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_174/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_174/RestoreV2	RestoreV2save_174/Constsave_174/RestoreV2/tensor_names#save_174/RestoreV2/shape_and_slices*
dtypes
2
�
save_174/AssignAssignlayer/W/Weightssave_174/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
\
!save_174/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_174/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_174/RestoreV2_1	RestoreV2save_174/Const!save_174/RestoreV2_1/tensor_names%save_174/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_174/Assign_1Assignlayer/b/biasessave_174/RestoreV2_1*!
_class
loc:@layer/b/biases*
T0*
validate_shape(*
use_locking(
_
!save_174/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
R
%save_174/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_174/RestoreV2_2	RestoreV2save_174/Const!save_174/RestoreV2_2/tensor_names%save_174/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_174/Assign_2Assignlayer_1/W/Weightssave_174/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
^
!save_174/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
R
%save_174/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_174/RestoreV2_3	RestoreV2save_174/Const!save_174/RestoreV2_3/tensor_names%save_174/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_174/Assign_3Assignlayer_1/b/biasessave_174/RestoreV2_3*#
_class
loc:@layer_1/b/biases*
T0*
validate_shape(*
use_locking(
_
!save_174/RestoreV2_4/tensor_namesConst*
dtype0*&
valueBBlayer_2/W/Weights
R
%save_174/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_174/RestoreV2_4	RestoreV2save_174/Const!save_174/RestoreV2_4/tensor_names%save_174/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_174/Assign_4Assignlayer_2/W/Weightssave_174/RestoreV2_4*
use_locking(*
T0*$
_class
loc:@layer_2/W/Weights*
validate_shape(
^
!save_174/RestoreV2_5/tensor_namesConst*%
valueBBlayer_2/b/biases*
dtype0
R
%save_174/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_174/RestoreV2_5	RestoreV2save_174/Const!save_174/RestoreV2_5/tensor_names%save_174/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_174/Assign_5Assignlayer_2/b/biasessave_174/RestoreV2_5*
use_locking(*
T0*#
_class
loc:@layer_2/b/biases*
validate_shape(
�
save_174/restore_allNoOp^save_174/Assign^save_174/Assign_1^save_174/Assign_2^save_174/Assign_3^save_174/Assign_4^save_174/Assign_5
<
save_175/ConstConst*
valueB Bmodel*
dtype0
�
save_175/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_175/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B B B 
�
save_175/SaveV2SaveV2save_175/Constsave_175/SaveV2/tensor_names save_175/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_175/control_dependencyIdentitysave_175/Const^save_175/SaveV2*
T0*!
_class
loc:@save_175/Const
[
save_175/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
P
#save_175/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_175/RestoreV2	RestoreV2save_175/Constsave_175/RestoreV2/tensor_names#save_175/RestoreV2/shape_and_slices*
dtypes
2
�
save_175/AssignAssignlayer/W/Weightssave_175/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
\
!save_175/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_175/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_175/RestoreV2_1	RestoreV2save_175/Const!save_175/RestoreV2_1/tensor_names%save_175/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_175/Assign_1Assignlayer/b/biasessave_175/RestoreV2_1*!
_class
loc:@layer/b/biases*
T0*
validate_shape(*
use_locking(
_
!save_175/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_175/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_175/RestoreV2_2	RestoreV2save_175/Const!save_175/RestoreV2_2/tensor_names%save_175/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_175/Assign_2Assignlayer_1/W/Weightssave_175/RestoreV2_2*
use_locking(*
T0*$
_class
loc:@layer_1/W/Weights*
validate_shape(
^
!save_175/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
R
%save_175/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_175/RestoreV2_3	RestoreV2save_175/Const!save_175/RestoreV2_3/tensor_names%save_175/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_175/Assign_3Assignlayer_1/b/biasessave_175/RestoreV2_3*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_1/b/biases
_
!save_175/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_175/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_175/RestoreV2_4	RestoreV2save_175/Const!save_175/RestoreV2_4/tensor_names%save_175/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_175/Assign_4Assignlayer_2/W/Weightssave_175/RestoreV2_4*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_2/W/Weights
^
!save_175/RestoreV2_5/tensor_namesConst*%
valueBBlayer_2/b/biases*
dtype0
R
%save_175/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_175/RestoreV2_5	RestoreV2save_175/Const!save_175/RestoreV2_5/tensor_names%save_175/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_175/Assign_5Assignlayer_2/b/biasessave_175/RestoreV2_5*
use_locking(*
T0*#
_class
loc:@layer_2/b/biases*
validate_shape(
�
save_175/restore_allNoOp^save_175/Assign^save_175/Assign_1^save_175/Assign_2^save_175/Assign_3^save_175/Assign_4^save_175/Assign_5
<
save_176/ConstConst*
valueB Bmodel*
dtype0
�
save_176/SaveV2/tensor_namesConst*
dtype0*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases
W
 save_176/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_176/SaveV2SaveV2save_176/Constsave_176/SaveV2/tensor_names save_176/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_176/control_dependencyIdentitysave_176/Const^save_176/SaveV2*!
_class
loc:@save_176/Const*
T0
[
save_176/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
P
#save_176/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_176/RestoreV2	RestoreV2save_176/Constsave_176/RestoreV2/tensor_names#save_176/RestoreV2/shape_and_slices*
dtypes
2
�
save_176/AssignAssignlayer/W/Weightssave_176/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
\
!save_176/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
R
%save_176/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_176/RestoreV2_1	RestoreV2save_176/Const!save_176/RestoreV2_1/tensor_names%save_176/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_176/Assign_1Assignlayer/b/biasessave_176/RestoreV2_1*
validate_shape(*!
_class
loc:@layer/b/biases*
T0*
use_locking(
_
!save_176/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
R
%save_176/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_176/RestoreV2_2	RestoreV2save_176/Const!save_176/RestoreV2_2/tensor_names%save_176/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_176/Assign_2Assignlayer_1/W/Weightssave_176/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
^
!save_176/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
R
%save_176/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_176/RestoreV2_3	RestoreV2save_176/Const!save_176/RestoreV2_3/tensor_names%save_176/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_176/Assign_3Assignlayer_1/b/biasessave_176/RestoreV2_3*#
_class
loc:@layer_1/b/biases*
T0*
validate_shape(*
use_locking(
_
!save_176/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_176/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
�
save_176/RestoreV2_4	RestoreV2save_176/Const!save_176/RestoreV2_4/tensor_names%save_176/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_176/Assign_4Assignlayer_2/W/Weightssave_176/RestoreV2_4*
use_locking(*
T0*$
_class
loc:@layer_2/W/Weights*
validate_shape(
^
!save_176/RestoreV2_5/tensor_namesConst*%
valueBBlayer_2/b/biases*
dtype0
R
%save_176/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_176/RestoreV2_5	RestoreV2save_176/Const!save_176/RestoreV2_5/tensor_names%save_176/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_176/Assign_5Assignlayer_2/b/biasessave_176/RestoreV2_5*#
_class
loc:@layer_2/b/biases*
T0*
validate_shape(*
use_locking(
�
save_176/restore_allNoOp^save_176/Assign^save_176/Assign_1^save_176/Assign_2^save_176/Assign_3^save_176/Assign_4^save_176/Assign_5
<
save_177/ConstConst*
valueB Bmodel*
dtype0
�
save_177/SaveV2/tensor_namesConst*
dtype0*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases
W
 save_177/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_177/SaveV2SaveV2save_177/Constsave_177/SaveV2/tensor_names save_177/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_177/control_dependencyIdentitysave_177/Const^save_177/SaveV2*
T0*!
_class
loc:@save_177/Const
[
save_177/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
P
#save_177/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_177/RestoreV2	RestoreV2save_177/Constsave_177/RestoreV2/tensor_names#save_177/RestoreV2/shape_and_slices*
dtypes
2
�
save_177/AssignAssignlayer/W/Weightssave_177/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
\
!save_177/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
R
%save_177/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_177/RestoreV2_1	RestoreV2save_177/Const!save_177/RestoreV2_1/tensor_names%save_177/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_177/Assign_1Assignlayer/b/biasessave_177/RestoreV2_1*
validate_shape(*!
_class
loc:@layer/b/biases*
T0*
use_locking(
_
!save_177/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
R
%save_177/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_177/RestoreV2_2	RestoreV2save_177/Const!save_177/RestoreV2_2/tensor_names%save_177/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_177/Assign_2Assignlayer_1/W/Weightssave_177/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
^
!save_177/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
R
%save_177/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_177/RestoreV2_3	RestoreV2save_177/Const!save_177/RestoreV2_3/tensor_names%save_177/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_177/Assign_3Assignlayer_1/b/biasessave_177/RestoreV2_3*#
_class
loc:@layer_1/b/biases*
T0*
validate_shape(*
use_locking(
_
!save_177/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_177/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_177/RestoreV2_4	RestoreV2save_177/Const!save_177/RestoreV2_4/tensor_names%save_177/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_177/Assign_4Assignlayer_2/W/Weightssave_177/RestoreV2_4*
use_locking(*
T0*$
_class
loc:@layer_2/W/Weights*
validate_shape(
^
!save_177/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_177/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_177/RestoreV2_5	RestoreV2save_177/Const!save_177/RestoreV2_5/tensor_names%save_177/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_177/Assign_5Assignlayer_2/b/biasessave_177/RestoreV2_5*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_2/b/biases
�
save_177/restore_allNoOp^save_177/Assign^save_177/Assign_1^save_177/Assign_2^save_177/Assign_3^save_177/Assign_4^save_177/Assign_5
<
save_178/ConstConst*
valueB Bmodel*
dtype0
�
save_178/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_178/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B B B 
�
save_178/SaveV2SaveV2save_178/Constsave_178/SaveV2/tensor_names save_178/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_178/control_dependencyIdentitysave_178/Const^save_178/SaveV2*
T0*!
_class
loc:@save_178/Const
[
save_178/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_178/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_178/RestoreV2	RestoreV2save_178/Constsave_178/RestoreV2/tensor_names#save_178/RestoreV2/shape_and_slices*
dtypes
2
�
save_178/AssignAssignlayer/W/Weightssave_178/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
\
!save_178/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
R
%save_178/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_178/RestoreV2_1	RestoreV2save_178/Const!save_178/RestoreV2_1/tensor_names%save_178/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_178/Assign_1Assignlayer/b/biasessave_178/RestoreV2_1*
use_locking(*
validate_shape(*
T0*!
_class
loc:@layer/b/biases
_
!save_178/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
R
%save_178/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_178/RestoreV2_2	RestoreV2save_178/Const!save_178/RestoreV2_2/tensor_names%save_178/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_178/Assign_2Assignlayer_1/W/Weightssave_178/RestoreV2_2*
validate_shape(*$
_class
loc:@layer_1/W/Weights*
T0*
use_locking(
^
!save_178/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
R
%save_178/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_178/RestoreV2_3	RestoreV2save_178/Const!save_178/RestoreV2_3/tensor_names%save_178/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_178/Assign_3Assignlayer_1/b/biasessave_178/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
_
!save_178/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_178/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
�
save_178/RestoreV2_4	RestoreV2save_178/Const!save_178/RestoreV2_4/tensor_names%save_178/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_178/Assign_4Assignlayer_2/W/Weightssave_178/RestoreV2_4*
use_locking(*
T0*$
_class
loc:@layer_2/W/Weights*
validate_shape(
^
!save_178/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_178/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_178/RestoreV2_5	RestoreV2save_178/Const!save_178/RestoreV2_5/tensor_names%save_178/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_178/Assign_5Assignlayer_2/b/biasessave_178/RestoreV2_5*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_2/b/biases
�
save_178/restore_allNoOp^save_178/Assign^save_178/Assign_1^save_178/Assign_2^save_178/Assign_3^save_178/Assign_4^save_178/Assign_5
<
save_179/ConstConst*
valueB Bmodel*
dtype0
�
save_179/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_179/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_179/SaveV2SaveV2save_179/Constsave_179/SaveV2/tensor_names save_179/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_179/control_dependencyIdentitysave_179/Const^save_179/SaveV2*!
_class
loc:@save_179/Const*
T0
[
save_179/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
P
#save_179/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_179/RestoreV2	RestoreV2save_179/Constsave_179/RestoreV2/tensor_names#save_179/RestoreV2/shape_and_slices*
dtypes
2
�
save_179/AssignAssignlayer/W/Weightssave_179/RestoreV2*"
_class
loc:@layer/W/Weights*
T0*
validate_shape(*
use_locking(
\
!save_179/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
R
%save_179/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_179/RestoreV2_1	RestoreV2save_179/Const!save_179/RestoreV2_1/tensor_names%save_179/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_179/Assign_1Assignlayer/b/biasessave_179/RestoreV2_1*
use_locking(*
validate_shape(*
T0*!
_class
loc:@layer/b/biases
_
!save_179/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
R
%save_179/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_179/RestoreV2_2	RestoreV2save_179/Const!save_179/RestoreV2_2/tensor_names%save_179/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_179/Assign_2Assignlayer_1/W/Weightssave_179/RestoreV2_2*
use_locking(*
T0*$
_class
loc:@layer_1/W/Weights*
validate_shape(
^
!save_179/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
R
%save_179/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_179/RestoreV2_3	RestoreV2save_179/Const!save_179/RestoreV2_3/tensor_names%save_179/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_179/Assign_3Assignlayer_1/b/biasessave_179/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
_
!save_179/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_179/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_179/RestoreV2_4	RestoreV2save_179/Const!save_179/RestoreV2_4/tensor_names%save_179/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_179/Assign_4Assignlayer_2/W/Weightssave_179/RestoreV2_4*$
_class
loc:@layer_2/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_179/RestoreV2_5/tensor_namesConst*%
valueBBlayer_2/b/biases*
dtype0
R
%save_179/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_179/RestoreV2_5	RestoreV2save_179/Const!save_179/RestoreV2_5/tensor_names%save_179/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_179/Assign_5Assignlayer_2/b/biasessave_179/RestoreV2_5*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_2/b/biases
�
save_179/restore_allNoOp^save_179/Assign^save_179/Assign_1^save_179/Assign_2^save_179/Assign_3^save_179/Assign_4^save_179/Assign_5
<
save_180/ConstConst*
dtype0*
valueB Bmodel
�
save_180/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_180/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_180/SaveV2SaveV2save_180/Constsave_180/SaveV2/tensor_names save_180/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_180/control_dependencyIdentitysave_180/Const^save_180/SaveV2*!
_class
loc:@save_180/Const*
T0
[
save_180/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
P
#save_180/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_180/RestoreV2	RestoreV2save_180/Constsave_180/RestoreV2/tensor_names#save_180/RestoreV2/shape_and_slices*
dtypes
2
�
save_180/AssignAssignlayer/W/Weightssave_180/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
\
!save_180/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_180/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_180/RestoreV2_1	RestoreV2save_180/Const!save_180/RestoreV2_1/tensor_names%save_180/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_180/Assign_1Assignlayer/b/biasessave_180/RestoreV2_1*
use_locking(*
T0*!
_class
loc:@layer/b/biases*
validate_shape(
_
!save_180/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_180/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_180/RestoreV2_2	RestoreV2save_180/Const!save_180/RestoreV2_2/tensor_names%save_180/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_180/Assign_2Assignlayer_1/W/Weightssave_180/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
^
!save_180/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
R
%save_180/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_180/RestoreV2_3	RestoreV2save_180/Const!save_180/RestoreV2_3/tensor_names%save_180/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_180/Assign_3Assignlayer_1/b/biasessave_180/RestoreV2_3*
use_locking(*
T0*#
_class
loc:@layer_1/b/biases*
validate_shape(
_
!save_180/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_180/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_180/RestoreV2_4	RestoreV2save_180/Const!save_180/RestoreV2_4/tensor_names%save_180/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_180/Assign_4Assignlayer_2/W/Weightssave_180/RestoreV2_4*
validate_shape(*$
_class
loc:@layer_2/W/Weights*
T0*
use_locking(
^
!save_180/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_180/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_180/RestoreV2_5	RestoreV2save_180/Const!save_180/RestoreV2_5/tensor_names%save_180/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_180/Assign_5Assignlayer_2/b/biasessave_180/RestoreV2_5*
use_locking(*
T0*#
_class
loc:@layer_2/b/biases*
validate_shape(
�
save_180/restore_allNoOp^save_180/Assign^save_180/Assign_1^save_180/Assign_2^save_180/Assign_3^save_180/Assign_4^save_180/Assign_5
<
save_181/ConstConst*
dtype0*
valueB Bmodel
�
save_181/SaveV2/tensor_namesConst*
dtype0*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases
W
 save_181/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_181/SaveV2SaveV2save_181/Constsave_181/SaveV2/tensor_names save_181/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_181/control_dependencyIdentitysave_181/Const^save_181/SaveV2*
T0*!
_class
loc:@save_181/Const
[
save_181/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
P
#save_181/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_181/RestoreV2	RestoreV2save_181/Constsave_181/RestoreV2/tensor_names#save_181/RestoreV2/shape_and_slices*
dtypes
2
�
save_181/AssignAssignlayer/W/Weightssave_181/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
\
!save_181/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_181/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_181/RestoreV2_1	RestoreV2save_181/Const!save_181/RestoreV2_1/tensor_names%save_181/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_181/Assign_1Assignlayer/b/biasessave_181/RestoreV2_1*
use_locking(*
T0*!
_class
loc:@layer/b/biases*
validate_shape(
_
!save_181/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
R
%save_181/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_181/RestoreV2_2	RestoreV2save_181/Const!save_181/RestoreV2_2/tensor_names%save_181/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_181/Assign_2Assignlayer_1/W/Weightssave_181/RestoreV2_2*
validate_shape(*$
_class
loc:@layer_1/W/Weights*
T0*
use_locking(
^
!save_181/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
R
%save_181/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_181/RestoreV2_3	RestoreV2save_181/Const!save_181/RestoreV2_3/tensor_names%save_181/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_181/Assign_3Assignlayer_1/b/biasessave_181/RestoreV2_3*
use_locking(*
T0*#
_class
loc:@layer_1/b/biases*
validate_shape(
_
!save_181/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_181/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
�
save_181/RestoreV2_4	RestoreV2save_181/Const!save_181/RestoreV2_4/tensor_names%save_181/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_181/Assign_4Assignlayer_2/W/Weightssave_181/RestoreV2_4*
validate_shape(*$
_class
loc:@layer_2/W/Weights*
T0*
use_locking(
^
!save_181/RestoreV2_5/tensor_namesConst*%
valueBBlayer_2/b/biases*
dtype0
R
%save_181/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_181/RestoreV2_5	RestoreV2save_181/Const!save_181/RestoreV2_5/tensor_names%save_181/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_181/Assign_5Assignlayer_2/b/biasessave_181/RestoreV2_5*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_2/b/biases
�
save_181/restore_allNoOp^save_181/Assign^save_181/Assign_1^save_181/Assign_2^save_181/Assign_3^save_181/Assign_4^save_181/Assign_5
<
save_182/ConstConst*
dtype0*
valueB Bmodel
�
save_182/SaveV2/tensor_namesConst*
dtype0*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases
W
 save_182/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B B B 
�
save_182/SaveV2SaveV2save_182/Constsave_182/SaveV2/tensor_names save_182/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_182/control_dependencyIdentitysave_182/Const^save_182/SaveV2*
T0*!
_class
loc:@save_182/Const
[
save_182/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_182/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_182/RestoreV2	RestoreV2save_182/Constsave_182/RestoreV2/tensor_names#save_182/RestoreV2/shape_and_slices*
dtypes
2
�
save_182/AssignAssignlayer/W/Weightssave_182/RestoreV2*"
_class
loc:@layer/W/Weights*
T0*
validate_shape(*
use_locking(
\
!save_182/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_182/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_182/RestoreV2_1	RestoreV2save_182/Const!save_182/RestoreV2_1/tensor_names%save_182/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_182/Assign_1Assignlayer/b/biasessave_182/RestoreV2_1*
use_locking(*
validate_shape(*
T0*!
_class
loc:@layer/b/biases
_
!save_182/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_182/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_182/RestoreV2_2	RestoreV2save_182/Const!save_182/RestoreV2_2/tensor_names%save_182/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_182/Assign_2Assignlayer_1/W/Weightssave_182/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
^
!save_182/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
R
%save_182/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_182/RestoreV2_3	RestoreV2save_182/Const!save_182/RestoreV2_3/tensor_names%save_182/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_182/Assign_3Assignlayer_1/b/biasessave_182/RestoreV2_3*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_1/b/biases
_
!save_182/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_182/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
�
save_182/RestoreV2_4	RestoreV2save_182/Const!save_182/RestoreV2_4/tensor_names%save_182/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_182/Assign_4Assignlayer_2/W/Weightssave_182/RestoreV2_4*
use_locking(*
T0*$
_class
loc:@layer_2/W/Weights*
validate_shape(
^
!save_182/RestoreV2_5/tensor_namesConst*%
valueBBlayer_2/b/biases*
dtype0
R
%save_182/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_182/RestoreV2_5	RestoreV2save_182/Const!save_182/RestoreV2_5/tensor_names%save_182/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_182/Assign_5Assignlayer_2/b/biasessave_182/RestoreV2_5*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_2/b/biases
�
save_182/restore_allNoOp^save_182/Assign^save_182/Assign_1^save_182/Assign_2^save_182/Assign_3^save_182/Assign_4^save_182/Assign_5
<
save_183/ConstConst*
valueB Bmodel*
dtype0
�
save_183/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_183/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_183/SaveV2SaveV2save_183/Constsave_183/SaveV2/tensor_names save_183/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_183/control_dependencyIdentitysave_183/Const^save_183/SaveV2*
T0*!
_class
loc:@save_183/Const
[
save_183/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
P
#save_183/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_183/RestoreV2	RestoreV2save_183/Constsave_183/RestoreV2/tensor_names#save_183/RestoreV2/shape_and_slices*
dtypes
2
�
save_183/AssignAssignlayer/W/Weightssave_183/RestoreV2*
use_locking(*
validate_shape(*
T0*"
_class
loc:@layer/W/Weights
\
!save_183/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_183/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_183/RestoreV2_1	RestoreV2save_183/Const!save_183/RestoreV2_1/tensor_names%save_183/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_183/Assign_1Assignlayer/b/biasessave_183/RestoreV2_1*
use_locking(*
T0*!
_class
loc:@layer/b/biases*
validate_shape(
_
!save_183/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
R
%save_183/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_183/RestoreV2_2	RestoreV2save_183/Const!save_183/RestoreV2_2/tensor_names%save_183/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_183/Assign_2Assignlayer_1/W/Weightssave_183/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
^
!save_183/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
R
%save_183/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_183/RestoreV2_3	RestoreV2save_183/Const!save_183/RestoreV2_3/tensor_names%save_183/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_183/Assign_3Assignlayer_1/b/biasessave_183/RestoreV2_3*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_1/b/biases
_
!save_183/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_183/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
�
save_183/RestoreV2_4	RestoreV2save_183/Const!save_183/RestoreV2_4/tensor_names%save_183/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_183/Assign_4Assignlayer_2/W/Weightssave_183/RestoreV2_4*
use_locking(*
T0*$
_class
loc:@layer_2/W/Weights*
validate_shape(
^
!save_183/RestoreV2_5/tensor_namesConst*%
valueBBlayer_2/b/biases*
dtype0
R
%save_183/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_183/RestoreV2_5	RestoreV2save_183/Const!save_183/RestoreV2_5/tensor_names%save_183/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_183/Assign_5Assignlayer_2/b/biasessave_183/RestoreV2_5*
validate_shape(*#
_class
loc:@layer_2/b/biases*
T0*
use_locking(
�
save_183/restore_allNoOp^save_183/Assign^save_183/Assign_1^save_183/Assign_2^save_183/Assign_3^save_183/Assign_4^save_183/Assign_5
<
save_184/ConstConst*
valueB Bmodel*
dtype0
�
save_184/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_184/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_184/SaveV2SaveV2save_184/Constsave_184/SaveV2/tensor_names save_184/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_184/control_dependencyIdentitysave_184/Const^save_184/SaveV2*!
_class
loc:@save_184/Const*
T0
[
save_184/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_184/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_184/RestoreV2	RestoreV2save_184/Constsave_184/RestoreV2/tensor_names#save_184/RestoreV2/shape_and_slices*
dtypes
2
�
save_184/AssignAssignlayer/W/Weightssave_184/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
\
!save_184/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
R
%save_184/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_184/RestoreV2_1	RestoreV2save_184/Const!save_184/RestoreV2_1/tensor_names%save_184/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_184/Assign_1Assignlayer/b/biasessave_184/RestoreV2_1*
use_locking(*
T0*!
_class
loc:@layer/b/biases*
validate_shape(
_
!save_184/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
R
%save_184/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_184/RestoreV2_2	RestoreV2save_184/Const!save_184/RestoreV2_2/tensor_names%save_184/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_184/Assign_2Assignlayer_1/W/Weightssave_184/RestoreV2_2*
use_locking(*
T0*$
_class
loc:@layer_1/W/Weights*
validate_shape(
^
!save_184/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
R
%save_184/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_184/RestoreV2_3	RestoreV2save_184/Const!save_184/RestoreV2_3/tensor_names%save_184/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_184/Assign_3Assignlayer_1/b/biasessave_184/RestoreV2_3*
use_locking(*
T0*#
_class
loc:@layer_1/b/biases*
validate_shape(
_
!save_184/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_184/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_184/RestoreV2_4	RestoreV2save_184/Const!save_184/RestoreV2_4/tensor_names%save_184/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_184/Assign_4Assignlayer_2/W/Weightssave_184/RestoreV2_4*$
_class
loc:@layer_2/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_184/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_184/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_184/RestoreV2_5	RestoreV2save_184/Const!save_184/RestoreV2_5/tensor_names%save_184/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_184/Assign_5Assignlayer_2/b/biasessave_184/RestoreV2_5*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_2/b/biases
�
save_184/restore_allNoOp^save_184/Assign^save_184/Assign_1^save_184/Assign_2^save_184/Assign_3^save_184/Assign_4^save_184/Assign_5
<
save_185/ConstConst*
dtype0*
valueB Bmodel
�
save_185/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_185/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B B B 
�
save_185/SaveV2SaveV2save_185/Constsave_185/SaveV2/tensor_names save_185/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_185/control_dependencyIdentitysave_185/Const^save_185/SaveV2*!
_class
loc:@save_185/Const*
T0
[
save_185/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_185/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_185/RestoreV2	RestoreV2save_185/Constsave_185/RestoreV2/tensor_names#save_185/RestoreV2/shape_and_slices*
dtypes
2
�
save_185/AssignAssignlayer/W/Weightssave_185/RestoreV2*"
_class
loc:@layer/W/Weights*
T0*
validate_shape(*
use_locking(
\
!save_185/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_185/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_185/RestoreV2_1	RestoreV2save_185/Const!save_185/RestoreV2_1/tensor_names%save_185/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_185/Assign_1Assignlayer/b/biasessave_185/RestoreV2_1*!
_class
loc:@layer/b/biases*
T0*
validate_shape(*
use_locking(
_
!save_185/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
R
%save_185/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_185/RestoreV2_2	RestoreV2save_185/Const!save_185/RestoreV2_2/tensor_names%save_185/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_185/Assign_2Assignlayer_1/W/Weightssave_185/RestoreV2_2*$
_class
loc:@layer_1/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_185/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
R
%save_185/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_185/RestoreV2_3	RestoreV2save_185/Const!save_185/RestoreV2_3/tensor_names%save_185/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_185/Assign_3Assignlayer_1/b/biasessave_185/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
_
!save_185/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_185/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_185/RestoreV2_4	RestoreV2save_185/Const!save_185/RestoreV2_4/tensor_names%save_185/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_185/Assign_4Assignlayer_2/W/Weightssave_185/RestoreV2_4*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_2/W/Weights
^
!save_185/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_185/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_185/RestoreV2_5	RestoreV2save_185/Const!save_185/RestoreV2_5/tensor_names%save_185/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_185/Assign_5Assignlayer_2/b/biasessave_185/RestoreV2_5*#
_class
loc:@layer_2/b/biases*
T0*
validate_shape(*
use_locking(
�
save_185/restore_allNoOp^save_185/Assign^save_185/Assign_1^save_185/Assign_2^save_185/Assign_3^save_185/Assign_4^save_185/Assign_5
<
save_186/ConstConst*
valueB Bmodel*
dtype0
�
save_186/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_186/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B B B 
�
save_186/SaveV2SaveV2save_186/Constsave_186/SaveV2/tensor_names save_186/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_186/control_dependencyIdentitysave_186/Const^save_186/SaveV2*
T0*!
_class
loc:@save_186/Const
[
save_186/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_186/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_186/RestoreV2	RestoreV2save_186/Constsave_186/RestoreV2/tensor_names#save_186/RestoreV2/shape_and_slices*
dtypes
2
�
save_186/AssignAssignlayer/W/Weightssave_186/RestoreV2*"
_class
loc:@layer/W/Weights*
T0*
validate_shape(*
use_locking(
\
!save_186/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_186/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_186/RestoreV2_1	RestoreV2save_186/Const!save_186/RestoreV2_1/tensor_names%save_186/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_186/Assign_1Assignlayer/b/biasessave_186/RestoreV2_1*
validate_shape(*!
_class
loc:@layer/b/biases*
T0*
use_locking(
_
!save_186/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_186/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_186/RestoreV2_2	RestoreV2save_186/Const!save_186/RestoreV2_2/tensor_names%save_186/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_186/Assign_2Assignlayer_1/W/Weightssave_186/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
^
!save_186/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
R
%save_186/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_186/RestoreV2_3	RestoreV2save_186/Const!save_186/RestoreV2_3/tensor_names%save_186/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_186/Assign_3Assignlayer_1/b/biasessave_186/RestoreV2_3*#
_class
loc:@layer_1/b/biases*
T0*
validate_shape(*
use_locking(
_
!save_186/RestoreV2_4/tensor_namesConst*
dtype0*&
valueBBlayer_2/W/Weights
R
%save_186/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_186/RestoreV2_4	RestoreV2save_186/Const!save_186/RestoreV2_4/tensor_names%save_186/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_186/Assign_4Assignlayer_2/W/Weightssave_186/RestoreV2_4*$
_class
loc:@layer_2/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_186/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_186/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_186/RestoreV2_5	RestoreV2save_186/Const!save_186/RestoreV2_5/tensor_names%save_186/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_186/Assign_5Assignlayer_2/b/biasessave_186/RestoreV2_5*
use_locking(*
T0*#
_class
loc:@layer_2/b/biases*
validate_shape(
�
save_186/restore_allNoOp^save_186/Assign^save_186/Assign_1^save_186/Assign_2^save_186/Assign_3^save_186/Assign_4^save_186/Assign_5
<
save_187/ConstConst*
dtype0*
valueB Bmodel
�
save_187/SaveV2/tensor_namesConst*
dtype0*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases
W
 save_187/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_187/SaveV2SaveV2save_187/Constsave_187/SaveV2/tensor_names save_187/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_187/control_dependencyIdentitysave_187/Const^save_187/SaveV2*
T0*!
_class
loc:@save_187/Const
[
save_187/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
P
#save_187/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_187/RestoreV2	RestoreV2save_187/Constsave_187/RestoreV2/tensor_names#save_187/RestoreV2/shape_and_slices*
dtypes
2
�
save_187/AssignAssignlayer/W/Weightssave_187/RestoreV2*"
_class
loc:@layer/W/Weights*
T0*
validate_shape(*
use_locking(
\
!save_187/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_187/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_187/RestoreV2_1	RestoreV2save_187/Const!save_187/RestoreV2_1/tensor_names%save_187/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_187/Assign_1Assignlayer/b/biasessave_187/RestoreV2_1*
use_locking(*
T0*!
_class
loc:@layer/b/biases*
validate_shape(
_
!save_187/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
R
%save_187/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_187/RestoreV2_2	RestoreV2save_187/Const!save_187/RestoreV2_2/tensor_names%save_187/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_187/Assign_2Assignlayer_1/W/Weightssave_187/RestoreV2_2*$
_class
loc:@layer_1/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_187/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
R
%save_187/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_187/RestoreV2_3	RestoreV2save_187/Const!save_187/RestoreV2_3/tensor_names%save_187/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_187/Assign_3Assignlayer_1/b/biasessave_187/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
_
!save_187/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_187/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
�
save_187/RestoreV2_4	RestoreV2save_187/Const!save_187/RestoreV2_4/tensor_names%save_187/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_187/Assign_4Assignlayer_2/W/Weightssave_187/RestoreV2_4*
use_locking(*
T0*$
_class
loc:@layer_2/W/Weights*
validate_shape(
^
!save_187/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_187/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_187/RestoreV2_5	RestoreV2save_187/Const!save_187/RestoreV2_5/tensor_names%save_187/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_187/Assign_5Assignlayer_2/b/biasessave_187/RestoreV2_5*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_2/b/biases
�
save_187/restore_allNoOp^save_187/Assign^save_187/Assign_1^save_187/Assign_2^save_187/Assign_3^save_187/Assign_4^save_187/Assign_5
<
save_188/ConstConst*
valueB Bmodel*
dtype0
�
save_188/SaveV2/tensor_namesConst*
dtype0*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases
W
 save_188/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_188/SaveV2SaveV2save_188/Constsave_188/SaveV2/tensor_names save_188/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_188/control_dependencyIdentitysave_188/Const^save_188/SaveV2*
T0*!
_class
loc:@save_188/Const
[
save_188/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
P
#save_188/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_188/RestoreV2	RestoreV2save_188/Constsave_188/RestoreV2/tensor_names#save_188/RestoreV2/shape_and_slices*
dtypes
2
�
save_188/AssignAssignlayer/W/Weightssave_188/RestoreV2*"
_class
loc:@layer/W/Weights*
T0*
validate_shape(*
use_locking(
\
!save_188/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_188/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_188/RestoreV2_1	RestoreV2save_188/Const!save_188/RestoreV2_1/tensor_names%save_188/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_188/Assign_1Assignlayer/b/biasessave_188/RestoreV2_1*!
_class
loc:@layer/b/biases*
T0*
validate_shape(*
use_locking(
_
!save_188/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_188/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_188/RestoreV2_2	RestoreV2save_188/Const!save_188/RestoreV2_2/tensor_names%save_188/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_188/Assign_2Assignlayer_1/W/Weightssave_188/RestoreV2_2*$
_class
loc:@layer_1/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_188/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
R
%save_188/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_188/RestoreV2_3	RestoreV2save_188/Const!save_188/RestoreV2_3/tensor_names%save_188/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_188/Assign_3Assignlayer_1/b/biasessave_188/RestoreV2_3*
use_locking(*
T0*#
_class
loc:@layer_1/b/biases*
validate_shape(
_
!save_188/RestoreV2_4/tensor_namesConst*
dtype0*&
valueBBlayer_2/W/Weights
R
%save_188/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_188/RestoreV2_4	RestoreV2save_188/Const!save_188/RestoreV2_4/tensor_names%save_188/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_188/Assign_4Assignlayer_2/W/Weightssave_188/RestoreV2_4*
validate_shape(*$
_class
loc:@layer_2/W/Weights*
T0*
use_locking(
^
!save_188/RestoreV2_5/tensor_namesConst*%
valueBBlayer_2/b/biases*
dtype0
R
%save_188/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_188/RestoreV2_5	RestoreV2save_188/Const!save_188/RestoreV2_5/tensor_names%save_188/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_188/Assign_5Assignlayer_2/b/biasessave_188/RestoreV2_5*
validate_shape(*#
_class
loc:@layer_2/b/biases*
T0*
use_locking(
�
save_188/restore_allNoOp^save_188/Assign^save_188/Assign_1^save_188/Assign_2^save_188/Assign_3^save_188/Assign_4^save_188/Assign_5
<
save_189/ConstConst*
valueB Bmodel*
dtype0
�
save_189/SaveV2/tensor_namesConst*
dtype0*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases
W
 save_189/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B B B 
�
save_189/SaveV2SaveV2save_189/Constsave_189/SaveV2/tensor_names save_189/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_189/control_dependencyIdentitysave_189/Const^save_189/SaveV2*!
_class
loc:@save_189/Const*
T0
[
save_189/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
P
#save_189/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_189/RestoreV2	RestoreV2save_189/Constsave_189/RestoreV2/tensor_names#save_189/RestoreV2/shape_and_slices*
dtypes
2
�
save_189/AssignAssignlayer/W/Weightssave_189/RestoreV2*
use_locking(*
validate_shape(*
T0*"
_class
loc:@layer/W/Weights
\
!save_189/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_189/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_189/RestoreV2_1	RestoreV2save_189/Const!save_189/RestoreV2_1/tensor_names%save_189/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_189/Assign_1Assignlayer/b/biasessave_189/RestoreV2_1*!
_class
loc:@layer/b/biases*
T0*
validate_shape(*
use_locking(
_
!save_189/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_189/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_189/RestoreV2_2	RestoreV2save_189/Const!save_189/RestoreV2_2/tensor_names%save_189/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_189/Assign_2Assignlayer_1/W/Weightssave_189/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
^
!save_189/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
R
%save_189/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_189/RestoreV2_3	RestoreV2save_189/Const!save_189/RestoreV2_3/tensor_names%save_189/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_189/Assign_3Assignlayer_1/b/biasessave_189/RestoreV2_3*#
_class
loc:@layer_1/b/biases*
T0*
validate_shape(*
use_locking(
_
!save_189/RestoreV2_4/tensor_namesConst*
dtype0*&
valueBBlayer_2/W/Weights
R
%save_189/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_189/RestoreV2_4	RestoreV2save_189/Const!save_189/RestoreV2_4/tensor_names%save_189/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_189/Assign_4Assignlayer_2/W/Weightssave_189/RestoreV2_4*
validate_shape(*$
_class
loc:@layer_2/W/Weights*
T0*
use_locking(
^
!save_189/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_189/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_189/RestoreV2_5	RestoreV2save_189/Const!save_189/RestoreV2_5/tensor_names%save_189/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_189/Assign_5Assignlayer_2/b/biasessave_189/RestoreV2_5*
validate_shape(*#
_class
loc:@layer_2/b/biases*
T0*
use_locking(
�
save_189/restore_allNoOp^save_189/Assign^save_189/Assign_1^save_189/Assign_2^save_189/Assign_3^save_189/Assign_4^save_189/Assign_5
<
save_190/ConstConst*
valueB Bmodel*
dtype0
�
save_190/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_190/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B B B 
�
save_190/SaveV2SaveV2save_190/Constsave_190/SaveV2/tensor_names save_190/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_190/control_dependencyIdentitysave_190/Const^save_190/SaveV2*!
_class
loc:@save_190/Const*
T0
[
save_190/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_190/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_190/RestoreV2	RestoreV2save_190/Constsave_190/RestoreV2/tensor_names#save_190/RestoreV2/shape_and_slices*
dtypes
2
�
save_190/AssignAssignlayer/W/Weightssave_190/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
\
!save_190/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_190/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_190/RestoreV2_1	RestoreV2save_190/Const!save_190/RestoreV2_1/tensor_names%save_190/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_190/Assign_1Assignlayer/b/biasessave_190/RestoreV2_1*
use_locking(*
T0*!
_class
loc:@layer/b/biases*
validate_shape(
_
!save_190/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_190/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_190/RestoreV2_2	RestoreV2save_190/Const!save_190/RestoreV2_2/tensor_names%save_190/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_190/Assign_2Assignlayer_1/W/Weightssave_190/RestoreV2_2*
validate_shape(*$
_class
loc:@layer_1/W/Weights*
T0*
use_locking(
^
!save_190/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
R
%save_190/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_190/RestoreV2_3	RestoreV2save_190/Const!save_190/RestoreV2_3/tensor_names%save_190/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_190/Assign_3Assignlayer_1/b/biasessave_190/RestoreV2_3*
use_locking(*
T0*#
_class
loc:@layer_1/b/biases*
validate_shape(
_
!save_190/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_190/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
�
save_190/RestoreV2_4	RestoreV2save_190/Const!save_190/RestoreV2_4/tensor_names%save_190/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_190/Assign_4Assignlayer_2/W/Weightssave_190/RestoreV2_4*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_2/W/Weights
^
!save_190/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_190/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_190/RestoreV2_5	RestoreV2save_190/Const!save_190/RestoreV2_5/tensor_names%save_190/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_190/Assign_5Assignlayer_2/b/biasessave_190/RestoreV2_5*
validate_shape(*#
_class
loc:@layer_2/b/biases*
T0*
use_locking(
�
save_190/restore_allNoOp^save_190/Assign^save_190/Assign_1^save_190/Assign_2^save_190/Assign_3^save_190/Assign_4^save_190/Assign_5
<
save_191/ConstConst*
dtype0*
valueB Bmodel
�
save_191/SaveV2/tensor_namesConst*
dtype0*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases
W
 save_191/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_191/SaveV2SaveV2save_191/Constsave_191/SaveV2/tensor_names save_191/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_191/control_dependencyIdentitysave_191/Const^save_191/SaveV2*
T0*!
_class
loc:@save_191/Const
[
save_191/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_191/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_191/RestoreV2	RestoreV2save_191/Constsave_191/RestoreV2/tensor_names#save_191/RestoreV2/shape_and_slices*
dtypes
2
�
save_191/AssignAssignlayer/W/Weightssave_191/RestoreV2*"
_class
loc:@layer/W/Weights*
T0*
validate_shape(*
use_locking(
\
!save_191/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
R
%save_191/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_191/RestoreV2_1	RestoreV2save_191/Const!save_191/RestoreV2_1/tensor_names%save_191/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_191/Assign_1Assignlayer/b/biasessave_191/RestoreV2_1*
use_locking(*
validate_shape(*
T0*!
_class
loc:@layer/b/biases
_
!save_191/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
R
%save_191/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_191/RestoreV2_2	RestoreV2save_191/Const!save_191/RestoreV2_2/tensor_names%save_191/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_191/Assign_2Assignlayer_1/W/Weightssave_191/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
^
!save_191/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
R
%save_191/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_191/RestoreV2_3	RestoreV2save_191/Const!save_191/RestoreV2_3/tensor_names%save_191/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_191/Assign_3Assignlayer_1/b/biasessave_191/RestoreV2_3*#
_class
loc:@layer_1/b/biases*
T0*
validate_shape(*
use_locking(
_
!save_191/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_191/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
�
save_191/RestoreV2_4	RestoreV2save_191/Const!save_191/RestoreV2_4/tensor_names%save_191/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_191/Assign_4Assignlayer_2/W/Weightssave_191/RestoreV2_4*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_2/W/Weights
^
!save_191/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_191/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_191/RestoreV2_5	RestoreV2save_191/Const!save_191/RestoreV2_5/tensor_names%save_191/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_191/Assign_5Assignlayer_2/b/biasessave_191/RestoreV2_5*
use_locking(*
T0*#
_class
loc:@layer_2/b/biases*
validate_shape(
�
save_191/restore_allNoOp^save_191/Assign^save_191/Assign_1^save_191/Assign_2^save_191/Assign_3^save_191/Assign_4^save_191/Assign_5
<
save_192/ConstConst*
dtype0*
valueB Bmodel
�
save_192/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_192/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B B B 
�
save_192/SaveV2SaveV2save_192/Constsave_192/SaveV2/tensor_names save_192/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_192/control_dependencyIdentitysave_192/Const^save_192/SaveV2*!
_class
loc:@save_192/Const*
T0
[
save_192/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_192/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_192/RestoreV2	RestoreV2save_192/Constsave_192/RestoreV2/tensor_names#save_192/RestoreV2/shape_and_slices*
dtypes
2
�
save_192/AssignAssignlayer/W/Weightssave_192/RestoreV2*"
_class
loc:@layer/W/Weights*
T0*
validate_shape(*
use_locking(
\
!save_192/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_192/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_192/RestoreV2_1	RestoreV2save_192/Const!save_192/RestoreV2_1/tensor_names%save_192/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_192/Assign_1Assignlayer/b/biasessave_192/RestoreV2_1*!
_class
loc:@layer/b/biases*
T0*
validate_shape(*
use_locking(
_
!save_192/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_192/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_192/RestoreV2_2	RestoreV2save_192/Const!save_192/RestoreV2_2/tensor_names%save_192/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_192/Assign_2Assignlayer_1/W/Weightssave_192/RestoreV2_2*
validate_shape(*$
_class
loc:@layer_1/W/Weights*
T0*
use_locking(
^
!save_192/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
R
%save_192/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_192/RestoreV2_3	RestoreV2save_192/Const!save_192/RestoreV2_3/tensor_names%save_192/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_192/Assign_3Assignlayer_1/b/biasessave_192/RestoreV2_3*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_1/b/biases
_
!save_192/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_192/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_192/RestoreV2_4	RestoreV2save_192/Const!save_192/RestoreV2_4/tensor_names%save_192/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_192/Assign_4Assignlayer_2/W/Weightssave_192/RestoreV2_4*
use_locking(*
T0*$
_class
loc:@layer_2/W/Weights*
validate_shape(
^
!save_192/RestoreV2_5/tensor_namesConst*%
valueBBlayer_2/b/biases*
dtype0
R
%save_192/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_192/RestoreV2_5	RestoreV2save_192/Const!save_192/RestoreV2_5/tensor_names%save_192/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_192/Assign_5Assignlayer_2/b/biasessave_192/RestoreV2_5*#
_class
loc:@layer_2/b/biases*
T0*
validate_shape(*
use_locking(
�
save_192/restore_allNoOp^save_192/Assign^save_192/Assign_1^save_192/Assign_2^save_192/Assign_3^save_192/Assign_4^save_192/Assign_5
<
save_193/ConstConst*
dtype0*
valueB Bmodel
�
save_193/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_193/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_193/SaveV2SaveV2save_193/Constsave_193/SaveV2/tensor_names save_193/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_193/control_dependencyIdentitysave_193/Const^save_193/SaveV2*
T0*!
_class
loc:@save_193/Const
[
save_193/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_193/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_193/RestoreV2	RestoreV2save_193/Constsave_193/RestoreV2/tensor_names#save_193/RestoreV2/shape_and_slices*
dtypes
2
�
save_193/AssignAssignlayer/W/Weightssave_193/RestoreV2*
use_locking(*
validate_shape(*
T0*"
_class
loc:@layer/W/Weights
\
!save_193/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
R
%save_193/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_193/RestoreV2_1	RestoreV2save_193/Const!save_193/RestoreV2_1/tensor_names%save_193/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_193/Assign_1Assignlayer/b/biasessave_193/RestoreV2_1*!
_class
loc:@layer/b/biases*
T0*
validate_shape(*
use_locking(
_
!save_193/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_193/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_193/RestoreV2_2	RestoreV2save_193/Const!save_193/RestoreV2_2/tensor_names%save_193/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_193/Assign_2Assignlayer_1/W/Weightssave_193/RestoreV2_2*
validate_shape(*$
_class
loc:@layer_1/W/Weights*
T0*
use_locking(
^
!save_193/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
R
%save_193/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_193/RestoreV2_3	RestoreV2save_193/Const!save_193/RestoreV2_3/tensor_names%save_193/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_193/Assign_3Assignlayer_1/b/biasessave_193/RestoreV2_3*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_1/b/biases
_
!save_193/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_193/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
�
save_193/RestoreV2_4	RestoreV2save_193/Const!save_193/RestoreV2_4/tensor_names%save_193/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_193/Assign_4Assignlayer_2/W/Weightssave_193/RestoreV2_4*
validate_shape(*$
_class
loc:@layer_2/W/Weights*
T0*
use_locking(
^
!save_193/RestoreV2_5/tensor_namesConst*%
valueBBlayer_2/b/biases*
dtype0
R
%save_193/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_193/RestoreV2_5	RestoreV2save_193/Const!save_193/RestoreV2_5/tensor_names%save_193/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_193/Assign_5Assignlayer_2/b/biasessave_193/RestoreV2_5*
validate_shape(*#
_class
loc:@layer_2/b/biases*
T0*
use_locking(
�
save_193/restore_allNoOp^save_193/Assign^save_193/Assign_1^save_193/Assign_2^save_193/Assign_3^save_193/Assign_4^save_193/Assign_5
<
save_194/ConstConst*
valueB Bmodel*
dtype0
�
save_194/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_194/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_194/SaveV2SaveV2save_194/Constsave_194/SaveV2/tensor_names save_194/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_194/control_dependencyIdentitysave_194/Const^save_194/SaveV2*!
_class
loc:@save_194/Const*
T0
[
save_194/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
P
#save_194/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_194/RestoreV2	RestoreV2save_194/Constsave_194/RestoreV2/tensor_names#save_194/RestoreV2/shape_and_slices*
dtypes
2
�
save_194/AssignAssignlayer/W/Weightssave_194/RestoreV2*
use_locking(*
validate_shape(*
T0*"
_class
loc:@layer/W/Weights
\
!save_194/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_194/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_194/RestoreV2_1	RestoreV2save_194/Const!save_194/RestoreV2_1/tensor_names%save_194/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_194/Assign_1Assignlayer/b/biasessave_194/RestoreV2_1*
use_locking(*
validate_shape(*
T0*!
_class
loc:@layer/b/biases
_
!save_194/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_194/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_194/RestoreV2_2	RestoreV2save_194/Const!save_194/RestoreV2_2/tensor_names%save_194/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_194/Assign_2Assignlayer_1/W/Weightssave_194/RestoreV2_2*
use_locking(*
T0*$
_class
loc:@layer_1/W/Weights*
validate_shape(
^
!save_194/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
R
%save_194/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_194/RestoreV2_3	RestoreV2save_194/Const!save_194/RestoreV2_3/tensor_names%save_194/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_194/Assign_3Assignlayer_1/b/biasessave_194/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
_
!save_194/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_194/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_194/RestoreV2_4	RestoreV2save_194/Const!save_194/RestoreV2_4/tensor_names%save_194/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_194/Assign_4Assignlayer_2/W/Weightssave_194/RestoreV2_4*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_2/W/Weights
^
!save_194/RestoreV2_5/tensor_namesConst*%
valueBBlayer_2/b/biases*
dtype0
R
%save_194/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_194/RestoreV2_5	RestoreV2save_194/Const!save_194/RestoreV2_5/tensor_names%save_194/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_194/Assign_5Assignlayer_2/b/biasessave_194/RestoreV2_5*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_2/b/biases
�
save_194/restore_allNoOp^save_194/Assign^save_194/Assign_1^save_194/Assign_2^save_194/Assign_3^save_194/Assign_4^save_194/Assign_5
<
save_195/ConstConst*
dtype0*
valueB Bmodel
�
save_195/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_195/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_195/SaveV2SaveV2save_195/Constsave_195/SaveV2/tensor_names save_195/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_195/control_dependencyIdentitysave_195/Const^save_195/SaveV2*
T0*!
_class
loc:@save_195/Const
[
save_195/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_195/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_195/RestoreV2	RestoreV2save_195/Constsave_195/RestoreV2/tensor_names#save_195/RestoreV2/shape_and_slices*
dtypes
2
�
save_195/AssignAssignlayer/W/Weightssave_195/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
\
!save_195/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_195/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_195/RestoreV2_1	RestoreV2save_195/Const!save_195/RestoreV2_1/tensor_names%save_195/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_195/Assign_1Assignlayer/b/biasessave_195/RestoreV2_1*!
_class
loc:@layer/b/biases*
T0*
validate_shape(*
use_locking(
_
!save_195/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
R
%save_195/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_195/RestoreV2_2	RestoreV2save_195/Const!save_195/RestoreV2_2/tensor_names%save_195/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_195/Assign_2Assignlayer_1/W/Weightssave_195/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
^
!save_195/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
R
%save_195/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_195/RestoreV2_3	RestoreV2save_195/Const!save_195/RestoreV2_3/tensor_names%save_195/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_195/Assign_3Assignlayer_1/b/biasessave_195/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
_
!save_195/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_195/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
�
save_195/RestoreV2_4	RestoreV2save_195/Const!save_195/RestoreV2_4/tensor_names%save_195/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_195/Assign_4Assignlayer_2/W/Weightssave_195/RestoreV2_4*$
_class
loc:@layer_2/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_195/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_195/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_195/RestoreV2_5	RestoreV2save_195/Const!save_195/RestoreV2_5/tensor_names%save_195/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_195/Assign_5Assignlayer_2/b/biasessave_195/RestoreV2_5*
validate_shape(*#
_class
loc:@layer_2/b/biases*
T0*
use_locking(
�
save_195/restore_allNoOp^save_195/Assign^save_195/Assign_1^save_195/Assign_2^save_195/Assign_3^save_195/Assign_4^save_195/Assign_5
<
save_196/ConstConst*
dtype0*
valueB Bmodel
�
save_196/SaveV2/tensor_namesConst*
dtype0*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases
W
 save_196/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B B B 
�
save_196/SaveV2SaveV2save_196/Constsave_196/SaveV2/tensor_names save_196/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_196/control_dependencyIdentitysave_196/Const^save_196/SaveV2*
T0*!
_class
loc:@save_196/Const
[
save_196/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_196/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_196/RestoreV2	RestoreV2save_196/Constsave_196/RestoreV2/tensor_names#save_196/RestoreV2/shape_and_slices*
dtypes
2
�
save_196/AssignAssignlayer/W/Weightssave_196/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
\
!save_196/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
R
%save_196/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_196/RestoreV2_1	RestoreV2save_196/Const!save_196/RestoreV2_1/tensor_names%save_196/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_196/Assign_1Assignlayer/b/biasessave_196/RestoreV2_1*
use_locking(*
T0*!
_class
loc:@layer/b/biases*
validate_shape(
_
!save_196/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_196/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_196/RestoreV2_2	RestoreV2save_196/Const!save_196/RestoreV2_2/tensor_names%save_196/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_196/Assign_2Assignlayer_1/W/Weightssave_196/RestoreV2_2*$
_class
loc:@layer_1/W/Weights*
T0*
validate_shape(*
use_locking(
^
!save_196/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
R
%save_196/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_196/RestoreV2_3	RestoreV2save_196/Const!save_196/RestoreV2_3/tensor_names%save_196/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_196/Assign_3Assignlayer_1/b/biasessave_196/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
_
!save_196/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_196/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
�
save_196/RestoreV2_4	RestoreV2save_196/Const!save_196/RestoreV2_4/tensor_names%save_196/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_196/Assign_4Assignlayer_2/W/Weightssave_196/RestoreV2_4*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_2/W/Weights
^
!save_196/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_196/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_196/RestoreV2_5	RestoreV2save_196/Const!save_196/RestoreV2_5/tensor_names%save_196/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_196/Assign_5Assignlayer_2/b/biasessave_196/RestoreV2_5*#
_class
loc:@layer_2/b/biases*
T0*
validate_shape(*
use_locking(
�
save_196/restore_allNoOp^save_196/Assign^save_196/Assign_1^save_196/Assign_2^save_196/Assign_3^save_196/Assign_4^save_196/Assign_5
<
save_197/ConstConst*
valueB Bmodel*
dtype0
�
save_197/SaveV2/tensor_namesConst*
dtype0*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases
W
 save_197/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_197/SaveV2SaveV2save_197/Constsave_197/SaveV2/tensor_names save_197/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_197/control_dependencyIdentitysave_197/Const^save_197/SaveV2*!
_class
loc:@save_197/Const*
T0
[
save_197/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_197/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_197/RestoreV2	RestoreV2save_197/Constsave_197/RestoreV2/tensor_names#save_197/RestoreV2/shape_and_slices*
dtypes
2
�
save_197/AssignAssignlayer/W/Weightssave_197/RestoreV2*
use_locking(*
T0*"
_class
loc:@layer/W/Weights*
validate_shape(
\
!save_197/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_197/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_197/RestoreV2_1	RestoreV2save_197/Const!save_197/RestoreV2_1/tensor_names%save_197/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_197/Assign_1Assignlayer/b/biasessave_197/RestoreV2_1*
validate_shape(*!
_class
loc:@layer/b/biases*
T0*
use_locking(
_
!save_197/RestoreV2_2/tensor_namesConst*&
valueBBlayer_1/W/Weights*
dtype0
R
%save_197/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_197/RestoreV2_2	RestoreV2save_197/Const!save_197/RestoreV2_2/tensor_names%save_197/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_197/Assign_2Assignlayer_1/W/Weightssave_197/RestoreV2_2*
validate_shape(*$
_class
loc:@layer_1/W/Weights*
T0*
use_locking(
^
!save_197/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
R
%save_197/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_197/RestoreV2_3	RestoreV2save_197/Const!save_197/RestoreV2_3/tensor_names%save_197/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_197/Assign_3Assignlayer_1/b/biasessave_197/RestoreV2_3*#
_class
loc:@layer_1/b/biases*
T0*
validate_shape(*
use_locking(
_
!save_197/RestoreV2_4/tensor_namesConst*
dtype0*&
valueBBlayer_2/W/Weights
R
%save_197/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
�
save_197/RestoreV2_4	RestoreV2save_197/Const!save_197/RestoreV2_4/tensor_names%save_197/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_197/Assign_4Assignlayer_2/W/Weightssave_197/RestoreV2_4*
use_locking(*
T0*$
_class
loc:@layer_2/W/Weights*
validate_shape(
^
!save_197/RestoreV2_5/tensor_namesConst*%
valueBBlayer_2/b/biases*
dtype0
R
%save_197/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_197/RestoreV2_5	RestoreV2save_197/Const!save_197/RestoreV2_5/tensor_names%save_197/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_197/Assign_5Assignlayer_2/b/biasessave_197/RestoreV2_5*
use_locking(*
validate_shape(*
T0*#
_class
loc:@layer_2/b/biases
�
save_197/restore_allNoOp^save_197/Assign^save_197/Assign_1^save_197/Assign_2^save_197/Assign_3^save_197/Assign_4^save_197/Assign_5
<
save_198/ConstConst*
valueB Bmodel*
dtype0
�
save_198/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_198/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_198/SaveV2SaveV2save_198/Constsave_198/SaveV2/tensor_names save_198/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_198/control_dependencyIdentitysave_198/Const^save_198/SaveV2*
T0*!
_class
loc:@save_198/Const
[
save_198/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_198/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_198/RestoreV2	RestoreV2save_198/Constsave_198/RestoreV2/tensor_names#save_198/RestoreV2/shape_and_slices*
dtypes
2
�
save_198/AssignAssignlayer/W/Weightssave_198/RestoreV2*"
_class
loc:@layer/W/Weights*
T0*
validate_shape(*
use_locking(
\
!save_198/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_198/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_198/RestoreV2_1	RestoreV2save_198/Const!save_198/RestoreV2_1/tensor_names%save_198/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_198/Assign_1Assignlayer/b/biasessave_198/RestoreV2_1*
use_locking(*
T0*!
_class
loc:@layer/b/biases*
validate_shape(
_
!save_198/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_198/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_198/RestoreV2_2	RestoreV2save_198/Const!save_198/RestoreV2_2/tensor_names%save_198/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_198/Assign_2Assignlayer_1/W/Weightssave_198/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
^
!save_198/RestoreV2_3/tensor_namesConst*%
valueBBlayer_1/b/biases*
dtype0
R
%save_198/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_198/RestoreV2_3	RestoreV2save_198/Const!save_198/RestoreV2_3/tensor_names%save_198/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_198/Assign_3Assignlayer_1/b/biasessave_198/RestoreV2_3*
validate_shape(*#
_class
loc:@layer_1/b/biases*
T0*
use_locking(
_
!save_198/RestoreV2_4/tensor_namesConst*
dtype0*&
valueBBlayer_2/W/Weights
R
%save_198/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
�
save_198/RestoreV2_4	RestoreV2save_198/Const!save_198/RestoreV2_4/tensor_names%save_198/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_198/Assign_4Assignlayer_2/W/Weightssave_198/RestoreV2_4*
validate_shape(*$
_class
loc:@layer_2/W/Weights*
T0*
use_locking(
^
!save_198/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_2/b/biases
R
%save_198/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_198/RestoreV2_5	RestoreV2save_198/Const!save_198/RestoreV2_5/tensor_names%save_198/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_198/Assign_5Assignlayer_2/b/biasessave_198/RestoreV2_5*#
_class
loc:@layer_2/b/biases*
T0*
validate_shape(*
use_locking(
�
save_198/restore_allNoOp^save_198/Assign^save_198/Assign_1^save_198/Assign_2^save_198/Assign_3^save_198/Assign_4^save_198/Assign_5
<
save_199/ConstConst*
valueB Bmodel*
dtype0
�
save_199/SaveV2/tensor_namesConst*
dtype0*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases
W
 save_199/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B B B B 
�
save_199/SaveV2SaveV2save_199/Constsave_199/SaveV2/tensor_names save_199/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_199/control_dependencyIdentitysave_199/Const^save_199/SaveV2*!
_class
loc:@save_199/Const*
T0
[
save_199/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer/W/Weights
P
#save_199/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_199/RestoreV2	RestoreV2save_199/Constsave_199/RestoreV2/tensor_names#save_199/RestoreV2/shape_and_slices*
dtypes
2
�
save_199/AssignAssignlayer/W/Weightssave_199/RestoreV2*
validate_shape(*"
_class
loc:@layer/W/Weights*
T0*
use_locking(
\
!save_199/RestoreV2_1/tensor_namesConst*#
valueBBlayer/b/biases*
dtype0
R
%save_199/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_199/RestoreV2_1	RestoreV2save_199/Const!save_199/RestoreV2_1/tensor_names%save_199/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_199/Assign_1Assignlayer/b/biasessave_199/RestoreV2_1*!
_class
loc:@layer/b/biases*
T0*
validate_shape(*
use_locking(
_
!save_199/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_199/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_199/RestoreV2_2	RestoreV2save_199/Const!save_199/RestoreV2_2/tensor_names%save_199/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_199/Assign_2Assignlayer_1/W/Weightssave_199/RestoreV2_2*
use_locking(*
T0*$
_class
loc:@layer_1/W/Weights*
validate_shape(
^
!save_199/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
R
%save_199/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
�
save_199/RestoreV2_3	RestoreV2save_199/Const!save_199/RestoreV2_3/tensor_names%save_199/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_199/Assign_3Assignlayer_1/b/biasessave_199/RestoreV2_3*
use_locking(*
T0*#
_class
loc:@layer_1/b/biases*
validate_shape(
_
!save_199/RestoreV2_4/tensor_namesConst*&
valueBBlayer_2/W/Weights*
dtype0
R
%save_199/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
�
save_199/RestoreV2_4	RestoreV2save_199/Const!save_199/RestoreV2_4/tensor_names%save_199/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_199/Assign_4Assignlayer_2/W/Weightssave_199/RestoreV2_4*
use_locking(*
T0*$
_class
loc:@layer_2/W/Weights*
validate_shape(
^
!save_199/RestoreV2_5/tensor_namesConst*%
valueBBlayer_2/b/biases*
dtype0
R
%save_199/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_199/RestoreV2_5	RestoreV2save_199/Const!save_199/RestoreV2_5/tensor_names%save_199/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_199/Assign_5Assignlayer_2/b/biasessave_199/RestoreV2_5*
use_locking(*
T0*#
_class
loc:@layer_2/b/biases*
validate_shape(
�
save_199/restore_allNoOp^save_199/Assign^save_199/Assign_1^save_199/Assign_2^save_199/Assign_3^save_199/Assign_4^save_199/Assign_5
<
save_200/ConstConst*
dtype0*
valueB Bmodel
�
save_200/SaveV2/tensor_namesConst*~
valueuBsBlayer/W/WeightsBlayer/b/biasesBlayer_1/W/WeightsBlayer_1/b/biasesBlayer_2/W/WeightsBlayer_2/b/biases*
dtype0
W
 save_200/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0
�
save_200/SaveV2SaveV2save_200/Constsave_200/SaveV2/tensor_names save_200/SaveV2/shape_and_sliceslayer/W/Weightslayer/b/biaseslayer_1/W/Weightslayer_1/b/biaseslayer_2/W/Weightslayer_2/b/biases*
dtypes

2
u
save_200/control_dependencyIdentitysave_200/Const^save_200/SaveV2*
T0*!
_class
loc:@save_200/Const
[
save_200/RestoreV2/tensor_namesConst*$
valueBBlayer/W/Weights*
dtype0
P
#save_200/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_200/RestoreV2	RestoreV2save_200/Constsave_200/RestoreV2/tensor_names#save_200/RestoreV2/shape_and_slices*
dtypes
2
�
save_200/AssignAssignlayer/W/Weightssave_200/RestoreV2*
use_locking(*
validate_shape(*
T0*"
_class
loc:@layer/W/Weights
\
!save_200/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBlayer/b/biases
R
%save_200/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_200/RestoreV2_1	RestoreV2save_200/Const!save_200/RestoreV2_1/tensor_names%save_200/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_200/Assign_1Assignlayer/b/biasessave_200/RestoreV2_1*
use_locking(*
validate_shape(*
T0*!
_class
loc:@layer/b/biases
_
!save_200/RestoreV2_2/tensor_namesConst*
dtype0*&
valueBBlayer_1/W/Weights
R
%save_200/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_200/RestoreV2_2	RestoreV2save_200/Const!save_200/RestoreV2_2/tensor_names%save_200/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_200/Assign_2Assignlayer_1/W/Weightssave_200/RestoreV2_2*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_1/W/Weights
^
!save_200/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_1/b/biases
R
%save_200/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_200/RestoreV2_3	RestoreV2save_200/Const!save_200/RestoreV2_3/tensor_names%save_200/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_200/Assign_3Assignlayer_1/b/biasessave_200/RestoreV2_3*#
_class
loc:@layer_1/b/biases*
T0*
validate_shape(*
use_locking(
_
!save_200/RestoreV2_4/tensor_namesConst*
dtype0*&
valueBBlayer_2/W/Weights
R
%save_200/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
�
save_200/RestoreV2_4	RestoreV2save_200/Const!save_200/RestoreV2_4/tensor_names%save_200/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_200/Assign_4Assignlayer_2/W/Weightssave_200/RestoreV2_4*
use_locking(*
validate_shape(*
T0*$
_class
loc:@layer_2/W/Weights
^
!save_200/RestoreV2_5/tensor_namesConst*%
valueBBlayer_2/b/biases*
dtype0
R
%save_200/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_200/RestoreV2_5	RestoreV2save_200/Const!save_200/RestoreV2_5/tensor_names%save_200/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_200/Assign_5Assignlayer_2/b/biasessave_200/RestoreV2_5*
use_locking(*
T0*#
_class
loc:@layer_2/b/biases*
validate_shape(
�
save_200/restore_allNoOp^save_200/Assign^save_200/Assign_1^save_200/Assign_2^save_200/Assign_3^save_200/Assign_4^save_200/Assign_5
<
ArgMax_2/dimensionConst*
dtype0*
value	B :
Q
ArgMax_2ArgMaxlayer_2/final_resultArgMax_2/dimension*

Tidx0*
T0
<
ArgMax_3/dimensionConst*
value	B :*
dtype0
L
ArgMax_3ArgMaxinput_2/y_inputArgMax_3/dimension*
T0*

Tidx0
-
Equal_1EqualArgMax_2ArgMax_3*
T0	
/
Cast_1CastEqual_1*

SrcT0
*

DstT0
5
Const_1Const*
valueB: *
dtype0
E
Mean_1MeanCast_1Const_1*
T0*

Tidx0*
	keep_dims( "