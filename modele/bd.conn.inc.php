<?php
include_once 'bd.inc.php';

	function verifyConnexion($username,$password)
	{
        $db=connexionPDO();
		date_default_timezone_set('Europe/Paris');
		$now = date('Y-m-d\TH:i:s.uP', time());

		if($username !== "" && $password !== "")
		{
			$requete = $db -> prepare("SELECT Password, Email, UserName, lvl FROM AdminAccount WHERE UserName =:login");
			$requete -> execute(array(':login'=>$username));
			$RQreponse=$requete->fetch();
			$psw = $RQreponse['Password'];
			$username = $RQreponse['UserName'];
            $Email = $RQreponse['Email'];
			$validPassword = password_verify($password,$psw) ;      
			if ($validPassword) // nom d'utilisateur et mot de passe correctes
			{
				$requete = $db -> prepare("UPDATE AdminAccount Set LastConnection='".$now."' WHERE UserName=:login");
				if ($requete -> execute(array(':login'=>$username))){
					echo "Update";
				}
				else{
					echo "Error: ". $db ."
					". $requete->error;
				}
				$_SESSION['username'] = $username;
                $_SESSION['email'] = $Email;
                $lvl = $RQreponse['lvl'];
                if($lvl=='4'){
                    setcookie('admin', 'true', time() + 7200);
                }
                return true;
			}
			else
			{
                return false;
			}
		}
		else
		{
            return false;
		}
	}

    function verifyAdmin($username,$password)
	{
        $db=connexionPDO();
		date_default_timezone_set('Europe/Paris');
		$now = date('Y-m-d\TH:i:s.uP', time());

		if($username !== "" && $password !== "")
		{
			$requete = $db -> prepare("SELECT Password, Email, UserName, lvl FROM AdminAccount WHERE UserName =:login");
			$requete -> execute(array(':login'=>$username));
			$RQreponse=$requete->fetch();
			$psw = $RQreponse['Password'];
			$username = $RQreponse['UserName'];
            $Email = $RQreponse['Email'];
			$validPassword = password_verify($password,$psw) ;      
			if ($validPassword) // nom d'utilisateur et mot de passe correctes
			{
                $lvl = $RQreponse['lvl'];
                if($lvl=='4'){
                    return true;
                }
                else
                {
                    return false;
                }
			}
			else
			{
                return false;
			}
		}
		else
		{
            return false;
		}
	}

    function isAdmin($username){
        $db=connexionPDO();
        $requete = $db -> prepare("SELECT lvl FROM AdminAccount WHERE UserName =:login");
        $requete -> execute(array(':login'=>$username));
        $RQreponse=$requete->fetch();
        $lvl = $RQreponse['lvl'];
        if($lvl==4){
            return true;
        }
        else
        {
            return false;
        }
    }
?>