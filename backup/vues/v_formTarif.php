<head>
	<title>Tarifs | Rakket</title>
</head>
<!-- Affichage de la barre d'outils et attribution de la variable "$_Session['type']" qui permet de connaitre les éléments sur les quelles doivent s'appliquer les outils (exemple : licencié, tarif, comptes) -->
<?php
        $_SESSION['type']='tarifs';
    ?>
    <script>
        showHeaderTools('tarifs');
    </script>
<!--Fin du code permetant l'affichage des outils-->
<div class="hScroll">
<!-- formulaire pour ajouter un tarif-->
<FORM action="index.php?p=licencie&uc=gestionLicenciés&action=ajouterTarif" method="post">
<span class="Tableau">
	<input type="text" placeholder="Code" name="Code" id="Code" class="formTarTailleCode" />
	<input type="text" placeholder="Nom Service" name="Nom_service" id="Nom_service" class="formTarTailleServ" />
	<input type="text" placeholder="Critère min" name="Critère_mini" id="Critère_mini" class="formTarTailleCrit" />
	<input type="text" placeholder="Critère max" name="Critère_maxi" id="Critère_maxi" class="formTarTailleCrit" />
	<input type="number" placeholder="Tarif" name="Tarif" id="Tarif" class="formTarTailleTarif" />
	<input type="number" placeholder="Taux Remise" name="Taux_montant_remise_club" id="Taux_montant_remise_club" class="formTarTailleTauxRemClub" />
	<input type="number" placeholder="Major Externe" name="Majoration_externe" id="Majoration_externe" class="formTarTailleMajorExt" />	
	
	<button style="margin-left:3px;" type="submit" class="btnsubmit" name="envoyer">Ajouter</button>

	</span>
</FORM>

<br>

<!-- formulaire pour modifier un tarif-->
<FORM action="index.php?p=licencie&uc=gestionLicenciés&action=modifierTarif" method="post">
	
	<?php
    echo '
	<span class="Tableau">
        <ul class="menu_categories">
            <li class="categorie_input">Code</li>
            <li class="categorie_input">Nom service</li>
            <li class="categorie_input">Critère min</li>
            <li class="categorie_input">Critère max</li>
            <li class="categorie_input">Tarif</li>
            <li class="categorie_input">Remise club</li>
            <li class="categorie_input">Major externe</li>
            <li class="categorie_input">ID</li>
        </ul>
		</span>
        <br>
    ';
	
	if(isset($_POST['search'])){
        $lesTarifs = searchTarifs($_POST['key']);
    }
    else{
		$lesTarifs = getTarifs();
        
    }
	foreach($lesTarifs as $unTarif){;
	?>
	
	<span class="Tableau">
    <label class="checkbox_label">
        <input type="checkbox" autocomplete="off" onclick="getNumberSelectedElements(<?php echo $unTarif['Numéro']; ?>)" style="width:45px;" class="Selected";>
        <span class="checkmark"></span>
    </label>
	<input type="text" name="Code[]" id="Code" value="<?php echo $unTarif['Code'];?>">
	<input type="text" name="Nom_service[]" id="Nom_service" value="<?php echo $unTarif['Nom_service'];?>"/>
	<input type="text" name="Critère_mini[]" id="Critère_mini" value="<?php echo $unTarif['Critère_mini'];?>"/>
	<input type="text" name="Critère_maxi[]" id="Critère_maxi" value="<?php echo $unTarif['Critère_maxi'];?>"/>
	<input type="number" name="Tarif[]" id="Tarif" value="<?php echo $unTarif['Tarif'];?>"/>
	<input type="number" name="Taux_montant_remise_club[]" id="Taux_montant_remise_club" value="<?php echo $unTarif['Taux_montant_remise_club'];?>"/>
	<input type="number" name="Majoration_externe[]" value="<?php echo $unTarif['Majoration_externe'];?>"/>
	<input type="text" name="Numéro[]" id="Numéro" value="<?php echo $unTarif['Numéro'];?>" >	
	</span>
	<?php
	}
	?>
    <span class="Tableau">
        <input style="width:300px" type="submit" id="envoyer" name="envoyer" class="savebtn" value="Sauvegarder"/>
    </span>
	
</FORM>