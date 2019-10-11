<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\GoodNames */

$this->title = 'Create Good Names';
$this->params['breadcrumbs'][] = ['label' => 'Good Names', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="good-names-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
