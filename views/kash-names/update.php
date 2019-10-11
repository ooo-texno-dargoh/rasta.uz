<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\KashNames */

$this->title = 'Update Kash Names: ' . $model->name;
$this->params['breadcrumbs'][] = ['label' => 'Kash Names', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->name, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="kash-names-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
