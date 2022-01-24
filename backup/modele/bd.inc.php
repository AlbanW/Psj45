<?php
function connexionPDO() {
    $db_username = "Admin-psj45";
    $db_password = "Zmw250i~";
    $db = new PDO('mysql:host=localhost:3306;dbname=psj45', $db_username, $db_password, array(PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES \'UTF8\'')); 
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    return $db;
}
?>

