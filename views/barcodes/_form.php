<?php
use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Barcodes */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="barcodes-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'barcode')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'good_id')->textInput() ?>

    <?= $form->field($model, 'status')->textInput() ?>

  
	<?php if (!Yii::$app->request->isAjax){ ?>
	  	<div class="form-group">
	        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
	    </div>
	<?php } ?>

    <?php ActiveForm::end(); ?>
    
</div>