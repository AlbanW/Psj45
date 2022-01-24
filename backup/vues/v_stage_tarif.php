<head>
	<title>Tarifs stage | Rakket</title>
</head>
<!-- Affichage de la barre d'outils et attribution de la variable "$_Session['type']" qui permet de connaitre les éléments sur les quelles doivent s'appliquer les outils (exemple : licencié, tarif, comptes) -->
<?php
    $_SESSION['type']='tarifsStage';
?>
<script>
    showHeaderTools('tarifsStage');
</script>
<!--Fin du code permetant l'affichage des outils-->
<div class="hScroll">
<!-- formulaire pour ajouter un tarif-->
<FORM action="index.php?p=stage&uc=gestionStages&action=ajouterTarif" method="post">
<span class="Tableau" style="align-items: flex-start">
    <span class="column">
	    <input type="text" required placeholder="Code" name="Code" class="formTarTailleCode" require/>
        Code
    </span>
    <span class="column">
        <input type="text" required placeholder="Libellé" name="Libellé" class="formTarTailleServ" require/>
        Libellé
    </span>
    <span class="column">
	    <input type="number" required value="0" placeholder="Semaine" name="Semaine" class="formTarTailleCrit" style="width : 100px"/>
        Tarif semaine
    </span>
    <span class="column">
	    <input type="number" required value="0" placeholder="Lundi mat." name="Lundi_mat" class="formTarTailleCrit" style="width : 100px"/>
        lundi mat.
    </span>
    <span class="column">
        <input type="number" required value="0" placeholder="Lundi apr." name="Lundi_apr" class="formTarTailleCrit" style="width : 100px"/>
        lundi apr.
    </span>
    <span class="column">
	<input type="number" required value="0" placeholder="Mardi mat." name="Mardi_mat"  style="width : 100px"/>
    mardi mat.
    </span>
    <span class="column">
	<input type="number" required value="0" placeholder="Mardi apr." name="Mardi_apr" style="width : 100px"/>
    mardi apr.
    </span>
    <span class="column">
	<input type="number" required value="0" placeholder="Mercredi mat." name="Mercredi_mat" style="width : 100px"/>	
    mercredi mat.
    </span>
    <span class="column">
    <input type="number" required value="0" placeholder="Mercredi apr." name="Mercredi_apr" style="width : 100px"/>
    mercredi apr.
    </span>
    <span class="column">
    <input type="number" required value="0" placeholder="Jeudi mat." name="Jeudi_mat" style="width : 100px"/>
    jeudi mat.
    </span>
    <span class="column">
    <input type="number" required value="0" placeholder="Jeudi apr." name="Jeudi_apr" style="width : 100px"/>
    jeudi apr.
    </span>
    <span class="column">
    <input type="number" required value="0" placeholder="Vendredi mat." name="Vendredi_mat" style="width : 100px"/>
    vendredi mat.
    </span>
    <span class="column">
    <input type="number" required value="0" placeholder="Vendredi apr." name="Vendredi_apr" style="width : 100px"/>
    vendredi apr.
    </span>
    <span class="column">
    <input type="number" required value="0" placeholder="Samedi mat." name="Samedi_mat" style="width : 100px"/>
    samedi mat.
    </span>
    <span class="column">
    <input type="number" required value="0" placeholder="Samedi apr." name="Samedi_apr" style="width : 100px"/>
    samedi apr.
    </span>
    <span class="column">
    <input type="number" required value="0" placeholder="Dimanche mat." name="Dimanche_mat" style="width : 100px"/>
    dimanche mat.
    </span>
    <span class="column">
    <input type="number" required value="0" placeholder="Dimanche apr." name="Dimanche_apr" style="width : 100px"/>
    dimanche apr.
    </span>
	
	<button style="margin-left:3px;margin-top: 4px;" type="submit" class="btnsubmit" name="envoyer">Ajouter</button>

	</span>
</FORM>

