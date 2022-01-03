<head>
	<title>Attestation | Rakket</title>
</head>
<div class="form-wrapper">
<!-- formulaire de selection des licenciés qui sont inscrits-->
    <h2>Générer l'attestation </h2>
    <FORM  target="_blank" style="text-align: center;" class="SmallForm" action="pdf/Attestation.php" method="post">
        <select name="licencié" style="width:210px">
            <?php
            foreach ($lesLicenciés as $unLicencié)
                {
                    $prenom = $unLicencié['Prénom_licencié'];
                    $fam = $unLicencié['Nom_licencié'];
                    echo '<option value="'.$unLicencié['Numéro'].'" >'.$fam.' - '.$prenom.'</option >';
                }
            ?>
        </select>
        <select name="dateInterval" style="width:125px; margin-left: 50px">
        <?php
            echo '<option value="'.getSeason().'" >'.getSeason().'</option >';
        ?>
        </select>
        <br>
        <button type="submit" class="btn" value='sav' style="margin-top: 28px" >Valider</button>
    </FORM>
</div>