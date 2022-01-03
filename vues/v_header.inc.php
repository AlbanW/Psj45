<head>
<link rel="stylesheet" href="/css/style.css">
<meta charset="UTF-8">
<meta name="theme-color" content="#ff7b01">
<meta name="description" content="Panneau d'administration Rakket du Ping Saint Jean 45">
<meta property="og:site_name" content="Panneau Administrateur | Rakket">
<meta property="og:image" content="/img/rkt.png" />
<link rel="shortcut icon" href="img/rkt.png">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<div class="headerbar"></div>

<?php
    echo'
    <link rel="stylesheet" href="css/style.css">
    </head>
    <header>
        <nav id="menu">
            <ul id="menu-deroulant">
                <li>
                    <a href="index.php?uc=accueil"><img  height="40px" widht="52px"src="img/rkt.png" class="psj" alt="Rakket"></a>
                </li>
                <li><a href="#">Licences</a>
                    <ul>
                        <li><a href="index.php?p=licencie&uc=gestionLicenciés&action=listeLicencie">Liste licenciés</a></li>
                        <li><a href="index.php?p=licencie&uc=gestionLicenciés&action=creerLicencie">Création licencié</a></li>
                    </ul>
                </li>
                <li><a href="#">Infos</a>
                    <ul>
                        <li><a href="index.php?p=licencie&uc=gestionLicenciés&action=creerFamille">Familles</a></li>
                        <li><a href="index.php?p=licencie&uc=gestionLicenciés&action=choixLicencie">Opérations financières</a></li>
                    </ul>
                </li>
                <li><a href="#">Outils</a>
                    <ul>
                        <li><a href="index.php?p=licencie&uc=gestionLicenciés&action=changementSaison">Changement de saison</a></li>
                        <li><a href="index.php?p=licencie&uc=gestionLicenciés&action=attestationLicencié">Attestation licencié</a></li>
                        <li><a href="pdf/Inscription.php">Fiche licencié préremplie A+1</a></li>
                        <li><a href="index.php?p=licencie&uc=gestionLicenciés&action=export">Export Opérations</a></li>
                        <li><a href="index.php?p=licencie&uc=gestionLicenciés&action=importlicenciés">Import Licenciés</a></li>
                        <li><a href="index.php?p=licencie&uc=gestionParamètres&action=Sauvegarde">Sauvegarde</a></li>
                    </ul>
                </li>
                <li><a href="#">Paramètres</a>
                    <ul>
                        <li><a href="index.php?p=licencie&uc=gestionLicenciés&action=tarif">Grille des Tarifs</a></li>
                        <li><a href="index.php?p=licencie&uc=gestionLicenciés&action=ageCat">Âges / Catégories</a></li>
                        <li><a href="index.php?p=licencie&uc=gestionCompte&action=gererComptes">Gestion des accès</a>
                    </ul>
                </li>
                <li><a href="#">'.$_SESSION['username'].'</a>
                    <ul>
                        <li><a href="index.php?p=licencie&uc=gestionCompte&action=gererComptePerso">Votre Compte</a>
                        <li><a href="index.php?p=licencie&uc=gestionConnexion&action=deconnexion">Déconnexion</a>
                    </ul>
                </li>
            </ul>
            <ul id="tools">
            </ul>
        </nav>
    </header>
    <body>';
?>
