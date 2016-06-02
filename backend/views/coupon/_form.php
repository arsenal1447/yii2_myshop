<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;

/* @var $this yii\web\View */
/* @var $model common\models\Coupon */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="coupon-form">

    <?php //$form = ActiveForm::begin(); ?>
    
     <?php $form = ActiveForm::begin([
        'id' => 'mend-form',
        'options' => ['class' => 'form-horizontal'],
        'fieldConfig' => [
            'template' => "{label}\n<div class=\"col-lg-6\">{input}{hint}</div>\n<div class=\"col-lg-5\">{error}</div>",
            'labelOptions' => ['class' => 'col-lg-1 control-label'],
        ],
    ]); ?>

    <?= $form->field($model, 'user_id')->textInput(['style'=>'width:120px']) ?>

    <?php //echo $form->field($model, 'coupon_type_id')->textInput(['style'=>'width:120px']) ?>
    <?= $form->field($model, 'coupon_type_id')->dropDownList(ArrayHelper::map(\common\models\CouponType::find()->all(), 'id', 'name'),['prompt'=>'请选择','style'=>'width:120px'])?>

    <?= $form->field($model, 'sn')->textInput(['maxlength' => 255,'style'=>'width:255px']) ?>

    <?= $form->field($model, 'order_id')->textInput(['style'=>'width:120px']) ?>

    <?= $form->field($model, 'used_at')->textInput(['style'=>'width:120px']) ?>

    <?= $form->field($model, 'money')->textInput(['style'=>'width:120px']) ?>

    <?= $form->field($model, 'min_amount')->textInput(['style'=>'width:120px']) ?>

    <?= $form->field($model, 'created_by')->textInput(['style'=>'width:120px']) ?>

    <?= $form->field($model, 'updated_by')->textInput(['style'=>'width:120px']) ?>
    
    <div class="form-group field-car-started_at">
        <?= Html::activeLabel($model, 'started_at', ['class' => 'col-lg-1 control-label']); ?>
        <div class="col-lg-3">
            <?php
            echo \yii\jui\DatePicker::widget([
                'model' => $model,
                'attribute' => 'started_at',
                'dateFormat' => 'yyyy-MM-dd',
            ]);
            ?>
        </div>
        <?= Html::error($model, 'started_at', ['class' => 'col-lg-5']); ?>
    </div>

    <div class="form-group field-car-started_at">
        <?= Html::activeLabel($model, 'ended_at', ['class' => 'col-lg-1 control-label']); ?>
        <div class="col-lg-3">
            <?php
            echo \yii\jui\DatePicker::widget([
                'model' => $model,
                'attribute' => 'ended_at',
                'dateFormat' => 'yyyy-MM-dd',
            ]);
            ?>
        </div>
        <?= Html::error($model, 'ended_at', ['class' => 'col-lg-5']); ?>
    </div>

    <div class="form-group">
        <label class="col-lg-2 control-label" for="">&nbsp;</label>
        <?= Html::submitButton($model->isNewRecord ? Yii::t('app', 'Create') : Yii::t('app', 'Update'), ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
