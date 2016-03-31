<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use backend\models\User;
use yii\helpers\ArrayHelper;

/* @var $this yii\web\View */
/* @var $model backend\models\User */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="user-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'username')->textInput(['maxlength' => 255,'style'=>'width:255px;']) ?>

    <?= $form->field($model, 'password')->passwordInput(['maxlength' => 255,'style'=>'width:255px;']) ?>

    <?= $form->field($model, 'repassword')->passwordInput(['maxlength' => 255,'style'=>'width:255px;']) ?>

    <?= $form->field($model, 'email')->textInput(['maxlength' => 255,'style'=>'width:255px;']) ?>
    <?= $form->field($model, 'auth_role')->dropDownList(User::getArrayAuthRole(),['style'=>'width:255px;']) ?>

    <?= $form->field($model, 'status')->dropDownList(User::getArrayStatus(),['style'=>'width:255px;']) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? Yii::t('app', 'Create') : Yii::t('app', 'Update'), ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
