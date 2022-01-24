<head>
	<title>Changement de saison | Rakket</title>
</head>
<?php
if(isset($_POST['valide'])){
    
    //window.open( "index.php?p=licencie&uc=gestionLicenciés&action=exportPresident")
    echo'
    <script type="text/javascript">
        window.open("index.php?p=licencie&uc=gestionLicenciés&action=exportPresident");
        window.open("/pdf/Inscription.php");
        document.location.href="index.php?p=licencie&uc=gestionLicenci%C3%A9s&action=changementSaison"; 
    </script>';
}
elseif(isset($_REQUEST['verif'])){
    echo'
    <div class="form-wrapper">
        <form action="index.php?p=licencie&uc=gestionConnexion&action=confirmerAdmin" method="POST" class="SmallForm" style="margin-left: auto; margin-right: auto;" >
            <div class="container">';
            session_destroy();
            if(isset($_GET['E'])){
                echo'<h1 style="margin-top: 10px;margin-bottom: 10px;">Veuilliez entrer le mot de passe du compte administrateur</h1>';
                if($_GET['E']==0){
                    echo'<div class="réussite">Un email vient de vous être envoyé sur votre adresse.</div>';
                }
                elseif($_GET['E']==1){
                echo'<div class="erreur">Utilisateur ou mot de passe incorrect.</div>';
                }
                elseif($_GET['E']==2){
                echo'<div class="erreur">Utilisateur ou mot de passe incorrect!</div>';
                }
            }
            else{
                echo'<h1 style="margin-top: 10px;margin-bottom: 10px;">Veuilliez entrer le mot de passe du compte administrateur</h1>';
            }
            echo'
            <label for="username"><b>Identifiant</b></label>
            <input type="text" placeholder="Entrez votre identifiant" name="username" required style="margin-bottom: 18px;">
            <label for="password"><b>Mot de passe</b></label>
            <input type="password" placeholder="Entrez votre mot de passe" name="password" required>

            <button class="btn" style="margin-top: 28px;" >Vérification</button>
            </div>
        </form>
    </div>';   
}
else{
    echo'
    <div class="form-wrapper">
        <h2>Changement de saison</h2>
        <form class="SmallForm" method="post" action="index.php?p=licencie&uc=gestionLicenciés&action=changementSaison">
            <h3>Les actions suivantes seront effectuées :</h3>
            <ul>
                <li>Création des fiches d\'inscription A+1 pré-remplies pour les licenciés \'Tradi\'</li>
                <li>Création de l\'export des opérations pour le président</li>
                <li>Suppression de toutes les opérations</li>
                <li>Désinscription de tous les licenciés</li>
            </ul>
            <button type="submit" class="btn" value="verif" name="verif" style="margin-top: 28px;" >Valider</button>
        </form>
    </div>';
}
?>

