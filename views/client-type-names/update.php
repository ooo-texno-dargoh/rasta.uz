<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\ClientTypeNames */

$this->title = 'Update Client Type Names: ' . $model->name;
$this->params['breadcrumbs'][] = ['label' => 'Client Type Names', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->name, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="client-type-names-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
