<?php
function suppressionLicencié($num){
    try{
        $monPdo = connexionPDO();
        $req = $monPdo->prepare('DELETE FROM licencié WHERE Numéro = :num');
        $req->execute(array('num'=>$num));
        return true;
    }
    catch (PDOException $e){
        print "Erreur !: " . $e->getMessage();
        die();
        return false;
    }
}
function suppressionCompte($num){
    try{
        $monPdo = connexionPDO();
        $req = $monPdo->prepare('DELETE FROM AdminAccount WHERE UserName = :num');
        $req->execute(array('num'=>$num));
        return true;
    }
    catch (PDOException $e){
        print "Erreur !: " . $e->getMessage();
        die();
        return false;
    }
}

function suppressionFamilles($num){
    try{
        $monPdo = connexionPDO();
        $req = $monPdo->prepare('DELETE FROM famille WHERE Numéro = :num');
        $req->execute(array('num'=>$num));
        return true;
    }
    catch (PDOException $e){
        print "Erreur !: " . $e->getMessage();
        die();
        return false;
    }
}

/*fonction qui supprime un tarif pour formulaire tarif en fonction de son numéro*/
function supprimerTarif($num)
{
    try{
        $monPdo = connexionPDO();
        $req = $monPdo->prepare("DELETE FROM tarif WHERE Numéro= :num");
        $res=$req->execute(array('num'=>$num));
        return $res;
    }
    catch (PDOException $e){
        print "Erreur !: " . $e->getMessage();
        die();
    }
}

/*fonction qui supprime un tarif pour formulaire tarif en fonction de son numéro*/
function supprimerTarifStage($num)
{
    try{
        $monPdo = connexionPDO();
        $req = $monPdo->prepare("DELETE FROM tarif_stage WHERE Numéro= :num");
        $res=$req->execute(array('num'=>$num));
        return $res;
    }
    catch (PDOException $e){
        print "Erreur !: " . $e->getMessage();
        die();
    }
}

/*fonction qui supprime un stage pour formulaire tarif en fonction de son numéro*/
function supprimerStage($num)
{
    try{
        $monPdo = connexionPDO();
        $req = $monPdo->prepare("DELETE FROM stages WHERE ID= :num");
        $res=$req->execute(array('num'=>$num));

        $req = $monPdo->prepare("DELETE FROM opérations_compte_stage WHERE NuméroStage= :num");
        $res=$req->execute(array('num'=>$num));

        $req = $monPdo->prepare("DELETE FROM participation_stage WHERE Numéro_stage= :num");
        $res=$req->execute(array('num'=>$num));
        return $res;
    }
    catch (PDOException $e){
        print "Erreur !: " . $e->getMessage();
        die();
    }
}
?>