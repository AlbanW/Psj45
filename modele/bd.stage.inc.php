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

        $i = 0;
        $sql = 'UPDATE stages SET ';
        foreach ($dateArr as $d) {
            $i++;
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
function deleteOperation($licencie, $part)
{
    try {
        $monPdo = connexionPDO();
        $req= $monPdo->prepare("DELETE FROM opérations_compte_stage WHERE NuméroLicencié = ? AND NuméroStage = ?");
        $req->execute([
            $licencie, $part
        ]);
    } catch(PDOException $e)
    {
        print "Erreur!";
        die();
    }
}
function insertOperation($licencie, $tarif, $codeTarif, $nomStage, $numStage)
{
    if(!ifAlreadyAddInThisStage( $licencie['Numéro'] , $numStage )){
        try {
            $monPdo = connexionPDO();
            $req= $monPdo->prepare("INSERT INTO opérations_compte_stage (NuméroLicencié,NuméroStage, Famille,Prénom,Code_opération,Libellé_libre_opération,Date_opération,Débit)
            values(?, ?, ?, ?, ?, ?, now(), ?)");
            $req->execute([
                $licencie['Numéro'], $numStage, $licencie['Famille'], $licencie['Prénom_licencié'], $codeTarif, $nomStage, $tarif  
            ]);
        } catch(PDOException $e)
        {
            print "Erreur!";
            die();
        }
    }
}

function calculStageTarif($data, $tarif)
{
    try {   
        $input = [
            $tarif['Semaine'],
            $tarif['Lundi_mat'], $tarif['Lundi_apr'],
            $tarif['Mardi_mat'], $tarif['Mardi_apr'],
            $tarif['Mercredi_mat'], $tarif['Mercredi_apr'],
            $tarif['Jeudi_mat'], $tarif['Jeudi_apr'],
            $tarif['Vendredi_mat'], $tarif['Vendredi_apr'],
            $tarif['Samedi_mat'], $tarif['Samedi_apr'],
            $tarif['Dimanche_mat'], $tarif['Dimanche_apr']
        ];

        $tarif = 0;
        for($i = 0; $i <= 14; $i++)
        {
            $tarif += ($data[$i] * $input[$i]);
        }
        return $tarif;
    } catch(PDOException $e)
    {
        print "Erreur!";
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

function addParticipant($data){
    extract($_POST);
    $monPdo = connexionPDO();
    
    $id = $_POST['licencié'];
    if(!ifAlreadyAddInThisStage($id,$Stage)){
        $req = $monPdo->prepare('INSERT INTO participation_stage (Numéro_participant,Numéro_stage, complet, l_m, l_a, ma_m, ma_a, mer_m, mer_a, jeudi_m, jeudi_a, vendredi_m, vendredi_a, samedi_m, samedi_a, dimanche_m, dimanche_a) values (?,?, ?, ?, ?, ?,?,?,?,?,?,?,?,?,?,?,?);');
        $res=$req->execute([
            $id,$Stage, $data[0],
            $data[1], $data[2],
            $data[3], $data[4],
            $data[5], $data[6],
            $data[7], $data[8],
            $data[9], $data[10],
            $data[11], $data[12],
            $data[13], $data[14]
        ]);
    } else{
        echo'
        <div></div>
        <script>
        Notify.error({ 
            title: "Impossible d\'ajouter le participant", 
            description: "Ce participant fait déjà parti de ce stage!", 
            duration: 4000
        });
        </script>';
    }
}


function deleteParticipation($num)
{
    $monPdo = connexionPDO();
    $req = $string = 'DELETE FROM participation_stage WHERE Numéro = '.$num.';';
    $res=$monPdo->query($req);
}
function modifierParticipant($data, $id, $lic){
    extract($_POST);
        $monPdo = connexionPDO();
        $req = $string = 'UPDATE participation_stage SET complet = '.$data[0].' , l_m = '.$data[1].', l_a = '.$data[2].', ma_m = '.$data[3].', ma_a = '.$data[4].', mer_m = '.$data[5].', mer_a = '.$data[6].', jeudi_m = '.$data[7].', jeudi_a = '.$data[8].', vendredi_m = '.$data[9].', vendredi_a = '.$data[10].', samedi_m = '.$data[11].', samedi_a = '.$data[12].', dimanche_m = '.$data[13].', dimanche_a = '.$data[14].' WHERE Numéro = '.$id.';';
        $res=$monPdo->query($req);
    }
    function modifierStage($nom, $tarif, $id)
    {
            $monPdo = connexionPDO();
            $req = $string = 'UPDATE stages SET Libellé = "'.$nom.'" , Num_Tarif = "'.$tarif.'" WHERE ID = "'.$id.'";';
            $res=$monPdo->query($req);
    }

function getParticipants(){
    try{
        $monPdo = connexionPDO();
        $req = '
            SELECT * FROM participation_stage
                INNER JOIN licencié ON licencié.Numéro = participation_stage.Numéro_participant
                INNER JOIN stages ON stages.ID = participation_stage.Numéro_stage
                GROUP BY Numéro_participant
            ;
        ';
        $res = $monPdo->query($req);
        $lesLignes = $res->fetchAll();
        return $lesLignes;
    } 
    catch (PDOException $e){
        print "Erreur !: " . $e->getMessage();
        die();
    }
}

function getLesOpérationsStage($num)
	{
		try 
		{
        $monPdo = connexionPDO();
		$req = 'SELECT * FROM opérations_compte_stage WHERE NuméroLicencié="'.$num.'" order by Numéro;'; 
		$res = $monPdo->query($req);
		$lesLignes = $res->fetchAll();
		return $lesLignes;
		} 
		catch (PDOException $e) 
		{
        print "Erreur !: " . $e->getMessage();
        die();
		}
	}

    
    function getStageCredit($num)
	{
		try 
		{
        $monPdo = connexionPDO();
		$req = 'SELECT Crédit FROM opérations_compte_stage WHERE Crédit != 0 AND NuméroLicencié="'.$num.'"  order by Numéro;'; 
		$res = $monPdo->query($req);
		$lesLignes = $res->fetchAll();
        $credit = 0;
        foreach($lesLignes as $ligne)
        {
            $credit += $ligne[0];
        }
		return $credit;
		} 
		catch (PDOException $e) 
		{
        print "Erreur !: " . $e->getMessage();
        die();
		}
	}

    function getStageDebit($num)
	{
		try 
		{
        $monPdo = connexionPDO();
		$req = 'SELECT Débit FROM opérations_compte_stage WHERE Débit != 0 AND NuméroLicencié="'.$num.'"  order by Numéro;'; 
		$res = $monPdo->query($req);
		$lesLignes = $res->fetchAll();
        $debit = 0;
        foreach($lesLignes as $ligne)
        {
            $debit += $ligne[0];
        }
		return $debit;
		} 
		catch (PDOException $e) 
		{
        print "Erreur !: " . $e->getMessage();
        die();
		}
	}

function getParticipantsInStage($id){
    try{
        $monPdo = connexionPDO();
        $req = '
        SELECT * FROM participation_stage 

        INNER JOIN licencié ON licencié.Numéro = participation_stage.Numéro_participant

        WHERE Numéro_stage = ?;'
        
        ;
        $res = $monPdo->prepare($req);
        $res->execute([$id]);
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
        $req = '
        SELECT * FROM participation_stage
            INNER JOIN licencié ON licencié.Numéro = participation_stage.Numéro_participant
            INNER JOIN stages ON stages.ID = participation_stage.Numéro_stage
            WHERE licencié.Numéro = '.$num.';';

        $res = $monPdo->query($req);
        $lesLignes = $res->fetch();
        return $lesLignes;
    } 
    catch (PDOException $e){
        print "Erreur !: " . $e->getMessage();
        die();
    }
}


function getUneParticipation($num){
    try{
        $monPdo = connexionPDO();
        $req = 'SELECT * FROM participation_stage WHERE Numéro='.$num.';';
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