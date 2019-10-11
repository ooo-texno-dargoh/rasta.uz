<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\OrderTypeNames */

$this->title = 'Create Order Type Names';
$this->params['breadcrumbs'][] = ['label' => 'Order Type Names', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="order-type-names-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
