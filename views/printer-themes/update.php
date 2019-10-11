<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\PrinterThemes */

$this->title = 'Update Printer Themes: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Printer Themes', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="printer-themes-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
