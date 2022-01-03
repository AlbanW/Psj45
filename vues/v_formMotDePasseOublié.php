<meta charset="UTF-8">
<meta name="theme-color" content="#ff7b01">
<link rel="shortcut icon" href="img/rkt.png">
<title>Mot de passe oublié | Rakket</title>
<meta name="description" content="Panneau d'administration Rakket du Ping Saint Jean 45">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
@import url('https://fonts.googleapis.com/css2?family=Ubuntu:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500;1,700&display=swap');
</style>
<link rel="stylesheet" href="css/Login.css"/>
<body >
  <div class="imgcontainer"  style="
      margin-left: auto;
      margin-right: auto;
      margin-top: 9%;
      ">
      <a href="index.php"><img src="/img/rakketd.png" height="60" style="margin-top:33px;"></a>
  </div>
  <form action="index.php?uc=motDePasse&action=changerMotDePasse" method="POST" style="margin-left: auto; margin-right: auto;" >
    <div class="container">
      <?php
      if(isset($_GET['E'])){
        echo'<h1 style="margin-top: 10px;margin-bottom: 10px;">Réinitialiser le mot de passe</h1>';
        if($_GET['E']==1){
            echo'<div class="erreur">Ce compte n\'existe pas.</div>';
        }
        elseif($_GET['E']==2){
            echo'<div class="erreur">Aucune adresse mail n\'est associée au compte</div>';
        }
        elseif($_GET['E']==3){
            echo'<div class="erreur">Le mot de passe a été changé il y a moins d\'une heure.</div>';
        }
      }
      else{
        echo'<h1 style="margin-top: 10px;margin-bottom: 10px;">Réinitialiser le mot de passe</h1>';
      }
      ?>
    
      <label for="username"><b>Identifiant</b></label>
      <input type="text" placeholder="Entrez votre identifiant" name="username" required style="margin-bottom: 18px;">

      <button type="submit" class="connectbtn" value='LOGIN' style="margin-top: 28px;" >Réinitialiser</button>
    </div>

  </form>
</body>
<footer>
Outil d'administration réservée au personnel du Ping Saint Jean 45
</footer>