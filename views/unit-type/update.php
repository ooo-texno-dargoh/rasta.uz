<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\UnitType */

$this->title = 'Update Unit Type: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Unit Types', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="unit-type-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
