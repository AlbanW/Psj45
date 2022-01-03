<head>
	<title>Familles | Rakket</title>
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
	<FORM action="index.php?p=licencie&test2=test2&uc=gestionLicenciés&action=modifierFamille" method="post" style="display: block;">
        <?php
            echo '
            <span class="Tableau">
            <ul class="menu_categories">
                <li class="categorie_input" style="padding-left:45px">Nom</li>
                <li class="categorie_input">Adresse</li>
                <li class="categorie_input" style="width:225px;">Ville</li>
                <li class="categorie_input" style="width:100px;">Tel Mobile</li>
                <li class="categorie_input" style="width:100px;">Tel Domicile</li>
                <li class="categorie_input" style="width:100px;">Tel Travail</li>
                <li class="categorie_input" style="width:225px;">Email Perso</li>
                <li class="categorie_input" style="width:225px;">Email Travail</li>
            </ul>
            <br/>
            </span>
        ';
        if(isset($_POST['search'])){
            $lesFamilles = searchFamilles($_POST['key']);
        }
        else{
            $lesFamilles = getFamilles();
        }
        foreach($lesFamilles as $uneFamille){;
        ?>
        <span class="Tableau">
            <label class="checkbox_label">
                <input type="checkbox" autocomplete="off" onclick="getNumberSelectedElements(<?php echo $uneFamille['Numéro']; ?>)" style="width:45px;" class="Selected";>
                <span class="checkmark"></span>
            </label>
            <input type="hidden" name="Numéro[]" id="Numéro" value="<?php echo $uneFamille['Numéro'];?>">
            <input type="text" required name="Nom_famille[]" id="Nom_famille" class="formFamTailleNom" value="<?php echo $uneFamille['Nom_famille'];?>"/>
            <input type="text" name="Adresse[]" id="Adresse" class="formFamTailleVilleAdresse" value="<?php echo $uneFamille['Adresse'];?>"/>
            <input type="text" style="width:225px;" name="Ville[]" id="Ville" class="formFamTailleVilleAdresse" value="<?php echo $uneFamille['Ville'];?>"/>
            <input type="text" style="width:100px;" name="Tel_mobile[]" id="Tel_mobile" class="formFamTailleTel" value="<?php echo $uneFamille['Tel_mobile'];?>"/>
            <input type="text" style="width:100px;" name="Tel_domicile[]" id="Tel_domicile" class="formFamTailleTel" value="<?php echo $uneFamille['Tel_domicile'];?>"/>
            <input type="text" style="width:100px;" name="Tel_travail[]" id="Tel_travail" class="formFamTailleTel" value="<?php echo $uneFamille['Tel_travail'];?>"/>
            <input type="text" style="width:225px;" name="Email_perso[]" id="Email_perso" class="formFamTailleMail" value="<?php echo $uneFamille['Email_perso'];?>"/>
            <input type="text" style="width:225px;" name="Email_travail[]" id="Email_travail" class="formFamTailleMail" value="<?php echo $uneFamille['Email_travail'];?>"/>
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