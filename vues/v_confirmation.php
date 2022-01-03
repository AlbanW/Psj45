<head>
<title>Suppression | Rakket</title>
</head>
<script>
    function goBack() {
        window.history.go(-3);
    }
</script>
<div class="form-wrapper">
    <?php
    if(isset($_POST['state'])){
        $numéros = explode(",", $_COOKIE['Select']);
        foreach($numéros as $numéro){
            if($_SESSION['type']=="licenciés"){
                suppressionLicencié($numéro);
                echo 'Le licencié '.$numéro.' a était supprimé.';
            }
            elseif($_SESSION['type']=="comptes"){
                suppressionCompte($numéro);
                echo 'Le compte '.$numéro.' a était supprimé.';
            }
            elseif($_SESSION['type']=="familles"){
                suppressionFamilles($numéro);
                echo 'La famille '.$numéro.' a était supprimé.';
            }
            elseif($_SESSION['type']=="tarifs"){
                supprimerTarif($numéro);
                echo 'Le tarif '.$numéro.' a était supprimé.';
            }
            elseif($_SESSION['type']=="stages"){
                supprimerStage($numéro);
                echo 'Le stage '.$numéro.' a était supprimé.';
            }
            elseif($_SESSION['type']=="tarifsStage"){
                supprimerTarifStage($numéro);
                echo 'Le tarif '.$numéro.' a était supprimé.';
            }
        }
        echo'<script>setTimeout(() => { goBack(); }, 3000);</script>';
    }
    else{
        echo '<h2>Suppression</h2>';
        $numéros = explode(",", $_COOKIE['Select']);
        if(!empty($_COOKIE['Select'])){
            if($_SESSION['type']=="licenciés"){
                echo'
                <form method="post" action="index.php?p=licencie&uc=gestionLicenciés&action=confirmationSuppression">
                    <div style="display: flex;justify-content: center;">
                        <h3>Êtes vous sûr de vouloir supprimer les informations suivantes ?</h3>
                    </div>
                    <table>
                    <tr>
                    <td class="EnteteTableauMouvement1">Nom</td>
                    <td class="EnteteTableauMouvement2">Prénom</td>
                    <td style="width:150px; text-align:center">Date de naissance</td>
                    <td class="EnteteTableauMouvement4">Tel mobile</td>
                    <td class="EnteteTableauMouvement5">Email</td>
                    </tr>
                    ';
                    foreach($numéros as $numéro){
                        $element = getLesInfosLicenciésByNum(intval($numéro));
                        echo '<tr>';
                        echo '<td>'.$element['Famille'].'</td>';
                        echo '<td>'.$element['Prénom_licencié'].'</td>';
                        echo '<td style="text-align:center">'.$element['Date_Naissance'].'</td>';
                        echo '<td>'.$element['Tel_mobile'].'</td>';
                        echo '<td>'.$element['Email_Perso'].'</td>';
                        echo '</tr>';
                    }
                    echo'</table>
                    <div style="display: flex;justify-content: center;">
                        <button type="submit" class="btn_Supprim" name=\'state\' value=\'suppr\' style="margin-top: 28px; width:250px" >Supprimer</button>
                    </div>
                </form>';
            }
            elseif($_SESSION['type']=="comptes"){
                echo'
                <form method="post" action="index.php?p=licencie&uc=gestionLicenciés&action=confirmationSuppression">
                    <div style="display: flex;justify-content: center;">
                        <h3>Êtes vous sûr de vouloir supprimer les informations suivantes ?</h3>
                    </div>
                    <table>
                    <tr>
                    <td class="EnteteTableauMouvement1">Nom d\'utilisateur </td>
                    <td class="EnteteTableauMouvement2">Adresse mail</td>
                    </tr>
                    ';
                    foreach($numéros as $numéro){
                        $email = getEmail($numéro);
                        echo '<tr>';
                        echo '<td>'.$numéro.'</td>';
                        echo '<td>'.$email.'</td>';
                        echo '</tr>';
                    }
                    echo'</table>
                    <div style="display: flex;justify-content: center;">
                        <button type="submit" class="btn_Supprim" name=\'state\' value=\'suppr\' style="margin-top: 28px; width:250px" >Supprimer</button>
                    </div>
                </form>';
            }
            elseif($_SESSION['type']=="familles"){
                echo'
                <form method="post" action="index.php?p=licencie&uc=gestionLicenciés&action=confirmationSuppression">
                    <div style="display: flex;justify-content: center;">
                        <h3>Êtes vous sûr de vouloir supprimer les informations suivantes ?</h3>
                    </div>
                    <table>
                    <tr>
                    <td style="padding-left: 25px;padding-right: 25px">Nom</td>
                    <td style="padding-left: 25px;padding-right: 25px">Adresse</td>
                    <td style="padding-left: 25px;padding-right: 25px">Ville</td>
                    <td style="padding-left: 25px;padding-right: 25px">Tel Mobile</td>
                    <td style="padding-left: 25px;padding-right: 25px">Tel Domicile</td>
                    <td style="padding-left: 25px;padding-right: 25px">Tel Travail</td>
                    <td style="padding-left: 25px;padding-right: 25px">Email Perso</td>
                    <td style="padding-left: 25px;padding-right: 25px">Email Travail</td>
                    </tr>
                    ';
                    foreach($numéros as $numéro){
                        $fam = getFamillesByNum($numéro);
                        echo '<tr>';
                        echo '<td>'.$fam['Nom_famille'].'</td>';
                        echo '<td>'.$fam['Adresse'].'</td>';
                        echo '<td>'.$fam['Ville'].'</td>';
                        echo '<td>'.$fam['Tel_mobile'].'</td>';
                        echo '<td>'.$fam['Tel_domicile'].'</td>';
                        echo '<td>'.$fam['Tel_travail'].'</td>';
                        echo '<td>'.$fam['Email_perso'].'</td>';
                        echo '<td>'.$fam['Email_travail'].'</td>';
                        echo '</tr>';
                    }
                    echo'</table>
                    <div style="display: flex;justify-content: center;">
                        <button type="submit" class="btn_Supprim" name=\'state\' value=\'suppr\' style="margin-top: 28px; width:250px" >Supprimer</button>
                    </div>
                </form>';
            }
            elseif($_SESSION['type']=="tarifs"){
                echo'
                <form method="post" action="index.php?p=licencie&uc=gestionLicenciés&action=confirmationSuppression">
                    <div style="display: flex;justify-content: center;">
                        <h3>Êtes vous sûr de vouloir supprimer les informations suivantes ?</h3>
                    </div>
                    <table>
                    <tr>
                    <td style="padding-left: 25px;padding-right: 25px">Code</td>
                    <td style="padding-left: 25px;padding-right: 25px">Nom service</td>
                    <td style="padding-left: 25px;padding-right: 25px">Critère min</td>
                    <td style="padding-left: 25px;padding-right: 25px">Critère max</td>
                    <td style="padding-left: 25px;padding-right: 25px">Tarif</td>
                    <td style="padding-left: 25px;padding-right: 25px">Remise Club</td>
                    <td style="padding-left: 25px;padding-right: 25px">Major externe</td>
                    <td style="padding-left: 25px;padding-right: 25px">ID</td>
                    </tr>
                    ';
                    foreach($numéros as $numéro){
                        $tarifs = getTarifsByNum($numéro);
                        echo '<tr>';
                        echo '<td>'.$tarifs['Code'].'</td>';
                        echo '<td>'.$tarifs['Nom_service'].'</td>';
                        echo '<td>'.$tarifs['Critère_mini'].'</td>';
                        echo '<td>'.$tarifs['Critère_maxi'].'</td>';
                        echo '<td>'.$tarifs['Tarif'].'</td>';
                        echo '<td>'.$tarifs['Taux_montant_remise_club'].'</td>';
                        echo '<td>'.$tarifs['Majoration_externe'].'</td>';
                        echo '<td>'.$tarifs['Numéro'].'</td>';
                        echo '</tr>';
                    }
                    echo'</table>
                    <div style="display: flex;justify-content: center;">
                        <button type="submit" class="btn_Supprim" name=\'state\' value=\'suppr\' style="margin-top: 28px; width:250px" >Supprimer</button>
                    </div>
                </form>';
            }
            elseif($_SESSION['type']=="stages"){
                echo'
                <form method="post" action="index.php?p=stage&uc=gestionLicenciés&action=confirmationSuppression">
                    <div style="display: flex;justify-content: center;">
                        <h3>Êtes vous sûr de vouloir supprimer les informations suivantes ?</h3>
                    </div>
                    <table>
                    <tr>
                    <td style="width:150px;padding-left: 25px;padding-right: 25px">Libellé</td>
                    </tr>
                    ';
                    foreach($numéros as $numéro){
                        $stage = getStagesByNum($numéro);
                        echo '<tr>';
                        echo '<td>'.$stage['Libellé'].'</td>';
                        echo '</tr>';
                    }
                    echo'</table>
                    <div style="display: flex;justify-content: center;">
                        <button type="submit" class="btn_Supprim" name=\'state\' value=\'suppr\' style="margin-top: 28px; width:250px" >Supprimer</button>
                    </div>
                </form>';
            }
            elseif($_SESSION['type']=="tarifsStage"){
                echo'
                <form method="post" action="index.php?p=stage&uc=gestionLicenciés&action=confirmationSuppression">
                    <div style="display: flex;justify-content: center;">
                        <h3>Êtes vous sûr de vouloir supprimer les informations suivantes ?</h3>
                    </div>
                    <table>
                    <tr>
                    <td style="padding-left: 25px;padding-right: 25px">Code</td>
                    </tr>
                    ';
                    foreach($numéros as $numéro){
                        $tarifs = getTarifsStageByNum($numéro);
                        echo '<tr>';
                        echo '<td>'.$tarifs['Code'].'</td>';
                        echo '</tr>';
                    }
                    echo'</table>
                    <div style="display: flex;justify-content: center;">
                        <button type="submit" class="btn_Supprim" name=\'state\' value=\'suppr\' style="margin-top: 28px; width:250px" >Supprimer</button>
                    </div>
                </form>';
            }
        }
        else{
            echo '
            <div style="display: flex;justify-content: center;">
                    <h3>Aucun élément n\'a été sélectionné</h3>
            </div>
            <form style="margin-top: 28px;">
                <a onclick="window.history.back();" class="btn">Retourner à la page précédente</a>
            </form>        
            ';
        }
    }
    ?>
</div>