<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\User */
?>
<div class="user-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'username',
            'password',
            'fio',
            'role',
            'phone',
            'phone1',
            'lang_id',
            'photo',
            'telegram',
            'is_active',
            'online',
            'status',
        ],
    ]) ?>

</div>
