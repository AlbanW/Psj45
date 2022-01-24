<!-- Formulaire de connexion -->
<title>Connexion | Rakket</title>
<meta charset="UTF-8">
<link href="img/rkt.png" rel="shortcut icon">
<meta name="theme-color" content="#ff7b01">
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:image" content="https://psj45.vortexdev.fr/img/twitter-card.png">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
@import url('https://fonts.googleapis.com/css2?family=Ubuntu:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500;1,700&display=swap');
</style>

<link href="/css/Login.css" rel="stylesheet">

<body>
  <div class="imgcontainer"  style="
      margin-left: auto;
      margin-right: auto;
      margin-top: 9%;
      ">
      <a href="index.php"><img src="/img/rakketd.png" height="60" style="margin-top:33px;"></a>
  </div>
  <form action="index.php?p=licencie&uc=gestionConnexion&action=confirmerConnexion" method="POST" style="margin-left: auto; margin-right: auto;" >
    <div class="container">
      <?php
      session_destroy();
      if(isset($_GET['E'])){
        echo'<h1 style="margin-top: 10px;margin-bottom: 10px;">Se connecter</h1>';
        if($_GET['E']==0){
            echo'<div class="réussite">Un email vient de vous être envoyé sur votre adresse.</div>';
        }
        elseif($_GET['E']==1){
          echo'<div class="erreur">Utilisateur ou mot de passe incorrect.</div>';
        }
        elseif($_GET['E']==2){
          echo'<div class="erreur">Utilisateur ou mot de passe incorrect!</div>';
        }
        elseif($_GET['E']==45){
          echo'<div class="crédits">Crédits : <br><br>Marc Virigili, Yoan Baulande & <a href="https://lykos.vortexdev.fr/" target="_blank" style="color:#fff;">LyKøs</a></div>';
        }
      }
      else{
        echo'<h1 style="margin-top: 10px;margin-bottom: 10px;">Se connecter</h1>';
      }
      ?>
    
      <label for="username"><b>Identifiant</b></label>
      <input type="text" placeholder="Entrez votre identifiant" name="username" required style="margin-bottom: 18px;">
      <label for="password"><b>Mot de passe</b></label>
      <input type="password" placeholder="Entrez votre mot de passe" name="password" required>
      <a class="right" style="color: #066aff;" href="index.php?p=licencie&uc=motDePasse&action=motDePasseOublié">Mot de passe oublié ?</a>

      <button class="btn" style="margin-top: 28px;" >Connexion</button>
    </div>

  </form>
</body>
<footer>
Outil d'administration réservé au personnel du Ping Saint Jean 45
</footer>