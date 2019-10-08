<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\MyRequisites */
?>
<div class="my-requisites-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'name',
            'mfo',
            'oked',
            'account_number',
            'adress',
            'landmark',
            'phone',
            'directory',
            'lang_id',
            'status',
        ],
    ]) ?>

</div>
