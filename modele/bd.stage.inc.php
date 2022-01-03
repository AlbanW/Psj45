<?php
include_once 'bd.inc.php';
date_default_timezone_set('Europe/Paris');
$now = date('Y-m-d\TH:i:s.uP', time());

function createStage($lib,$Num_Tarif,$date){
    try{
        $dateArr = explode(",", $date);
        usort($dateArr, "sortDate");


        $monPdo = connexionPDO();
        $req = $monPdo->prepare('INSERT INTO stages (Libellé,Num_Tarif) values (?,?);');
        $res=$req->execute(array($lib,$Num_Tarif));


        $InsertedID = $monPdo->lastInsertId();


        $sql = 'UPDATE stages SET ';
        foreach ($dateArr as $d) {
            $i ++;
            $sql .= 'Jour'.$i.'=\''.$d.'\'';
            if($i < count($dateArr)){
                $sql .=', '; 
            }
        }
        $sql .= ' WHERE ID='.$InsertedID;
        $req = $monPdo->prepare($sql);
        print_r($sql);
        $req->execute();
    }
    catch(PDOException $e){
        print "Erreur !: " . $e->getMessage();
        die();
    }
}

function getStages(){
    try{
        $monPdo = connexionPDO();
        $req = 'SELECT * FROM stages;';
        $res = $monPdo->query($req);
        $lesLignes = $res->fetchAll();
        return $lesLignes;
    } 
    catch (PDOException $e){
        print "Erreur !: " . $e->getMessage();
        die();
    }
}

function getStagesByNum($num){
    try{
        $monPdo = connexionPDO();
        $req = 'SELECT * FROM stages WHERE ID='.$num.';';
        $res = $monPdo->query($req);
        $lesLignes = $res->fetch();
        return $lesLignes;
    } 
    catch (PDOException $e){
        print "Erreur !: " . $e->getMessage();
        die();
    }
}

function createTarif($code,$Libellé,$Semaine,$Lundi_mat,$Lundi_apr,$Mardi_mat,$Mardi_apr,$Mercredi_mat,$Mercredi_apr,$Jeudi_mat,$Jeudi_apr,$Vendredi_mat,$Vendredi_apr,$Samedi_mat,$Samedi_apr,$Dimanche_mat,$Dimanche_apr){
    try{
        $monPdo = connexionPDO();
        $req = $monPdo->prepare('INSERT INTO tarif_stage (Code,Libellé,Semaine,Lundi_mat,Lundi_apr,Mardi_mat,Mardi_apr,Mercredi_mat,Mercredi_apr,Jeudi_mat,Jeudi_apr,Vendredi_mat,Vendredi_apr,Samedi_mat,Samedi_apr,Dimanche_mat,Dimanche_apr) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);');
        $res=$req->execute(array($code,$Libellé,$Semaine,$Lundi_mat,$Lundi_apr,$Mardi_mat,$Mardi_apr,$Mercredi_mat,$Mercredi_apr,$Jeudi_mat,$Jeudi_apr,$Vendredi_mat,$Vendredi_apr,$Samedi_mat,$Samedi_apr,$Dimanche_mat,$Dimanche_apr));
    }
    catch(PDOException $e){
        print "Erreur !: " . $e->getMessage();
        die();
    }
}

function getTarifsStage(){
    try{
        $monPdo = connexionPDO();
        $req = 'SELECT * FROM tarif_stage;';
        $res = $monPdo->query($req);
        $lesLignes = $res->fetchAll();
        return $lesLignes;
    } 
    catch (PDOException $e){
        print "Erreur !: " . $e->getMessage();
        die();
    }
}

