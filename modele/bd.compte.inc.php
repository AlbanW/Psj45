<?php
include_once 'bd.inc.php';
function changeUserName($username){
    $db=connexionPDO();
    $requete = $db -> prepare("UPDATE AdminAccount Set UserName='".$username."' WHERE UserName =:login");
    $requete -> execute(array(':login'=>$_COOKIE['username']));
    $_SESSION['username'] = $username;
    setcookie('username', $username, time() + 7200);
}
function changeEmail($email){
    $db=connexionPDO();
    $requete = $db -> prepare("UPDATE AdminAccount Set Email='".$email."' WHERE UserName =:login");
    $requete -> execute(array(':login'=>$_COOKIE['username']));
    $_SESSION['email'] = $email;    
    setcookie('email',$email, time() + 7200);
}
function changePassword($username,$password){
    date_default_timezone_set('Europe/Paris');
	$now = date('Y-m-d\TH:i:s.uP', time());
    $password = password_hash($password, PASSWORD_DEFAULT);
    $db=connexionPDO();
    $requete = $db -> prepare("UPDATE AdminAccount Set password='".$password."', PasswordChange='".$now."' WHERE UserName =:login");
	$requete -> execute(array(':login'=>$username));
}
function getAllAccount(){
    $monPdo = connexionPDO();
    $req = 'SELECT * FROM AdminAccount';
    $res = $monPdo->query($req);
    $res = $res->fetchAll();
    return $res;
}
function createAccount($userName,$password,$email){
    $monPdo = connexionPDO();
    $requete = $monPdo -> prepare("INSERT INTO AdminAccount (UserName,password,Email) VALUES (:UserName,:password,:Email)");
	$requete -> execute(array(':UserName'=>$userName,':password'=>$password,':Email'=>$email));
}
?>