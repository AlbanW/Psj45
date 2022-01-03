<?php
    if(isset($_POST['participant'])){
        header("Location:index.php?p=stage&uc=gestionStages&action=reglement&participant=".$_POST['participant']);
    }
?>
<!-- formulaire de selection des participants qui sont inscrits-->
    <head>
        <title>Comptes | Rakket</title>
    </head>
    <div class="form-wrapper">
    <h2>Choisir un participant </h2>
    <FORM style="text-align: center;"class="SmallForm" action="index.php?p=stage&uc=gestionStages&action=comptes_reglement" method="post">
        <select name="participant" id="participant" style="width:225px">
            <?php
            foreach ($lesParticipants as $unParticipant)
                {
                    $unParticipant = getParticipantsByNum($unParticipant['Numéro_participant']);
                    if($unParticipant['Numéro_licencie']!=""){
                        $licencié = getLesInfosLicenciésByNum($unParticipant['Numéro_licencie']);
                        $Nom = $licencié['Nom_licencié'];
                        $Prenom = $licencié['Prénom_licencié'];
                    }
                    else{
                        $Nom = $unParticipant['Nom'];
                        $Prenom = $unParticipant['Prenom'];
                    }
                    echo '<OPTION value="'.$unParticipant['Numéro'].'" >'.$Nom.' - '.$Prenom.'</OPTION>';
                }
            ?>
        </select>
        <br>
        <button type="submit" class="btn" value='sav' style="margin-top: 28px" >Valider</button>
    </FORM>
</div>