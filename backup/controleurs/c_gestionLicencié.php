<?php

// contrôleur qui gère les licenciés et les familles
date_default_timezone_set('Europe/Paris');
$now = date('Y/m/d', time());
if (!isset($_REQUEST['action'])){
    $action= 'choixLicencie'; 
    }
else{
    $action = $_REQUEST['action'];
}
switch($action)
{		
    case 'listeLicencie' :
    {
        // affichage de la vue v_formLicencié.php pour le formulaire
        include("vues/v_formLicencié.php");
        break;
    }
    
    case 'creerLicencie' :
    {
        // affichage de la vue v_creationLicencié.php pour le formulaire
        include("vues/v_creationLicencie.php");
        break;
    }
    
    case 'ajouterLicencie':
    {
        
        $famille =$_REQUEST['Famille'];$nom=$_REQUEST['Nom_licencié'];$prenom=$_REQUEST['Prénom_licencié'];$sexe=$_REQUEST['Sexe'];$dateNaiss=$_REQUEST['Date_Naissance'];
        $telMob =$_REQUEST['Tel_mobile'];$telDom =$_REQUEST['Tel_domicile'];$telTrav =$_REQUEST['Tel_travail'];$emailPerso =$_REQUEST['Email_perso'];$emailTrav =$_REQUEST['Email_travail'];
        if($_REQUEST['Catégorie_1']=="auto"){
            $origin = date_create($now);
            $target = date_create($dateNaiss);
            $age = date_diff($origin, $target);
            $cat1 = CalculAgeCat($age->y)['Catégorie1'];
        }
        else{
            $cat1 =$_REQUEST['Catégorie_1'];
        }
        
        $typeLic =$_REQUEST['Type_licence'];
        if (isset($_POST['Inscription'])){$inscri=1;}else{$inscri=0;}
        $DateInscri =$_REQUEST['Date_inscription'];$natio =$_REQUEST['Nationalité'];
        if (isset($_POST['Participation_compétition_individuelle'])){$competIndiv=1;}else{$competIndiv=0;}
        if (isset($_POST['Saint_Jean_de_la_Ruelle'])){$SJR=1;}else{$SJR=0;}
        if (isset($_POST['Certificat_médical'])){$certificat=1;}else{$certificat=0;}
        if (isset($_POST['Membre_bureau'])){$bureau=1;}else{$bureau=0;}
        if (isset($_POST['1ere_licence'])){$unLic=1;}else{$unLic=0;}
        if (isset($_POST['Autre_club'])){$autreClub=1;}else{$autreClub=0;}
        if (isset($_POST['Essai'])){$essai=1;}else{$essai=0;}
        if (isset($_POST['Handicap'])){$handicap=1;}else{$handicap=0;}
        if (isset($_POST['Stage_uniquement'])){$stage=1;}else{$stage=0;}
        if (isset($_POST['Demie_tarif'])){$demi=1;}else{$demi=0;}
        if (isset($_POST['Licence_gratuite'])){$licGratuite=1;}else{$licGratuite=0;}
        if (isset($_POST['Participation_équipe_sénior'])){$equipeSenior=1;}else{$equipeSenior=0;}
        if (isset($_POST['Autorisation_photo_vidéo'])){$photoVideo=1;}else{$photoVideo=0;}

        $unLicencié = creerLicencie($famille,$nom,$prenom,$sexe,$dateNaiss,$telMob,$telDom,$telTrav,$emailPerso,$emailTrav,$cat1,$typeLic,$inscri,
        $DateInscri,$natio,$competIndiv,$SJR,$certificat,$bureau,$unLic,$autreClub,$essai,$handicap,$stage,$demi,$licGratuite,$equipeSenior,$photoVideo);
        ?>
        
        <script>
            Notify.success({ 
                title: "Licencié ajouté", 
                description: "Un licencié a été ajouté.", 
                duration: 4000
            });
        </script>
            
        <?php
            include("vues/v_formFamille2.php");
        break;
    }
    
    case 'listeLicencie2' :
    {
        // affichage de la vue v_formLicencié2.php pour le formulaire
        include("vues/v_formLicencié2.php");
        break;
    }
    
    case 'modifierLicencie':
    {
        if(familleExist($_POST['Famille'])){
            $unLicencié = modifierLicencie();
            ?>

            <script>
            Notify.success({ 
                title: "Licencié modifié", 
                description: "Un licencié à été modifié.", 
                duration: 4000
            });
            </script>

            <?php
            include("vues/v_formLicencié.php");
        }
        else{
            echo '<script>window.history.back();</script>';
        }

        
        break;
    }
    
    
    case 'creerFamille' :
    {
        $lesFamilles = getFamilles();
        // affichage de la vue v_formFamille.php pour le formulaire
        include("vues/v_formFamille.php");
        break;
    }
    
    case 'ajouterFamille':
    {
        $nom =$_REQUEST['Nom_famille'];$adresse=$_REQUEST['Adresse'];$ville=$_REQUEST['Ville'];$telMob =$_REQUEST['Tel_mobile'];
        $telDom =$_REQUEST['Tel_domicile'];$telTrav =$_REQUEST['Tel_travail'];$emailPerso =$_REQUEST['Email_perso'];$emailTrav =$_REQUEST['Email_travail'];
        $uneFamille = creerFamille($nom,$adresse,$ville,$telMob,$telDom,$telTrav,$emailPerso,$emailTrav);
        ?>

        <script>
            Notify.success({ 
                title: "Famille ajouté", 
                description: "Une Famille a été ajouté.", 
                duration: 4000
            });
        </script>

        <?php
        include("vues/v_formFamille.php");
        break;
    }
    
    case 'modifierFamille':
    {
        $laFamille = modifierFamille();
        ?>
       <script>
            Notify.success({ 
                title: "Famille modifié", 
                description: "Une famille a été modifiée.", 
                duration: 4000
            });
        </script>
        <?php
        include("vues/v_formFamille.php");
        break;
    }
    
    case 'modifierFamille2':
    {
        $laFamille = modifierFamille();
        ?>
        <script>
            Notify.success({ 
                title: "Famille modifié", 
                description: "Une famille a été ajouté.", 
                duration: 4000
            });
        </script>
        <?php
        include("vues/v_formFamille.php");
        break;
    }
    
    case 'choixLicencie' :
    {
        $lesLicenciés = getFamilleLicenciés();
        include("vues/v_OpérationsFinancières.php");
        break;
    }

    case 'attestationLicencié' :
        {
            $lesLicenciés = getLicenciés('Nom_licencié','ASC');
            include("vues/v_attestationLicencié.php");
            break;
        }

    case 'generationAttestationLicencié' :
        {
            include("vues/v_attestationLicencié.php");
            break;
        }

    case 'familleChoisie' :
    {
        // affichage de la vue v_formReglement.php pour le formulaire
        include("vues/v_formReglement.php");
        break;
    }
            
    case 'ajouterReglement':
    {
        $fam =$_REQUEST['Famille'];
        $prénom = $_REQUEST['Prénom'];
        $dateOpé =$_REQUEST['Date_opération'];
        $objetReg =$_REQUEST['Objet_règlement'];
        $typePaie =$_REQUEST['Type_paiement'];
        $montant =$_REQUEST['Montant'];
        $banque =$_REQUEST['Banque'];
        $codeCheque =$_REQUEST['Code_chèque'];
        $unReglement = creerReglement($fam,$prénom,$dateOpé,$objetReg,$typePaie,$montant,$banque,$codeCheque);
        include("vues/v_formLicencié.php");
        break;
    }
    
    case 'export':
    {
        include("vues/v_formExport.php");
        break;
    }

    case 'importlicenciés':
    {
        include("vues/v_ImportLicencié.php");
        break;
    }
    
    case 'exportPresident':
    {
        include("vues/v_formExportPresident.php");
        break;
    }
    
    case 'ajouterTarif':
    {
        $code =$_REQUEST['Code'];
        $nomServ=$_REQUEST['Nom_service'];
        $critMin=$_REQUEST['Critère_mini'];
        $critMax =$_REQUEST['Critère_maxi'];
        if ($_POST['Tarif']==''){
            $tarif=0;
        }
        else {
            $tarif =$_REQUEST['Tarif'];
        }
        if ($_POST['Taux_montant_remise_club']==''){
            $tauxRemClub=0;
        }
        else {
            $tauxRemClub = $_REQUEST['Taux_montant_remise_club'];
        }
        if ($_POST['Majoration_externe']==''){
            $majorExt=0;
        }
        else {
            $majorExt =$_REQUEST['Majoration_externe'];
        }
        creerTarif($code,$nomServ,$critMin,$critMax,$tarif,$tauxRemClub,$majorExt);
        echo '
        <script>
            Notify.success({ 
                title: "Tarif ajouté", 
                description: "Un tarif a été ajouté.", 
                duration: 4000
            });
        </script>';
        include("vues/v_formTarif.php");
        break;
    }
    
    case 'tarif':
    {
        include("vues/v_formTarif.php");
        break;
    }
    
    case 'modifierTarif':
    {
        $leTarif = modifierTarif();
        ?>
        <script>
            Notify.success({ 
                title: "Tarif modifié", 
                description: "Un tarif a été modifié.", 
                duration: 4000
            });
        </script>
        <?php
        include("vues/v_formTarif.php");
        break;
    }
    
    case 'supprimerTarif':
    {
        $leTarif = supprimerTarif();
        ?>
       <script>
            Notify.success({ 
                title: "Licencié supprimé", 
                description: "Un tarif a été ajouté.", 
                duration: 4000
            });
        </script>
        <?php
        include("vues/v_formTarif.php");
        break;
    }
    
        case 'ageCat':
    {
        include("vues/v_formAgeCat.php");
        break;
    }
    
    case 'modifierAgeCat':
    {
        $leTarif = modifierAgeCat();
        ?>
       <script>
            Notify.success({ 
                title: "Catégorie modifiée", 
                description: "Une catégorie a été modifiée.", 
                duration: 4000
            });
        </script>
        <?php
        include("vues/v_formAgeCat.php");
        break;
    }

    case 'confirmationSuppression':
        {
            include("vues/v_confirmation.php");
            break;
        }
    
    case 'exportListLicencié':
        {
            exportListeLicenciés();
            importListeLicenciés();
            break;
        }
    case 'changementSaison':
        {
            include("vues/v_changementSaison.php");
            break;
        }
    default:
        {
            include("vues/v_erreur.php");
            break;
        }
    }
?>