<?php
    if(isset($_POST['Famille'])){
        header("Location:index.php?p=licencie&uc=gestionLicenciés&action=familleChoisie&famille=".$_POST['Famille']);
    }
?>
<!-- formulaire de selection des licenciés qui sont inscrits-->
    <head>
        <title>Comptes | Rakket</title>
    </head>
    <div class="form-wrapper">
    <h2>Choisir une famille </h2>
    <FORM style="text-align: center;"class="SmallForm" action="index.php?p=licencie&uc=gestionLicenciés&action=choixLicencie" method="post">
        <select name="Famille" id="Famille" style="width:125px">
            <?php
            foreach ($lesLicenciés as $unLicencié)
                {
                    $fam = $unLicencié['Famille'];
                    echo '<OPTION value="'.$fam.'" >'.$fam.'</OPTION>';
                }
            ?>
        </select>
        <br>
        <button type="submit" class="btn" value='sav' style="margin-top: 28px" >Valider</button>
    </FORM>
</div>