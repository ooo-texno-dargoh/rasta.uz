<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Clients */
?>
<div class="clients-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'name',
            'mfo',
            'oked',
            'account_number',
            'address',
            'landmark',
            'phone',
            'phone1',
            'telegram',
            'director',
            'client_type_id',
            'bank_id',
            'notes',
            'status',
        ],
    ]) ?>

</div>
