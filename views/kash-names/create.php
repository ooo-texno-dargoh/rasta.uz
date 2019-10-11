<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\KashNames */

$this->title = 'Create Kash Names';
$this->params['breadcrumbs'][] = ['label' => 'Kash Names', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="kash-names-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
