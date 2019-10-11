<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\PrinterThemes */

$this->title = 'Create Printer Themes';
$this->params['breadcrumbs'][] = ['label' => 'Printer Themes', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="printer-themes-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
