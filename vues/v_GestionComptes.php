<head>
	<title>Gestion des Comptes | Rakket</title>
</head>
<!-- Affichage de la barre d'outils et mise en paramètre du type qui permet de connaitre les éléments sur les quelles doivent s'appliquer les outils (exemple : licencié, tarif, comptes) -->
    <?php
        $_SESSION['type']='comptes';
    ?>
    <script>
        showHeaderTools('comptes');
    </script>
<!--Fin du code permetant l'affichage des outils-->
<div class="form-wrapper">
<!-- formulaire pour ajouter un tarif-->
<h2>Gestion des comptes</h2>
<FORM action="index.php?uc=gestionCompte&action=ajouterCompte" method="post">
    <span class="Tableau">
        <input type="text" placeholder="Nom d'utilisateur" name="UserName" class="formTarTailleCode" />
        <input type="text" placeholder="Adresse mail"  name="Email" class="formTarTailleServ" />
        <input type="text" placeholder="Mot de passe"  name="Password" class="formTarTailleCrit" />
        
        <button style="margin-left:3px; height: 39;" type="submit" class="btnsubmit">Ajouter</button>
	</span>
</FORM>

<br>

<!-- formulaire pour modifier un tarif-->
<FORM action="index.php?uc=gestionCompte&action=ajouterCompte" method="post">
	
	<?php
    echo '
	<span class="Tableau">
        <ul class="menu_categories" style="display:flex ; gap: 10px;">
        <li class="categorie_input" style="width:45px" ></li>
            <li class="categorie_input" style="width:200px;">Nom d\'utilisateur</li>
            <li class="categorie_input" style="width:250px;">Adresse mail</li>
            <li class="categorie_input" style="width:200px;">Changement du mot de passe</li>
            <li class="categorie_input" style="width:150px" >Dérnière connexion</li>';
            if($_COOKIE['admin']=='true'){
                echo '<li class="categorie_input" style="width:45px" >Admin</li>';
            }
    echo'
        </ul>
    </span>
    <br>
    ';
	$LesComptes = getAllAccount();
	foreach($LesComptes as $Compte){
	?>
	<span class="Tableau" style="gap: 10px;">
    <label class="checkbox_label">
        <input type="checkbox" autocomplete="off" onclick="getNumberSelectedElements('<?php echo $Compte['UserName'];?>')" style="width:45px;" class="Selected";>
        <span class="checkmark"></span>
    </label>
	<input type="text" name="UserName" id="UserName" style="width:200px;" value="<?php echo $Compte['UserName'];?>">
	<input type="text" name="Email" id="Email" style="width:250px;" value="<?php echo $Compte['Email'];?>"/>
	<input type="datetime" name="PasswordChange" id="PasswordChange" style="width:200px;" value="<?php if($Compte['PasswordChange']!='0000-00-00 00:00:00'){echo date('d/m/Y H:i:s', strtotime($Compte['PasswordChange']));}?>" readonly >	
    <input type="datetime" name="LastConnection" id="LastConnection" style="width:150px;" value="<?php if($Compte['LastConnection']!='0000-00-00 00:00:00'){echo date('d/m/Y H:i:s', strtotime($Compte['LastConnection']));}?>" readonly >	
    <?php
        if($_COOKIE['admin']=='true'){
            if(isAdmin($Compte['UserName'])){
                echo '
                <label class="checkbox_label">
                    <input type="checkbox" autocomplete="off" onclick="" style="width:45px;" class="Selected" checked="checked";>
                    <span class="checkmark"></span>
                </label>';
            }
            else{
                echo '
                <label class="checkbox_label">
                    <input type="checkbox" autocomplete="off" onclick="" style="width:45px;" class="Selected";>
                    <span class="checkmark"></span>
                </label>';
            }
            
        }
    ?>
	</span>
	<?php
	}
	?>
    <span class="Tableau">
        <input style="width:300px" type="submit" id="envoyer" name="envoyer" class="savebtn" value="Sauvegarder"/>
    </span>
	
</FORM>
</div>