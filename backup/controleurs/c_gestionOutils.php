<?php
$action = $_REQUEST['action'];
if (isset($_COOKIE['username'])){
    switch($action)
    {
        case 'confirmationSuppression':
            {
                include("vues/v_confirmation.php");
                break;
            }
    }
}
else{
    header("Location:index.php");
}
?>
