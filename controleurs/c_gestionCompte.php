<?php
$action = $_REQUEST['action'];
if (isset($_COOKIE['username'])){
    switch($action)
    {
        case 'gererComptes':
            {
                include("vues/v_GestionComptes.php");
                break;
            }
        case 'gererComptePerso':
            {
                include("vues/v_formComptePerso.php");
                break;
            }
        case 'modifierComptePerso':
            {
                if(verifyConnexion($_COOKIE['username'],$_POST['currentPassword'])){
                    if($_SESSION['username']!=$_POST['username'] || $_SESSION['email']!=$_POST['email'] || $_POST['newPassword']==$_POST['newPasswordRepeat'] && $_POST['newPassword']!=""){
                        if($_SESSION['username']!=$_POST['username']){
                            changeUserName($_POST['username']);
                        }
                        if($_SESSION['email']!=$_POST['email']){
                            changeEmail($_POST['email']);
                        }
                        if($_POST['newPassword']==$_POST['newPasswordRepeat'] && $_POST['newPassword']!=""){
                            changePassword($_POST['username'],$_POST['newPassword']);
                            setcookie('username', $_SESSION['username'], time() + 7200);
                            setcookie('email', $_SESSION['email'], time() + 7200);
                            header("Location:index.php?p=licencie&uc=gestionCompte&action=gererComptePerso&E=0");
                        }
                        header("Location:index.php?p=licencie&uc=gestionCompte&action=gererComptePerso&E=0");
                    }
                    else{
                        header("Location:index.php?p=licencie&uc=gestionCompte&action=gererComptePerso&E=2");
                    }
                }
                else{
                    header("Location:index.php?p=licencie&uc=gestionCompte&action=gererComptePerso&E=1");
                }
            }
        case 'ajouterCompte':
            {
                $password = password_hash($_POST['Password'], PASSWORD_DEFAULT);
                createAccount($_POST['UserName'],$password,$_POST['Email']);
                header("Location:index.php?p=licencie&uc=gestionCompte&action=gererComptes");
                break;
            }
        default:
        {
            include("vues/v_erreur.php");
            break;
        }
    }
}
else{
    header("Location:index.php");
}
?>