function modifierTarifStage(){
    try{
        $monPdo = connexionPDO();
        $req = $monPdo->prepare("UPDATE tarif_stage SET 
        Code=:Code,
        Libellé=:Libelle,
        Lundi_mat=:Lundi_mat,
        Lundi_apr=:Lundi_apr,
        Mardi_mat=:Mardi_mat,
        Mardi_apr=:Mardi_apr,
        Mercredi_mat=:Mercredi_mat,
        Mercredi_apr=:Mercredi_apr,
        Jeudi_mat=:Jeudi_mat,
        Jeudi_apr=:Jeudi_apr,
        Vendredi_mat=:Vendredi_mat,
        Vendredi_apr=:Vendredi_apr,
        Samedi_mat=:Samedi_mat,
        Samedi_apr=:Samedi_apr,
        Dimanche_mat=:Dimanche_mat,
        Dimanche_apr=:Dimanche_apr, 
        Semaine=:Semaine WHERE Numéro =:Num;");
        for($i=0;$i<count($_POST['Numéro']);$i++){
            $res=$req->execute(array(
                'Num'=> $_POST['Numéro'][$i],
                'Code'=> $_POST['Code'][$i],
                'Libelle'=> $_POST['Libellé'][$i],
                'Lundi_mat'=> $_POST['Lundi_mat'][$i],
                'Lundi_apr'=> $_POST['Lundi_apr'][$i],
                'Mardi_mat'=> $_POST['Mardi_mat'][$i],
                'Mardi_apr'=> $_POST['Mardi_apr'][$i],
                'Mercredi_mat'=> $_POST['Mercredi_mat'][$i],
                'Mercredi_apr'=> $_POST['Mercredi_apr'][$i],
                'Jeudi_mat'=> $_POST['Jeudi_mat'][$i],
                'Jeudi_apr'=> $_POST['Jeudi_apr'][$i],
                'Vendredi_mat'=> $_POST['Vendredi_mat'][$i],
                'Vendredi_apr'=> $_POST['Vendredi_apr'][$i],
                'Samedi_mat'=> $_POST['Samedi_mat'][$i],
                'Samedi_apr'=> $_POST['Samedi_apr'][$i],
                'Dimanche_mat'=> $_POST['Dimanche_mat'][$i],
                'Dimanche_apr'=> $_POST['Dimanche_apr'][$i],
                'Semaine'=> $_POST['Semaine'][$i]
                )
            );
        }
        
    return $res;
    }
    catch (PDOException $e){
        print "Erreur !: " . $e->getMessage();
        die();
    }
}

function getTarifsStageByNum($num){
    try{
        $monPdo = connexionPDO();
        $req = 'SELECT * FROM tarif_stage WHERE Numéro='.$num.';';
        $res = $monPdo->query($req);
        $lesLignes = $res->fetch();
        return $lesLignes;
    } 
    catch (PDOException $e){
        print "Erreur !: " . $e->getMessage();
        die();
    }
}

function sortDate($date1,$date2) {
    return strtotime($date1) - strtotime($date2);
}

function addParticipant(){
    extract($_POST);
    $monPdo = connexionPDO();
    
    if(!participantExist($Nom,$Prénom,$Date_Naissance,$numLicencié)){
        if($Valider=='Licencié'){
            $req = $monPdo->prepare('INSERT INTO participants_stage (Numéro_licencie) values (?);');
            $res=$req->execute(array($numLicencié));
        }
        elseif($Valider=='NonLicencié'){
            $req = $monPdo->prepare('INSERT INTO participants_stage (Nom, Prenom,Tel_mobile,Email,Date_Naissance) values (?,?,?,?,?);');
            $res=$req->execute(array($Nom,$Prénom,$Tel_mobile,$Email,$Date_Naissance));
        } 
        $id = $req->lastInsertId();   
    }
    else{
        if($Valider=='Licencié'){
            $participant = getParticipantByNumLicencié($numLicencié);
        }
        elseif($Valider=='NonLicencié'){
            $participant = getParticipantByNomPrenomDate($Nom,$Prénom,$Date_Naissance);
        } 
        $id = $participant['Numéro'];
    }
    if(!ifAlreadyAddInThisStage($id,$Stage)){
        $req = $monPdo->prepare('INSERT INTO participation_stage (Numéro_participant,Numéro_stage) values (?,?);');
        $res=$req->execute(array($id,$Stage));
    }
    else{
        echo'
        <div></div>
        <script>
        Notify.error({ 
            title: "Impossible d\'ajouter le participant", 
            description: "Ce participant fait déjà parti de ce stage!", 
            duration: 4000
        });
        setTimeout(() =>{ window.history.back(); }, 3200);
        </script>';
    }
}

function getParticipants(){
    try{
        $monPdo = connexionPDO();
        $req = 'SELECT * FROM participants_stage;';
        $res = $monPdo->query($req);
        $lesLignes = $res->fetchAll();
        return $lesLignes;
    } 
    catch (PDOException $e){
        print "Erreur !: " . $e->getMessage();
        die();
    }
}

function getParticipantsInStage(){
    try{
        $monPdo = connexionPDO();
        $req = 'SELECT * FROM participation_stage;';
        $res = $monPdo->query($req);
        $lesLignes = $res->fetchAll();
        return $lesLignes;
    } 
    catch (PDOException $e){
        print "Erreur !: " . $e->getMessage();
        die();
    }
}

function getParticipantsByNum($num){
    try{
        $monPdo = connexionPDO();
        $req = 'SELECT * FROM participants_stage WHERE Numéro='.$num.';';
        $res = $monPdo->query($req);
        $lesLignes = $res->fetch();
        return $lesLignes;
    } 
    catch (PDOException $e){
        print "Erreur !: " . $e->getMessage();
        die();
    }
}

function getParticipantByNumLicencié($num){
    try{
        $monPdo = connexionPDO();
        $req = 'SELECT * FROM participants_stage WHERE Numéro_licencie='.$num.';';
        $res = $monPdo->query($req);
        $lesLignes = $res->fetch();
        return $lesLignes;
    } 
    catch (PDOException $e){
        print "Erreur !: " . $e->getMessage();
        die();
    }
}

function participantExist($nom,$prenom,$Date_Naissance,$num){
    if($num!=""){
        try{
            $monPdo = connexionPDO();
            $req = 'SELECT * FROM participants_stage WHERE Numéro_licencie='.$num.';';
            $res = $monPdo->query($req);
            $laLignes = $res->fetch();
        }
        catch (PDOException $e){
            print "Erreur !: " . $e->getMessage();
            die();
        }
        if($laLignes!=""){
            return true;
        }
        else{
            return false;
        }            
    }
    else{
        try{
            $monPdo = connexionPDO();
            $req = 'SELECT * FROM participants_stage WHERE Nom=\''.$nom.'\' AND Prenom=\''.$prenom.'\' AND Date_Naissance=\''.$Date_Naissance.'\';';
            $res = $monPdo->query($req);
            $laLignes = $res->fetch();
            if($laLignes!=""){
                return true;
            }
            else{
                return false;
            }
        }
        catch (PDOException $e){
            print "Erreur !: " . $e->getMessage();
            die();
        }
    }
}

function ifAlreadyAddInThisStage($id,$Stage){
    try{
        $monPdo = connexionPDO();
        $req = 'SELECT * FROM participation_stage WHERE Numéro_participant='.$id.' AND Numéro_stage='.$Stage.';';
        $res = $monPdo->query($req);
        $laLignes = $res->fetch();
    }
    catch (PDOException $e){
        print "Erreur !: " . $e->getMessage();
        die();
    }
    if($laLignes!=""){
        return true;
    }
    else{
        return false;
    }
}

function getParticipantByNomPrenomDate($nom,$prenom,$Date_Naissance){
    $monPdo = connexionPDO();
    $req = 'SELECT * FROM participants_stage WHERE Nom=\''.$nom.'\' AND Prenom=\''.$prenom.'\' AND Date_Naissance=\''.$Date_Naissance.'\';';
    $res = $monPdo->query($req);
    $laLigne = $res->fetch();
    return $laLigne;
}
?>