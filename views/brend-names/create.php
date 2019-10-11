<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\BrendNames */

$this->title = 'Create Brend Names';
$this->params['breadcrumbs'][] = ['label' => 'Brend Names', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="brend-names-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
