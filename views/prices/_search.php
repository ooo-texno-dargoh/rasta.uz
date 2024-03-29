<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\search\PricesSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="prices-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'good_id') ?>

    <?= $form->field($model, 'price_type_id') ?>

    <?= $form->field($model, 'price') ?>

    <?= $form->field($model, 'datetime') ?>

    <?php // echo $form->field($model, 'is_currency') ?>

    <?php // echo $form->field($model, 'status') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
