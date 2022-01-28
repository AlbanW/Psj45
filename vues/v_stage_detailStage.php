<head>
	<title>Créer un stage | Rakket</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/js/bootstrap-datepicker.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/css/bootstrap-datepicker.css" rel="stylesheet"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/locales/bootstrap-datepicker.fr.min.js"></script>  
</head>
<!-- Formulaire de création d'un stage -->


<center><br><br>
<h1>Modifier stage</h1><br><br>
</center>
	<FORM action="index.php?p=stage&uc=gestionStages&action=modifierStage&numero=<?= $_GET['numero'];?>" method="post">
        <div style="display: flex; justify-content: center; align-items: flex-start; ">
        <br>
        <div style="padding:1em">
        <label for="Libelle">Libellé</label>
        <input type="text" required name="libelle" value="<?= $unStage['Libellé']; ?>"  id="Libelle" class="formCreaLicTailleCaseHaut"/>
        </div>
        <div style="padding:1em">
        <label for="tarif">Tarif</label>
        <select name="tarif" id="tarif" style="cursor: pointer;">
            <?php
            foreach(getTarifsStage() as &$tarif){
                if($tarif['Numéro'] == $stageTarif)
                    echo'<option value="'.$tarif['Numéro'].'" selected>'.$tarif['Code'].'</option>';
                else
                    echo'<option value="'.$tarif['Numéro'].'">'.$tarif['Code'].'</option>';
            }
            ?>   
        </select>
        </div>
 
        </div>
        <div style="display: flex; justify-content: center; align-items: center;">
            <input class="btn" type="submit" name="validForm" value="Valider" style="width:300px">
        </div>
</FORM>
<br><br><br>
<hr>
<br><br><br>
<center>
<h1>Liste participant(s)</h1>
</center><br><br>
<?php
$participants = getParticipantsInStage($unStage['ID']);    
echo '
<span class="Tableau">
<ul class="menu_categories">
    <li class="categorie_input" style="padding-left:45px">Nom</li>
    <li class="categorie_input">Prenom</li>
    <li class="categorie_input" style="width:100px;">Stage n°</li>
    <li class="categorie_input" style="width:100px;">Montant à régler</li>
</ul>
<br/>
</span>
';
foreach($participants as $unParticipant){;

                $Nom = $unParticipant['Nom_licencié'];
                $Prenom = $unParticipant['Prénom_licencié'];
                $Libellé = $unStage['Libellé'];
                $numParticipation = $unParticipant[0];
                $debit = 0 - getStageDebit($unParticipant['Numéro_participant'], $unStage['ID']);
                $credit = getStageCredit($unParticipant['Numéro_participant'], $unStage['ID']);
                $solde = $debit + $credit;

        ?>
        <span class="Tableau">
            <label class="checkbox_label">
                <input type="checkbox" id="checktest"  autocomplete="off" onclick="deleteRow()" style="width:45px;" class="Selected";>
                <span class="checkmark"></span>
            </label>
            
            <input type="hidden" name="Numéro[]" id="Numéro_part" value="<?php echo $num;?>">
            <a href="index.php?p=stage&test=test&uc=gestionStages&action=detailParticipant&numero=<?php echo $numParticipation; ?>"><input readonly type="text" name="Numéro[]" id="Famille" class="formLicTaille10"  style="cursor: pointer;" value="<?php echo $Nom; ?>" /></a>

            <input type="text" required name="Prenom_participant[]" id="Prenom_participant" class="formFamTailleNom" style="width:175px;" value="<?php echo $Prenom?>"/>
            <input type="text" required name="ID_Stage[]" id="ID_stage" class="formFamTailleNom" style="width:175px;" value="<?php echo $Libellé ?>"/>
            <input type="text" required name="Montant_Stage[]" id="Montant_Stage" class="formFamTailleNom" style="width:175px;" value="<?php echo $solde; ?> €"/>
        </span>
        <?php
        }
        ?>
        <div style="display: flex; justify-content: center; align-items: center;">
            <input class="btn_delete" id="deleteCheckbox" style="display:none;width:300px" type="submit" value="Supprimer"  ">
        </div>
       