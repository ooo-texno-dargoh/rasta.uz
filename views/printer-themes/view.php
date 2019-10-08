<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\PrinterThemes */
?>
<div class="printer-themes-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'printer_id',
            'theme:ntext',
            'status',
        ],
    ]) ?>

</div>
