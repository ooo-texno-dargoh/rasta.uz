<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\WherehouseGroupNames */

$this->title = 'Create Wherehouse Group Names';
$this->params['breadcrumbs'][] = ['label' => 'Wherehouse Group Names', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="wherehouse-group-names-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
