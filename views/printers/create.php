<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Printers */

$this->title = 'Create Printers';
$this->params['breadcrumbs'][] = ['label' => 'Printers', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="printers-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
