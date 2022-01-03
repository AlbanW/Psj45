<?php
require 'vendor/autoload.php';


$action = $_REQUEST['action'];
switch($action)
{
    case 'listeStages':
    {
        include("vues/v_stage_listeStages.php");
        break;
    }
	case 'créationStage':
	{
        include("vues/v_stage_creationStage.php");
		break;
	}
    case 'créerStage':
    {
        createStage($_POST['Libelle'],$_POST['tarif'],$_COOKIE["selectedDays"]);
        header('location:index.php?p=stage&uc=gestionStages&action=listeStages');
        break;
    }
    case 'ajouterParticipant':
    {
        if(isset($_POST['Valider'])){
            addParticipant();
            include("vues/v_stage_listeParticipants.php");
        }
        else{
            include("vues/v_stage_ajoutParticipants.php");
        }
        break;
    }
    case 'participants':
        {
            include("vues/v_stage_listeParticipants.php");
            break;
        }
	case 'tarif':
    {
        include("vues/v_stage_tarif.php");
        break;
    }
    case 'reglement':
    {
        include("vues/v_stage_reglement.php");
        break;
    }
    case 'comptes_reglement':
    {
        $lesParticipants = getParticipantsInStage();
        include("vues/v_stage_comptes_reglement.php");
        break;
    }
    case 'ajouterTarif':
    {
        extract($_POST, EXTR_PREFIX_SAME, "tarif");
        createTarif($Code,$Libellé,$Semaine,$Lundi_mat,$Lundi_apr,$Mardi_mat,$Mardi_apr,$Mercredi_mat,$Mercredi_apr,$Jeudi_mat,$Jeudi_apr,$Vendredi_mat,$Vendredi_apr,$Samedi_mat,$Samedi_apr,$Dimanche_mat,$Dimanche_apr);
        echo '
        <script>
            Notify.success({ 
                title: "Tarif ajouté", 
                description: "Un tarif a été ajouté.", 
                duration: 4000
            });
        </script>';
        include("vues/v_stage_tarif.php");
        break;
    }
    case 'modifierTarif':
    {
        $leTarif = modifierTarifStage();
        echo '
        <script>
            Notify.success({ 
                title: "Tarif modifié", 
                description: "Un ou plusieurs tarifs ont été modifiés.", 
                duration: 4000
            });
        </script>';
        include("vues/v_stage_tarif.php");
        break;
    }
    default:
    {
        include("vues/v_erreur.php");
        break;
    }
}
?>
