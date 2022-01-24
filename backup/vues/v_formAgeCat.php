<!-- formulaire pour modifier la catégorie en fonction de l'âge-->
<head>
	<title>Âge & Catégories | Rakket</title>
</head>
<div class="vScroll">
<FORM action="index.php?p=licencie&test5=test5&uc=gestionLicenciés&action=modifierAgeCat" method="post">
		
	<?php
    echo '
	<span class="Tableau">
        <ul class="menu_categories">
            <li class="categorie_input">Âge maxi</li>
            <li class="categorie_input">Âge mini</li>
            <li class="categorie_input">Cat1</li>
            <li class="categorie_input">Cat2</li>
        </ul>
		</span>
        <br>
    ';
    if($_GET['event']=="increment"){
        IncrementationAge();
    }
    elseif($_GET['event']=="decrement"){
        DécrementationAge();
    }
	$lesAgesCats = getAgeCat();
	foreach($lesAgesCats as $unAgeCat){
	?>
	<span class="Tableau">
	<input type="hidden" name="Numéro[]" id="Numéro" value="<?php echo $unAgeCat['Numéro'];?>">
	<input type="text" name="Année_naissance_mini[]" id="Année_naissance_mini" class="formAgeCatTailleNaiss" value="<?php echo $unAgeCat['Année_naissance_mini'];?>">
	<input type="text" name="Année_naissance_maxi[]" id="Année_naissance_maxi" class="formAgeCatTailleNaiss" value="<?php echo $unAgeCat['Année_naissance_maxi'];?>"/>
	<input type="text" name="Catégorie1[]" id="Catégorie1" class="formAgeCatTailleCat" value="<?php echo $unAgeCat['Catégorie1'];?>"/>
	<input type="text" name="Catégorie2[]" id="Catégorie2" class="formAgeCatTailleCat" value="<?php echo $unAgeCat['Catégorie2'];?>"/>
	</span>
		
		
	<?php
	}
	?>
	<br>
	<span class="Tableau">
    <!--<a class="btn" href="index.php?p=licencie&test5=test5&uc=gestionLicenci%C3%A9s&action=ageCat&event=decrement" style="margin-top: 28px; width:128px; height:15px; text-align:center">Année précédente</a>-->
    <button type="submit" class="btn" value='sav' style="margin-top: 28px; width:150px; margin-right:25px; margin-left:25px" >Enregistrer</button>
	<!--<a class="btn" href="index.php?p=licencie&test5=test5&uc=gestionLicenci%C3%A9s&action=ageCat&event=increment" style="margin-top: 28px; width:128px; height:15px; text-align:center">Année suivante</a>-->
</span>
</FORM>
</div>