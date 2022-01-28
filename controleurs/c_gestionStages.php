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
    case 'voirStage':
        if(isset($_GET['numero']))
        {
            $unStage = getStagesByNum($_GET['numero']);
            $stageTarif = $unStage['Num_Tarif'];
            include("vues/v_stage_detailStage.php");
            
        } else {
        include("vues/v_erreur.php");
        break;
        }
    break;
    case 'créerStage':
    {
        createStage($_POST['Libelle'],$_POST['tarif'],$_COOKIE["selectedDays"]);
        header('location:index.php?p=stage&uc=gestionStages&action=listeStages');
        break;
    }

    case 'detailParticipant':
        if(isset($_GET['numero'])) 
            $participant = getUneParticipation($_GET['numero']);
            $unLicencié = getLicencié($participant['Numéro_participant']);
            $unStage = getStagesByNum($participant['Numéro_stage']);

            include("vues/v_stage_detailParticipant.php");
        break;
    case 'ajouterParticipant':
    {
        if(isset($_POST['Valider'])){

            $complete = 0;
            $lundiAM = 0; $lundiPM = 0;
            $mardiAM = 0; $mardiPM = 0;
            $mercrediAM = 0; $mercrediPM = 0;
            $jeudiAM = 0; $jeudiPM = 0;
            $vendrediAM = 0; $vendrediPM = 0;
            $samediAM = 0; $samediPM = 0;
            $dimancheAM = 0; $dimanchePM = 0;
            if(isset($_POST['Week']) && ($_POST['Week'] != null)) $complete = 1;

            if(isset($_POST['LundiAM']) && ($_POST['LundiAM'] != null)) $lundiAM = 1;
            if(isset($_POST['LundiPM']) && ($_POST['LundiPM'] != null)) $lundiPM = 1;

            
            if(isset($_POST['MardiAM']) && ($_POST['MardiAM'] != null)) $mardiAM = 1;
            if(isset($_POST['MardiPM']) && ($_POST['MardiPM'] != null)) $mardiPM = 1;

            
            if(isset($_POST['MercrediAM']) && ($_POST['MercrediAM'] != null)) $mercrediAM = 1;
            if(isset($_POST['MercrediPM']) && ($_POST['MercrediPM'] != null)) $mercrediPM = 1;

            
            if(isset($_POST['JeudiAM']) && ($_POST['JeudiAM'] != null)) $jeudiAM = 1;
            if(isset($_POST['JeudiPM']) && ($_POST['JeudiPM'] != null)) $jeudiPM = 1;

            if(isset($_POST['VendrediAM']) && ($_POST['VendrediAM'] != null)) $vendrediAM = 1;
            if(isset($_POST['VendrediPM']) && ($_POST['VendrediPM'] != null)) $vendrediPM = 1;
            
            if(isset($_POST['SamediAM']) && ($_POST['SamediAM'] != null)) $samediAM = 1;
            if(isset($_POST['SamediPM']) && ($_POST['SamediPM'] != null)) $samediPM = 1;
            
            if(isset($_POST['DimancheAM']) && ($_POST['DimancheAM'] != null)) $dimancheAM = 1;
            if(isset($_POST['DimanchePM']) && ($_POST['DimanchePM'] != null)) $dimanchePM = 1;

            $data = [
                $complete,
                $lundiAM, $lundiPM,
                $mardiAM, $mardiPM,
                $mercrediAM, $mercrediPM,
                $jeudiAM, $jeudiPM,
                $vendrediAM, $vendrediPM,
                $samediAM, $samediPM,
                $dimancheAM, $dimanchePM,
            ];
            $stage = $_POST['Stage'];
            $stageTarif = getTarifsStageByNum(getStagesByNum($stage)['Num_Tarif']);
            $tarif = calculStageTarif($data, $stageTarif);

            $codeTarif = $stageTarif['Code'];
            $nomStage = getStagesByNum($stage)['Libellé'];

            $id = getLesInfosLicenciésByNum($_POST['licencié']);
            insertOperation($id, $tarif, $codeTarif, $nomStage, getStagesByNum($stage)['ID']);
            
            addParticipant($data);
            include("vues/v_stage_ajoutParticipants.php");
        }
        else{
            include("vues/v_stage_ajoutParticipants.php");
        }
        break;
        }

        case 'modifierStage':
            if(isset($_POST['validForm']) && isset($_POST['libelle']) && isset($_POST['tarif']) && isset($_GET['numero']))
            {
                modifierStage($_POST['libelle'], $_POST['tarif'], $_GET['numero']);
                include("vues/v_stage_listeStages.php");
            }
            break;

        case 'modifierParticipant':
            {
                if(isset($_POST['deleteForm']) && isset($_GET['numero']) && isset($_GET['numlic'])){
                    $participant = getUneParticipation($_GET['numero']);
                    deleteOperation($_GET['numlic'], $participant['Numéro_stage']);
                    deleteParticipation($_GET['numero']);
                    
                    include("vues/v_stage_listeStages.php"); 
                }
                if(isset($_POST['validateForm']) && isset($_GET['numero']) && isset($_GET['numlic'])){
        
                    $complete = 0;
                    $lundiAM = 0; $lundiPM = 0;
                    $mardiAM = 0; $mardiPM = 0;
                    $mercrediAM = 0; $mercrediPM = 0;
                    $jeudiAM = 0; $jeudiPM = 0;
                    $vendrediAM = 0; $vendrediPM = 0;
                    $samediAM = 0; $samediPM = 0;
                    $dimancheAM = 0; $dimanchePM = 0;
                    if(isset($_POST['Week']) && ($_POST['Week'] != null)) $complete = 1;
        
                    if(isset($_POST['LundiAM']) && ($_POST['LundiAM'] != null)) $lundiAM = 1;
                    if(isset($_POST['LundiPM']) && ($_POST['LundiPM'] != null)) $lundiPM = 1;
        
                    
                    if(isset($_POST['MardiAM']) && ($_POST['MardiAM'] != null)) $mardiAM = 1;
                    if(isset($_POST['MardiPM']) && ($_POST['MardiPM'] != null)) $mardiPM = 1;
        
                    
                    if(isset($_POST['MercrediAM']) && ($_POST['MercrediAM'] != null)) $mercrediAM = 1;
                    if(isset($_POST['MercrediPM']) && ($_POST['MercrediPM'] != null)) $mercrediPM = 1;
        
                    
                    if(isset($_POST['JeudiAM']) && ($_POST['JeudiAM'] != null)) $jeudiAM = 1;
                    if(isset($_POST['JeudiPM']) && ($_POST['JeudiPM'] != null)) $jeudiPM = 1;
        
                    if(isset($_POST['VendrediAM']) && ($_POST['VendrediAM'] != null)) $vendrediAM = 1;
                    if(isset($_POST['VendrediPM']) && ($_POST['VendrediPM'] != null)) $vendrediPM = 1;
                    
                    if(isset($_POST['SamediAM']) && ($_POST['SamediAM'] != null)) $samediAM = 1;
                    if(isset($_POST['SamediPM']) && ($_POST['SamediPM'] != null)) $samediPM = 1;
                    
                    if(isset($_POST['DimancheAM']) && ($_POST['DimancheAM'] != null)) $dimancheAM = 1;
                    if(isset($_POST['DimanchePM']) && ($_POST['DimanchePM'] != null)) $dimanchePM = 1;
        
                    $data = [
                        $complete,
                        $lundiAM, $lundiPM,
                        $mardiAM, $mardiPM,
                        $mercrediAM, $mercrediPM,
                        $jeudiAM, $jeudiPM,
                        $vendrediAM, $vendrediPM,
                        $samediAM, $samediPM,
                        $dimancheAM, $dimanchePM,
                    ];

                    
                    $participant = getUneParticipation($_GET['numero']);
                    $unLicencié = getLicencié($participant['Numéro_participant']);
                    $unStage = getStagesByNum($participant['Numéro_stage']);

                    $stageTarif = getTarifsStageByNum($unStage['Num_Tarif']);
                    $tarif = calculStageTarif($data, $stageTarif);
        
                    $codeTarif = $stageTarif['Code'];
                    $nomStage = $unStage['Libellé'];
                    deleteOperation($_GET['numlic'], $participant['Numéro_stage']);
                    insertOperation($unLicencié, $tarif, $codeTarif, $nomStage, $participant['Numéro_stage']);

                    modifierParticipant($data, $_GET['numero'], $_GET['numlic']);


        
                    include("vues/v_stage_detailStage.php"); 
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
        if(isset($_GET['participant']))
        {
            $debit = 0 - getStageDebit($_GET['participant']);
            $credit = getStageCredit($_GET['participant']);
            $solde = $debit + $credit;
            include("vues/v_stage_reglement.php");
        }
        break;
    }
    case 'comptes_reglement':
    {
        $lesParticipants = getParticipants();
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
