<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\RoleNames */
?>
<div class="role-names-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'name',
            'lang_id',
            'role_id',
            'status',
        ],
    ]) ?>

</div>
