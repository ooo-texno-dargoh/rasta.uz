<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\PrinterThemes */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="printer-themes-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'printer_id')->textInput() ?>

    <?= $form->field($model, 'theme')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'status')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
