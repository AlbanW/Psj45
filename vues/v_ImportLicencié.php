<head>
	<title>Export | Rakket</title>
</head>
<?php
echo'
<div class="form-wrapper">
    <h2>Procédure d\'importations d\'une liste de licenciés</h2>
    <h3>Veuillez suivre les étapes suivantes :</h3>
    <ul>
        <li>Assurez vous que le format du fichier XLS que vous allez joindre correspond à l\'exemple téléchargeable <u><a href="import/FichierLicenciésExemple.xls">ici</a></u>.</li>
        <li>Gardez le fichier de sauvegarde de la liste des licenciés qui sera automatiquement téléchargé au moment de l\'importation (Pour pouvoir restaurer les données en cas d\'erreur).</li>
        <li>Vérifiez bien qu\'aucun autre utilisateur n\'est connecté (pour cela allé dans l\'onglet "Paramètres->Gestion des Comptes" et regardé la colonne "connecté".</li>
    </ul>
    <form class="SmallForm" id="formListLicenciésImport" style="display: flex; flex-direction: column; align-items: center; margin-bottom: 0px; margin-top: 75px;" method="post" enctype="multipart/form-data">
        <input type="file" class="btnUpload" id="listLicenciésImport" name="listLicenciés" accept=".xls, .xlsx" onchange="importLicenciés(this.files)">
        <label class="btn" for="listLicenciésImport" id="labelListLicenciésImport" style="text-align:center; width:444px; padding-left: 0px; padding-right: 0px;">Téléverser le fichier</label>
        <button type="submit" class="btn" style="margin-top: 28px;" >Valider</button>
    </form>
    <br><br><br>
</div>';
?>