<?php
include_once 'bd.inc.php';
	/*fonction qui selectionne les licenciés ordonnés par famille dans formulaire liste licencié*/
	function getEmail($username)
	{
        $db=connexionPDO();
        $requete = $db -> prepare("SELECT Email, UserName FROM AdminAccount WHERE UserName =:login");
        $requete -> execute(array(':login'=>$username));
        $RQreponse=$requete->fetch();
        $Email = $RQreponse['Email'];
        $UserName = $RQreponse['UserName'];
        if($UserName==""){
            return "1";
        }
        elseif($Email==""){
            return "2";
        }
        else{
            return $Email;
        }
	}

    function getDateTimeOfPasswordChange($username){
        $db=connexionPDO();
        $requete = $db -> prepare("SELECT PasswordChange FROM AdminAccount WHERE UserName =:login");
        $requete -> execute(array(':login'=>$username));
        $RQreponse=$requete->fetch();
        $PasswordChange = $RQreponse['PasswordChange'];
        return $PasswordChange;
    }
?>