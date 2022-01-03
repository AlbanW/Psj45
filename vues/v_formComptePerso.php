<head>
	<title><?php echo $_SESSION['username']?> | Rakket</title>
</head>
<div class="form-wrapper">
    <h2>Informations du compte</h2>
    <form class="SmallForm" method="post" action="index.php?p=licencie&uc=gestionCompte&action=modifierComptePerso">
        <?php
            if(isset($_GET['E'])){
                if($_GET['E']==0){
                    echo'<div class="réussite">Vos informations ont été changé avec succès</div>';
                }
                if($_GET['E']==1){
                    echo'<div class="erreur">Mot de passe incorrect.</div>';
                }
                if($_GET['E']==2){
                    echo'<div class="erreur">Erreur dans la saisie du nouveau mot de passe.</div>';
                }
            }
        ?>
        <label><strong>Nom d'utilisateur :</strong></label>
        <input type="text" name="username" value="<?php echo $_SESSION['username']?>" maxlength="32">
        <label><strong>Email :</strong></label>
        <input type="email" name="email" value="<?php echo $_SESSION['email']?>" maxlength="64">
        <label for="password"><strong>Mot de passe :</strong></label>
        <input type="password" placeholder="Saisissez votre mot de passe actuelle" name="currentPassword" required>
        <input type="password" placeholder="Saisissez le nouveau mot de passe" name="newPassword" >
        <input type="password" placeholder="Retapez votre mot de passe" name="newPasswordRepeat" >
        <button type="submit" class="savebtn" value='sav' style="margin-top: 28px;" >Sauvegarder</button>
    </form>
</div>