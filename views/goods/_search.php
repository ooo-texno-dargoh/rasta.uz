<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\search\GoodsSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="goods-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'weight') ?>

    <?= $form->field($model, 'unit_type_id') ?>

    <?= $form->field($model, 'count_in_case') ?>

    <?= $form->field($model, 'category_id') ?>

    <?php // echo $form->field($model, 'brend_id') ?>

    <?php // echo $form->field($model, 'factory_id') ?>

    <?php // echo $form->field($model, 'min_count') ?>

    <?php // echo $form->field($model, 'status') ?>

    <?php // echo $form->field($model, 'data_time') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
