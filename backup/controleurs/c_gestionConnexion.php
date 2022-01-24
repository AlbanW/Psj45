<?php
require 'vendor/autoload.php';


$action = $_REQUEST['action'];
switch($action)
{
	default :
	{
		include("vues/v_formConn.php");
		break;
	}
	case 'confirmerConnexion':
	{
		$login=$_REQUEST['username'];
        $mdp=$_REQUEST['password'];
		if(verifyConnexion($login,$mdp)){
            header("Location:index.php?uc=accueil");
            setcookie('username', $_SESSION['username'], time() + 7200);
            setcookie('email', $_SESSION['email'], time() + 7200);
        }
        else{
            header("Location:index.php?E=1");
        }
		break;
	}
    case 'confirmerAdmin':
        {
            $login=$_REQUEST['username'];
            $mdp=$_REQUEST['password'];
            if(verifyAdmin($login,$mdp)){
                echo'
                <form method="POST" id="form" action="index.php?p=licencie&uc=gestionLicenciés&action=changementSaison">
                    <input name="valide" value="valide"></input>
                </form>
                <script type="text/javascript">
                    document.getElementById("form").submit();
                </script>
                ';
                setcookie('username', $_SESSION['username'], time() + 7200);
                setcookie('email', $_SESSION['email'], time() + 7200);
            }
            else{
                header("Location: index.php?p=licencie&uc=gestionLicenci%C3%A9s&action=changementSaison&verif&E=1");
            }
            break;
        }
	case 'deconnexion':
	{
		session_destroy();
        setcookie('username', '', time() + 7200);
        header('Location: index.php?'.$_SESSION['username']);
		break;
	}
}
?>
