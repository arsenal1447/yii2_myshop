<?php

use yii\web\Response;

/**
 * @param $message
 * @param bool|true $debug
 */
function pr($message, $debug = true)
{
    echo '<pre>';
    print_r($message);
    echo '</pre>';
    if ($debug) {
        die;
    }
}