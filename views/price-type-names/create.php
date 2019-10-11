<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\PriceTypeNames */

$this->title = 'Create Price Type Names';
$this->params['breadcrumbs'][] = ['label' => 'Price Type Names', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="price-type-names-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
