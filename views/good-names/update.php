<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\GoodNames */

$this->title = 'Update Good Names: ' . $model->name;
$this->params['breadcrumbs'][] = ['label' => 'Good Names', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->name, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="good-names-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
