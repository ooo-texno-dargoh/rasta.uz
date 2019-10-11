<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\BrendNames */

$this->title = 'Update Brend Names: ' . $model->name;
$this->params['breadcrumbs'][] = ['label' => 'Brend Names', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->name, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="brend-names-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
