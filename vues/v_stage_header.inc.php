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
    <body>
    <header>
        <nav id="menu">
            <ul id="menu-deroulant">
                <li>
                    <a href="index.php?uc=accueil"><img  height="40px" widht="52px"src="img/rkt.png" class="psj" alt="Rakket"></a>
                </li>
                <li><a href="#">Stages</a>
                    <ul>
                        <li><a href="index.php?p=stage&uc=gestionStages&action=listeStages">Liste stages</a></li>
                        <li><a href="index.php?p=stage&uc=gestionStages&action=créationStage">Création stages</a></li>
                    </ul>
                </li>
                <li><a href="#">Participants</a>
                    <ul>
                        <li><a href="index.php?p=stage&uc=gestionStages&action=ajouterParticipant">Ajouter un participants</a></li>
                    </ul>
                </li>
                <li><a href="#">Paramètres</a>
                    <ul>
                        <li><a href="index.php?p=stage&uc=gestionStages&action=tarif">Tarif</a></li>
                        <li><a href="index.php?p=stage&uc=gestionStages&action=comptes_reglement">Règlement</a></li>
                    </ul>
                </li>
                <li><a href="#">'.$_SESSION['username'].'</a>
                    <ul>
                        <li><a href="index.php?p=stage&uc=gestionCompte&action=gererComptePerso">Votre Compte</a>
                        <li><a href="index.php?p=stage&uc=gestionConnexion&action=deconnexion">Déconnexion</a>
                    </ul>
                </li>
            </ul>
            <ul id="tools">
            </ul>
        </nav>
    </header>';
?>