<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\FactoryNames */

$this->title = 'Update Factory Names: ' . $model->name;
$this->params['breadcrumbs'][] = ['label' => 'Factory Names', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->name, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="factory-names-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
