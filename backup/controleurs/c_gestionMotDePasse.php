<?php
$action = $_REQUEST['action'];
date_default_timezone_set('Europe/Paris');
$now = date('Y-m-d H:i:s', time());
switch($action)
{
    default :
	    {
            header("Location:index.php");
		    break;
	    }
	case 'motDePasseOublié':
	    {
            include("vues/v_formMotDePasseOublié.php");
            break;
        }
    case 'changerMotDePasse':
        {
            $email = getEmail($_POST['username']);
            if($email=="1"){
                header("Location:index.php?uc=motDePasse&action=motDePasseOublié&E=1");
            }
            elseif($email=="2"){
                header("Location:index.php?uc=motDePasse&action=motDePasseOublié&E=2");
            }
            elseif($email!=""){
                $password = random_password(8);
                changePassword($_POST['username'],$password);
                $sujet = 'PSJ45 | Réinitialisation du mot de passe.';
                $message = '
                <!DOCTYPE html>
                    <html lang="fr">
                    <head>
                        <meta charset="utf-8">
                    </head>
                    <!-- CSS Intégré -->
                    <style>
                        @import url(https://fonts.googleapis.com/css2?family=Ubuntu:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500;1,700&display=swap);
                        @font-face {
                            font-family: "Ubuntu", sans-serif;
                        }
                    
                        html {
                            font: normal 13px/1.4 "Ubuntu", sans-serif;
                            -webkit-text-size-adjust: 100%;
                            -ms-text-size-adjust: 100%;
                            -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
                            width: 100%;
                        }
                    
                        h2 {
                            margin-top: 50px;
                            font-size: 26px;
                        }
                    
                        body {
                            margin: 0px;
                            text-align:center;
                        }
                    
                        .headerbar {
                            background-color: #3e96e4;
                            height: 8px;
                            width: auto;
                        }
                    
                        .logocontainer {
                            background-color: #3e96e4;
                            height: 30px;
                            width: auto;
                            text-align:center;
                        }
                    
                        h1{
                            font-size:20px;
                            margin-top:70px;
                            font-style:normal;
                            margin-bottom:-15px;
                            margin-left:10px;
                            text-align:start;
                        }
                        h2{
                            font-size:18px;
                            font-style:bold;
                            text-align:center;
                            margin:12px;
                            margin-left:10px;
                            border-style:solid;
                            border-color: #a6c8e6;
                            text-align:center;
                            width: 150px;
                            padding:8px 15px;
                            border-radius:3px;
                            border-width:5px;
                            display: inline-block;
                        }
                    
                        p{
                            margin:0;
                            font-size:15px;
                            margin-left:10px;
                        }
                    
                        .connectbtn {
                            text-align:center;
                            padding: 14px 32px;
                            margin-top:25px ;
                            border: solid;
                            border-color:#3e96e4;
                            border-radius: 5px;
                            cursor: pointer;
                            width: 100%;
                            background: rgba(62,150,228,1);
                            transition-property: background-color,color;
                            transition-duration: 0.5s;
                            font-family: "Ubuntu", sans-serif;
                            outline: none;
                        }
                    
                        .connectbtn:hover {
                            background: rgba(62,150,228,0);
                            transition-property: background-color,color;
                            color:#3e96e4;
                            transition-duration: 0.5s;
                            outline: none;
                            border-color:#3e96e4;
                        }
                    
                        a{
                            text-decoration:none;
                            color: white;
                            font-size:15px;
                        }
                    </style>
                    <!-- Contenu -->
                    <body>
                        <div class="logocontainer">
                            <img src="https://psj45.vortexdev.fr/psj45.png" height="80" style="text-align:center;"/>
                        </div>
                    <h1> Bonjour '.$_POST['username'].",</h1><br>
                    <p style='text-align:start;'>Suite à votre demande de réinitialisation votre nouveau mot de passe est :</p>
                    <h2>".$password."</h2>
                    <p style='margin-bottom:25px;text-align:center;'><i>Il est fortement conseillé de modifier ce mot de passe dès votre connexion.</i></p>
                    <br>
                    <a class='connectbtn' href='https://psj45.vortexdev.fr/index.php?uc=gestionConnexion&action=deconnexion'>Se connecter avec votre nouveau mot de passe</a>
                    <br>
                    <br>
                    <br>
                    <p style='text-align:start;'><i>- Ping Saint Jean 45.</i></p>
                </body>
                </html>";
                $headers[] = 'Mime-Version: 1.0';
                $headers[] = 'Content-Type: text/html; charset=iso-8859-1';
                mail($email, $sujet, $message, implode("\r\n", $headers));
                header("Location:index.php?E=0");
                /*
                $DateTimeOfPasswordChange = getDateTimeOfPasswordChange($_POST['username']);
                $DateTimeOfPasswordChange = new DateTime($DateTimeOfPasswordChange);
                $DateTimeOfPasswordChange->add(new DateInterval('P0Y0M0DT1H0M0S'));
                $DateTimeOfPasswordChange = $DateTimeOfPasswordChange->format('Y-m-d H:i:s');
                echo $now."<".$DateTimeOfPasswordChange;
                if($now < $DateTimeOfPasswordChange){
                    header("Location:index.php?uc=motDePasse&action=motDePasseOublié&E=3");
                }
                else{
                    $password = random_password(8);
                    changePassword($_POST['username'],$password);
                    mail($email, 'Réinitialisation du mot de passe', 'Bonjour '.$_POST['username'].",\r\nSuite à votre demande de réinitialisation votre nouveau mot de passe est : ".$password.".\r\nIl est fortement conseillé de modifier ce mot de passe à la première connexion.");
                    header("Location:index.php?uc=motDePasse&action=motDePasseOublié&E=0");
                }*/
            }
            break;
        }
}
?>