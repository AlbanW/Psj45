<?php
if (isset($_COOKIE['username'])){
    if (!isset($_REQUEST['action'])){
        $action= 'Sauvegarde'; 
        }
    else{
        $action = $_REQUEST['action'];
    }
    echo '<div style="padding: 10px">';
    switch($action)
    {
        case 'Sauvegarde':
            include("vues/v_Sauvegarde.php");
            break;
        case 'CréationSauvegarde':
            include("modele/bd.sauvegarde.inc.php");
            break;
        default:
        {
            include("vues/v_erreur.php");
            break;
        }
    }
}
else{
    header("Location:index.php");
}
?>