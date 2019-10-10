<?php

namespace app\controllers;

use app\models\Bank;
use app\models\User;
use Yii;
use yii\helpers\ArrayHelper;
use yii\web\Response;

class AjaxController extends \yii\web\Controller
{
    public $enableCsrfValidation=false;
    public function actionIndex()
    {
        return $this->render('index');
    }
    public function actionGetuser()
    {
        \Yii::$app->response->format = \yii\web\Response::FORMAT_JSON;

        if($data=\Yii::$app->request->post()) {


            $id = $data['id'];

            if ($bank = Bank::find()->all()) {
                return $bank;
            }
        }
        return ['message'=>'error'];

    }

}
