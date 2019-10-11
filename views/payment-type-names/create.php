<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\PaymentTypeNames */

$this->title = 'Create Payment Type Names';
$this->params['breadcrumbs'][] = ['label' => 'Payment Type Names', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="payment-type-names-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