<br>

<!-- formulaire pour modifier un tarif-->
<FORM action="index.php?p=stage&uc=gestionStages&action=modifierTarif" method="post">
	
	<?php
	
	if(isset($_POST['search'])){
        //$lesTarifs = searchTarifs($_POST['key']);
    }
    else{
		$lesTarifs = getTarifsStage();
        
    }
	foreach($lesTarifs as $unTarif){;
	?>
	
	<span class="Tableau">
    <label class="checkbox_label">
        <input type="checkbox" autocomplete="off" onclick="getNumberSelectedElements(<?php echo $unTarif['Numéro']; ?>)" style="width:45px;" class="Selected";>
        <span class="checkmark"></span>
    </label>
	<input type="text" name="Code[]" id="Code" value="<?php echo $unTarif['Code'];?>">
	<input type="text" name="Libellé[]" id="Libellé" value="<?php echo $unTarif['Libellé'];?>"/>
    <input type="number" required placeholder="Semaine" name="Semaine[]" style="width : 100px" value="<?php echo $unTarif['Semaine'];?>"/>
    <input type="number" required placeholder="Lundi mat." name="Lundi_mat[]" style="width : 100px" value="<?php echo $unTarif['Lundi_mat'];?>"/>
    <input type="number" required placeholder="Lundi apr." name="Lundi_apr[]" style="width : 100px" value="<?php echo $unTarif['Lundi_apr'];?>"/>
    <input type="number" required placeholder="Mardi mat." name="Mardi_mat[]" style="width : 100px" value="<?php echo $unTarif['Mardi_mat'];?>"/>
    <input type="number" required placeholder="Mardi apr." name="Mardi_apr[]" style="width : 100px" value="<?php echo $unTarif['Mardi_apr'];?>"/>
    <input type="number" required placeholder="Mercredi mat." name="Mercredi_mat[]" style="width : 100px" value="<?php echo $unTarif['Mercredi_mat'];?>"/>
    <input type="number" required placeholder="Mercredi apr." name="Mercredi_apr[]" style="width : 100px" value="<?php echo $unTarif['Mercredi_apr'];?>"/>
    <input type="number" required placeholder="Jeudi mat." name="Jeudi_mat[]" style="width : 100px" value="<?php echo $unTarif['Jeudi_mat'];?>"/>
    <input type="number" required placeholder="Jeudi apr." name="Jeudi_apr[]" style="width : 100px" value="<?php echo $unTarif['Jeudi_apr'];?>"/>
    <input type="number" required placeholder="Vendredi mat." name="Vendredi_mat[]" style="width : 100px" value="<?php echo $unTarif['Vendredi_mat'];?>"/>
    <input type="number" required placeholder="Vendredi apr." name="Vendredi_apr[]" style="width : 100px" value="<?php echo $unTarif['Vendredi_apr'];?>"/>
    <input type="number" required placeholder="Samedi mat." name="Samedi_mat[]" style="width : 100px" value="<?php echo $unTarif['Samedi_mat'];?>"/>
    <input type="number" required placeholder="Samedi apr." name="Samedi_apr[]" style="width : 100px" value="<?php echo $unTarif['Samedi_apr'];?>"/>
    <input type="number" required placeholder="Dimanche mat." name="Dimanche_mat[]" style="width : 100px" value="<?php echo $unTarif['Dimanche_mat'];?>"/>
    <input type="number" required placeholder="Dimanche apr." name="Dimanche_apr[][]" style="width : 100px" value="<?php echo $unTarif['Dimanche_apr'];?>"/>
    <input type="text" style="display:none" name="Numéro[]" id="Numéro" value="<?php echo $unTarif['Numéro'];?>" >
	</span>
	<?php
	}
	?>
    <span class="Tableau">
        <input style="width:300px" type="submit" id="envoyer" name="envoyer" class="savebtn" value="Sauvegarder"/>
    </span>
	
</FORM>