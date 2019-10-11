<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\FactoryNames */

$this->title = 'Create Factory Names';
$this->params['breadcrumbs'][] = ['label' => 'Factory Names', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="factory-names-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
