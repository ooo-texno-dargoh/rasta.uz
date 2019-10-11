<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\RoleNames */

$this->title = 'Create Role Names';
$this->params['breadcrumbs'][] = ['label' => 'Role Names', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="role-names-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
