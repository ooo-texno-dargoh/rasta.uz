<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Citytowns */

$this->title = 'Create Citytowns';
$this->params['breadcrumbs'][] = ['label' => 'Citytowns', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="citytowns-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
