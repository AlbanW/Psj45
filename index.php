<link rel="stylesheet" href="/css/style.css">
<meta charset="UTF-8">
<meta name="theme-color" content="#ff7b01">
<meta name="description" content="Panneau d'administration Rakket du Ping Saint Jean 45">
<meta property="og:site_name" content="Panneau Administrateur | Rakket">
<meta property="og:image" content="/img/rkt.png" />
<link rel="shortcut icon" href="img/psj45icon.png">
<script src="js\fonctions.js"></script>
<script src="js\x-notify.js"></script>
<script>const Notify = new XNotify();</script>
<?php
require_once 'vendor/autoload.php';


session_start();
require_once("modele/fonctions.inc.php");
require_once("modele/bd.licenciés.inc.php");
require_once("modele/bd.conn.inc.php");
require_once("modele/bd.compte.inc.php");
require_once("modele/bd.infosUtilisateurs.inc.php");
require_once("modele/bd.suppression.inc.php");
require_once("modele/bd.stage.inc.php");

// error_reporting(0);

if( isset($_COOKIE['username']) && $_COOKIE['username']!=''){
    if(!isset($_SESSION['username'])){
        $_SESSION['username']=$_COOKIE['username'];
        $_SESSION['email']=$_COOKIE['email'];
    }
}
if(isset($_REQUEST['uc']) && $_SESSION['username']!="" && isset($_COOKIE['username'])){
    $uc = $_REQUEST['uc'];
    if(isset($_REQUEST['p']))
    {
        switch($_REQUEST['p'])
        {
            case 'stage':
                {
                    include("vues/v_stage_header.inc.php");
                    break;
                }
            case 'licencie':
                {
                    include("vues/v_header.inc.php");
                    break;
                }
        }
    }
    switch($uc)
    { // traitement de l'uc : on charge le contrôleur approprié. 
        case 'accueil':
            {
                include("vues/v_accueil.php");
                break;
            }
        case 'gestionLicenciés' :
            {
                include("controleurs/c_gestionLicencié.php");
                break;
            }
        case 'gestionCompte' :
            {
                include("controleurs/c_gestionCompte.php");
                break;
            }
        case 'gestionParamètres' :
            {
                include("controleurs/c_gestionParamètres.php");
                break;
            }
        case 'gestionOutils' :
            {
                include("controleurs/c_gestionOutils.php");
                break;
            }
        case 'motDePasse' :
            {
                include("controleurs/c_gestionMotDePasse.php");
                break;
            }
        case 'error_404':
            {
                include("vues/v_erreur.php");
                break;
            }
        case 'gestionConnexion':
            {
                include("controleurs/c_gestionConnexion.php");
                break;
            }
        case 'gestionStages':
            {
                
                include("controleurs/c_gestionStages.php");
                break;
            }
        default:
        {
            include("vues/v_erreur.php");
            break;
        }
    }
}
elseif(isset($_REQUEST['uc'])){
    $uc = $_REQUEST['uc'];
    switch($uc)
    { // traitement de l'uc : on charge le contrôleur approprié. 
        case 'motDePasse' :
            {
                include("controleurs/c_gestionMotDePasse.php");
                break;
            }
        default:
            {
                include("controleurs/c_gestionConnexion.php");
                break;
            }
    }
}
elseif(isset($_SESSION['username'])){
    $part = $_REQUEST['p'];
    switch($part)
    {
        case 'stage':
            {
                include("vues/v_stage_header.inc.php");
                include("vues/v_stage_listeStages.php");
                break;
            }
        case 'licencie':
            {
                include("vues/v_header.inc.php");
                include("controleurs/c_gestionLicencié.php");
                break;
            }
            default:
                include("vues/v_accueil.php");
                break;
    }
    
}
else{
    include("controleurs/c_gestionConnexion.php");
}
?>
