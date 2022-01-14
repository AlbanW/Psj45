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
                <li class="categorie_input" style="width:100px;">Stage n°</li>
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
                $Nom = $unParticipant['Nom_licencié'];
                $Prenom = $unParticipant['Prénom_licencié'];
                $Libellé = $unParticipant['Libellé'];
        ?>
        <span class="Tableau">
            <label class="checkbox_label">
                <input type="checkbox" autocomplete="off" onclick="getNumberSelectedElements(<?php echo $uneFamille['Numéro']; ?>)" style="width:45px;" class="Selected";>
                <span class="checkmark"></span>
            </label>
            
            <input type="hidden" name="Numéro[]" id="Numéro" value="<?php echo $uneFamille['Numéro'];?>">
            <input type="text" required name="Nom_participant[]" id="Nom_participant" class="formFamTailleNom" style="width:175px;" value="<?php echo $Nom;?>"/>
            <input type="text" required name="Prenom_participant[]" id="Prenom_participant" class="formFamTailleNom" style="width:175px;" value="<?php echo $Prenom?>"/>
            <input type="text" required name="ID_Stage[]" id="ID_stage" class="formFamTailleNom" style="width:175px;" value="<?php echo $Libellé ?>"/>
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