<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\RegionNames */

$this->title = 'Create Region Names';
$this->params['breadcrumbs'][] = ['label' => 'Region Names', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="region-names-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
