<head>
	<title>Participants | Rakket</title>
</head>	<!-- formulaire pour modifier une famille-->
<!-- Affichage de la barre d'outils et attribution de la variable "$_Session['type']" qui permet de connaitre les éléments sur les quelles doivent s'appliquer les outils (exemple : licencié, tarif, comptes) -->
<?php
    $_SESSION['type']='familles';
?>
<script>
    showHeaderTools('familles');
</script>
<!--Fin du code permetant l'affichage des outils-->
<div class="hScroll">
	<FORM action="index.php?p=licencie&test2=test2&uc=gestionLicenciés&action=modifierFamille" method="post">
        <?php
            echo '
            <span class="Tableau">
            <ul class="menu_categories">
                <li class="categorie_input" style="padding-left:45px">Nom</li>
                <li class="categorie_input">Prenom</li>
                <li class="categorie_input" style="width:100px;">Tel Mobile</li>
                <li class="categorie_input" style="width:225px;">Email Perso</li>
                <li class="categorie_input">Date de Naissance</li>
                <li class="categorie_input" style="width:125px">Total à payer</li>
                <li class="categorie_input" style="width:125px">Total payé</li>
            </ul>
            <br/>
            </span>
        ';
        if(isset($_POST['search'])){
            $LesParticipants = searchFamilles($_POST['key']);
        }
        else{
            $LesParticipants = getParticipants();
        }
        foreach($LesParticipants as $unParticipant){;
            if($unParticipant['Numéro_licencie']!=""){
                $licencié = getLesInfosLicenciésByNum($unParticipant['Numéro_licencie']);
                $Nom = $licencié['Nom_licencié'];
                $Prenom = $licencié['Prénom_licencié'];
                $Tel_mobile = $licencié['Tel_mobile'];
                $Email = $licencié['Email_perso'];
                $Date_Naissance = $licencié['Date_Naissance'];
            }
            else{
                $Nom = $unParticipant['Nom'];
                $Prenom = $unParticipant['Prenom'];
                $Tel_mobile = $unParticipant['Tel_mobile'];
                $Email = $unParticipant['Email_perso'];
                $Date_Naissance = $unParticipant['Date_Naissance'];
            }
            if($unParticipant['Numéro_Stage']!=""){
                $stage = getStagesByNum($unParticipant['Numéro_Stage']);
                $Libellé = $stage['Libellé'];
            }
        ?>
        <span class="Tableau">
            <label class="checkbox_label">
                <input type="checkbox" autocomplete="off" onclick="getNumberSelectedElements(<?php echo $uneFamille['Numéro']; ?>)" style="width:45px;" class="Selected";>
                <span class="checkmark"></span>
            </label>
            
            <input type="hidden" name="Numéro[]" id="Numéro" value="<?php echo $uneFamille['Numéro'];?>">
            <input type="text" required name="Nom_participant[]" id="Nom_participant" class="formFamTailleNom" style="width:175px;" value="<?php echo $Nom;?>"/>
            <input type="text" required name="Prenom_participant[]" id="Prenom_participant" class="formFamTailleNom" style="width:175px;" value="<?php echo $Prenom?>"/>
            <input type="text" required name="Num_Tel[]" id="Num_Tel" class="formFamTailleNom" style="width:100px;" value="<?php echo $Tel_mobile?>"/>
            <input type="text" required name="email[]" id="email" class="formFamTailleNom" style="width:225px;" value="<?php echo $Email?>"/>
            <input type="date" required name="date_naissance[]" id="datte_naissance" class="formFamTailleNom" value="<?php echo $Date_Naissance;?>"/>
            <input type="number" required name="total_a_payer[]" id="total_a_payer" class="formFamTailleNom" style="width:125px;" value="<?php echo $uneFamille['total_a_payer'];?>"/>
            <input type="number" required name="total_paye[]" id="total_paye" class="formFamTailleNom" style="width:125px;" value="<?php echo $uneFamille['total_paye'];?>"/>
        </span>
        <?php
        }
        ?>
        <br/>
            <span class="Tableau">
        
        <button type="submit" class="btn" value='sav' style="margin-top: 28px; width:150px" >Enregistrer</button>
        </span>
	</FORM>
    </div>