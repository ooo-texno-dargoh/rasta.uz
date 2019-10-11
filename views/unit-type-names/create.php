<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\UnitTypeNames */

$this->title = 'Create Unit Type Names';
$this->params['breadcrumbs'][] = ['label' => 'Unit Type Names', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="unit-type-names-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
