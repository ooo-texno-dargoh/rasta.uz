<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\CategoryNames */

$this->title = 'Create Category Names';
$this->params['breadcrumbs'][] = ['label' => 'Category Names', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="category-names-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
