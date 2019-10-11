<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Brends */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="brends-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'factory_id')->textInput() ?>

    <?= $form->field($model, 'status')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
