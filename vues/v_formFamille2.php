<head>
	<title>Familles | Rakket</title>
</head>
<br>
	<!-- entête formulaire famille2-->
	<div style="display:flex; justify-content:center;">
	<table>
	<tr>
	<td style="padding: 0 4.4em;">Nom</td>
	<td style="padding: 0 3.7em;">Adresse</td>
	<td style="padding: 0 4.5em;">Ville</td>
	<td style="padding: 0 3.1em;">Tel mobile</td>
	<td style="padding: 0 2.8em;">Tel domicile</td>
	<td style="padding: 0 3.2em;">Tel travail</td>
	<td style="padding: 0 2.9em;">Email perso</td>
	<td style="padding: 0 2.7em;">Email travail</td>
	</tr>
	</table>
	</div>
	
	<!-- formulaire famille2-->
	<div style="display:flex; justify-content:center;">
	<FORM action="index.php?p=licencie&test2=test2&uc=gestionLicenciés&action=modifierFamille2" method="post" style="display: block;">
	<?php
    $uneFamille = getFamillesByNum($_SESSION['famNum']);
	?>
	<input type="hidden" name="Numéro[]" id="Numéro" value="<?php echo $uneFamille['Numéro'];?>">
	<input type="text" required name="Nom_famille[]" id="Nom_famille" class="formFam2Nom" value="<?php echo $uneFamille['Nom_famille'];?>"/>
	<input type="text" name="Adresse[]" id="Adresse" class="formFam2VilleAdresse" value="<?php echo $uneFamille['Adresse'];?>"/>
	<input type="text" name="Ville[]" id="Ville" class="formFam2VilleAdresse" value="<?php echo $uneFamille['Ville'];?>"/>
	<input type="text" name="Tel_mobile[]" id="Tel_mobile" class="formFam2Tel" value="<?php echo $uneFamille['Tel_mobile'];?>"/>
	<input type="text" name="Tel_domicile[]" id="Tel_domicile" class="formFam2Tel" value="<?php echo $uneFamille['Tel_domicile'];?>"/>
	<input type="text" name="Tel_travail[]" id="Tel_travail" class="formFam2Tel" value="<?php echo $uneFamille['Tel_travail'];?>"/>
	<input type="text" name="Email_perso[]" id="Email_perso" class="formFam2Mail" value="<?php echo $uneFamille['Email_perso'];?>"/>
	<input type="text" name="Email_travail[]" id="Email_travail" class="formFam2Mail" value="<?php echo $uneFamille['Email_travail'];?>"/>
	<br/>
	</div>
	<div style="display:flex; justify-content:center;">
<input type="submit" id="envoyer" name="envoyer" class="btn" style="width:150px;" value="Enregistrer" />
</div>
</FORM>
	
	