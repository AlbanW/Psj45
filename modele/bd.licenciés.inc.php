<?php
include_once 'bd.inc.php';
date_default_timezone_set('Europe/Paris');

    /*fonction qui SELECTionne les licenciés ordonnés par $value dans formulaire liste licencié*/
	function getLicenciés($value,$S)
	{
		try{
            $monPdo = connexionPDO();
            $req = 'SELECT * FROM licencié order by '.$value.' '.$S.';';
            $res = $monPdo->query($req);
            $lesLignes = $res->fetchAll();
            return $lesLignes;
		} 
		catch (PDOException $e){
            print "Erreur !: " . $e->getMessage();
            die();
		}
	}

    /*fonction qui selectionne le liecncié qu'on a selectionné pour formulaire licencié2*/
	function getLicenciésTri()
    {
        try 
        {
        $monPdo = connexionPDO();
		$req= "select * from licencié where Numéro = '".$_GET['numero']."'";
		$res = $monPdo->query($req);
        return $res;
        }
        catch (PDOException $e) 
        {
        print "Erreur !: " . $e->getMessage();
        die();
        }
    }
		
	/*fonction qui ajoute un licencié et les opérations qui découlent de l'inscription du licencié dans formulaire création licencié*/
	function creerLicencie($famille,$nom,$prenom,$sexe,$dateNaiss,$telMob,$telDom,$telTrav,$emailPerso,$emailTrav,$cat1,$typeLic,$inscri,$DateInscri,
	$natio,$competIndiv,$SJR,$certificat,$bureau,$unLic,$autreClub,$essai,$handicap,$stage,$demi,$licGratuite,$equipeSenior,$photoVideo, $partenaire, $divers, $babyPing, $women)
    {
        try 
        {
            $monPdo = connexionPDO();

            $req =("SELECT * FROM famille WHERE Nom_Famille='$famille'");
            $res = $monPdo->query($req);
            $fam = $res->fetch();
            $_SESSION['famNum'] = $fam['Numéro'];
            if($fam==""){
                /* ajoute dans la table famille la famille en majuscule*/
                $req =("INSERT INTO famille (Nom_famille) values(UPPER('$famille'))");
                $res = $monPdo->exec($req);
            }
            /*insère un licencié dans la table licencié*/
            $req = $monPdo->prepare("insert into licencié (Famille,Nom_licencié,Prénom_licencié,Sexe,Date_Naissance,Tel_mobile,Tel_domicile,Tel_travail,Email_perso,
            Email_travail,Catégorie_1,Type_licence,Inscription,Date_inscription,Nationalité,Participation_compétition_individuelle,Saint_Jean_de_la_Ruelle,
            Certificat_médical,Membre_bureau,1ere_licence,Autre_club,Essai,Handicap,Stage_uniquement,Demie_tarif,Licence_gratuite,Participation_équipe_sénior,
            Autorisation_photo_vidéo, PARTENAIRE, DIVERS, BABY_PING, WOMEN)
            values (UPPER(?),UPPER(?),UPPER(?),?,?,?,?,?,UPPER(?),UPPER(?),?,?,?,?,UPPER(?),?,?,?,?,?,?,?,?,?,?,?,?,?, ?, ?, ?, ?)");
            $res=$req->execute(array($famille,$nom,$prenom,$sexe,$dateNaiss,$telMob,$telDom,$telTrav,$emailPerso,$emailTrav,$cat1,$typeLic,$inscri,$DateInscri,
            $natio,$competIndiv,$SJR,$certificat,$bureau,$unLic,$autreClub,$essai,$handicap,$stage,$demi,$licGratuite,$equipeSenior,$photoVideo, $partenaire, $divers, $babyPing, $women));
            


            /*si la checkBox inscription est cochée et qu'il y a une date d'inscription, la série de requête se lance*/
            if($inscri==1 && $DateInscri!= ""){
            
                /*si la licence est de type 'TRADI'*/
                if ($typeLic=='TRADI'){
                    /*SELECTionne le dernier licencié créé grace à son numéro ordonné par ordre décroissant et stocke le résultat dans une variable $num*/
                    $num = getLicenciésNum($prenom,$famille);
                
                    /*SELECTionne le tarif de la licence 'TRADI' en fonction de la catégorie du licencié et stocke le résultat dans une variable $tarif*/
                    $req= "SELECT Tarif FROM licencié INNER JOIN paramètre_catégorie ON licencié.Catégorie_1 = paramètre_catégorie.Catégorie, 
                    (tarif INNER JOIN paramètre_catégorie AS paramètre_catégorie1 ON tarif.Critère_mini = paramètre_catégorie1.Catégorie) 
                    INNER JOIN paramètre_catégorie AS paramètre_catégorie2 ON tarif.Critère_maxi = paramètre_catégorie2.Catégorie
                    WHERE (((tarif.Code)='LIC-TRADI') AND licencié.Numéro='".$num."' AND ((paramètre_catégorie.Numéro_catégorie)>=paramètre_catégorie1.Numéro_catégorie 
                    AND (paramètre_catégorie.Numéro_catégorie)<=paramètre_catégorie2.Numéro_catégorie))";
                    $res = $monPdo->query($req);
                    $tarif = $res->fetch();
                    
                    /*SELECTionne le code de la table tarif quand le code s'appel 'LIC-TRADI' et stocke le résultat dans une variable $code*/
                    $req= "SELECT Code FROM tarif WHERE Code like 'LIC-TRADI'";
                    $res = $monPdo->query($req);
                    $code = $res->fetch();
                    
                    /*SELECTionne le tarif de la majoration externe de la table tarif quand le code s'appel 'LIC-TRADI' et stocke le résultat dans une variable $major*/
                    $req= "SELECT Majoration_externe FROM tarif WHERE Code like 'LIC-TRADI'";
                    $res = $monPdo->query($req);
                    $major = $res->fetch();

                    if($women)
                    {
                        $num = getLicenciésNum($prenom,$famille);
                
                        /*SELECTionne le tarif de la licence 'TRADI' en fonction de la catégorie du licencié et stocke le résultat dans une variable $tarif*/
                        $req= "SELECT Tarif FROM licencié INNER JOIN paramètre_catégorie ON licencié.Catégorie_1 = paramètre_catégorie.Catégorie, 
                        (tarif INNER JOIN paramètre_catégorie AS paramètre_catégorie1 ON tarif.Critère_mini = paramètre_catégorie1.Catégorie) 
                        INNER JOIN paramètre_catégorie AS paramètre_catégorie2 ON tarif.Critère_maxi = paramètre_catégorie2.Catégorie
                        WHERE (((tarif.Code)='WOMEN-TRADI') AND licencié.Numéro='".$num."' AND ((paramètre_catégorie.Numéro_catégorie)>=paramètre_catégorie1.Numéro_catégorie 
                        AND (paramètre_catégorie.Numéro_catégorie)<=paramètre_catégorie2.Numéro_catégorie))";
                        $res = $monPdo->query($req);
                        $tarif = $res->fetch();
                        
                        /*SELECTionne le code de la table tarif quand le code s'appel 'LIC-TRADI' et stocke le résultat dans une variable $code*/
                        $req= "SELECT Code FROM tarif WHERE Code like 'WOMEN-TRADI'";
                        $res = $monPdo->query($req);
                        $code = $res->fetch();
                        
                        /*SELECTionne le tarif de la majoration externe de la table tarif quand le code s'appel 'LIC-TRADI' et stocke le résultat dans une variable $major*/
                        $req= "SELECT Majoration_externe FROM tarif WHERE Code like 'WOMEN-TRADI'";
                        $res = $monPdo->query($req);
                        $major = $res->fetch();
    
                    }
                }
                else{
                    /*si la licence est de type 'PROMO'*/
                    if ($typeLic=='PROMO'){
                    /*SELECTionne le dernier licencié créé grace à son numéro ordonné par ordre décroissant et stocke le résultat dans une variable $num*/
                    $num = getLicenciésNum($prenom,$famille);
                    
                    /*SELECTionne le tarif de la licence 'PROMO' en fonction de la catégorie du licencié et stocke le résultat dans une variable $tarif*/
                    $req="SELECT Tarif FROM licencié INNER JOIN paramètre_catégorie ON licencié.Catégorie_1 = paramètre_catégorie.Catégorie, 
                    (tarif INNER JOIN paramètre_catégorie AS paramètre_catégorie1 ON tarif.Critère_mini = paramètre_catégorie1.Catégorie) 
                    INNER JOIN paramètre_catégorie AS paramètre_catégorie2 ON tarif.Critère_maxi = paramètre_catégorie2.Catégorie
                    WHERE (((tarif.Code)='LIC-PROMO') AND licencié.Numéro='".$num."' AND ((paramètre_catégorie.Numéro_catégorie)>=paramètre_catégorie1.Numéro_catégorie 
                    AND (paramètre_catégorie.Numéro_catégorie)<=paramètre_catégorie2.Numéro_catégorie))";
                    $res = $monPdo->query($req);
                    $tarif = $res->fetch();
                    
                    /*SELECTionne le code de la table tarif quand le code s'appel 'LIC-PROMO' et stocke le résultat dans une variable $code*/
                    $req= "SELECT Code FROM tarif WHERE Code like 'LIC-PROMO'";
                    $res = $monPdo->query($req);
                    $code = $res->fetch();
                    
                    /*SELECTionne le tarif de la majoration externe de la table tarif quand le code s'appel 'LIC-PROMO' et stocke le résultat dans une variable $major*/
                    $req= "SELECT Majoration_externe FROM tarif WHERE Code like 'LIC-PROMO'";
                    $res = $monPdo->query($req);
                    $major = $res->fetch();

                    if($women)
                    {
                        $num = getLicenciésNum($prenom,$famille);
                
                        /*SELECTionne le tarif de la licence 'PROMO' en fonction de la catégorie du licencié et stocke le résultat dans une variable $tarif*/
                        $req= "SELECT Tarif FROM licencié INNER JOIN paramètre_catégorie ON licencié.Catégorie_1 = paramètre_catégorie.Catégorie, 
                        (tarif INNER JOIN paramètre_catégorie AS paramètre_catégorie1 ON tarif.Critère_mini = paramètre_catégorie1.Catégorie) 
                        INNER JOIN paramètre_catégorie AS paramètre_catégorie2 ON tarif.Critère_maxi = paramètre_catégorie2.Catégorie
                        WHERE (((tarif.Code)='WOMEN-PROMO') AND licencié.Numéro='".$num."' AND ((paramètre_catégorie.Numéro_catégorie)>=paramètre_catégorie1.Numéro_catégorie 
                        AND (paramètre_catégorie.Numéro_catégorie)<=paramètre_catégorie2.Numéro_catégorie))";
                        $res = $monPdo->query($req);
                        $tarif = $res->fetch();
                        
                        /*SELECTionne le code de la table tarif quand le code s'appel 'LIC-TRADI' et stocke le résultat dans une variable $code*/
                        $req= "SELECT Code FROM tarif WHERE Code like 'WOMEN-PROMO'";
                        $res = $monPdo->query($req);
                        $code = $res->fetch();
                        
                        /*SELECTionne le tarif de la majoration externe de la table tarif quand le code s'appel 'LIC-TRADI' et stocke le résultat dans une variable $major*/
                        $req= "SELECT Majoration_externe FROM tarif WHERE Code like 'WOMEN-PROMO'";
                        $res = $monPdo->query($req);
                        $major = $res->fetch();
    
                    }
                    }
                }
            
                /* si la checkBox membre bureau est cochée, ça SELECTionne le tarif, le code et la majoration externe de la table tarif quand le code s'appel 'LIC-BUR'
                et stocke les résultats dans des variables*/
                if($bureau==1){
                    $req="SELECT Tarif FROM tarif WHERE Code like 'LIC-BUR'";
                    $res = $monPdo->query($req);
                    $tarif = $res->fetch();
                    $req= "SELECT Code FROM tarif WHERE Code like 'LIC-BUR'";
                    $res = $monPdo->query($req);
                    $code = $res->fetch();
                    $req= "SELECT Majoration_externe FROM tarif WHERE Code like 'LIC-BUR'";
                    $res = $monPdo->query($req);
                    $major = $res->fetch();
                }
                if($babyPing==1){
                    $req="SELECT Tarif FROM tarif WHERE Code like 'BABY_PING'";
                    $res = $monPdo->query($req);
                    $tarif = $res->fetch();
                    $req= "SELECT Code FROM tarif WHERE Code like 'BABY_PING'";
                    $res = $monPdo->query($req);
                    $code = $res->fetch();
                    $req= "SELECT Majoration_externe FROM tarif WHERE Code like 'BABY_PING'";
                    $res = $monPdo->query($req);
                    $major = $res->fetch();
                }
            
                
                if($divers==1){
                    $req="SELECT Tarif FROM tarif WHERE Code like 'DIVERS'";
                    $res = $monPdo->query($req);
                    $tarif = $res->fetch();
                    $req= "SELECT Code FROM tarif WHERE Code like 'DIVERS'";
                    $res = $monPdo->query($req);
                    $code = $res->fetch();
                    $req= "SELECT Majoration_externe FROM tarif WHERE Code like 'DIVERS'";
                    $res = $monPdo->query($req);
                    $major = $res->fetch();
                }
            

                
                if($partenaire==1){
                    $req="SELECT Tarif FROM tarif WHERE Code like 'PARTENAIRE'";
                    $res = $monPdo->query($req);
                    $tarif = $res->fetch();
                    $req= "SELECT Code FROM tarif WHERE Code like 'PARTENAIRE'";
                    $res = $monPdo->query($req);
                    $code = $res->fetch();
                    $req= "SELECT Majoration_externe FROM tarif WHERE Code like 'PARTENAIRE'";
                    $res = $monPdo->query($req);
                    $major = $res->fetch();
                }

            
                /* si la checkBox 1ere licence est cochée, ça SELECTionne le tarif, le code et la majoration externe de la table tarif quand le code s'appel 'LIC-L1'
                et stocke les résultats dans des variables*/
                if ($unLic==1){
                    $req="SELECT Tarif FROM tarif WHERE Code like 'LIC-L1'";
                    $res = $monPdo->query($req);
                    $tarif = $res->fetch();
                    $req= "SELECT Code FROM tarif WHERE Code like 'LIC-L1'";
                    $res = $monPdo->query($req);
                    $code = $res->fetch();
                    $req= "SELECT Majoration_externe FROM tarif WHERE Code like 'LIC-L1'";
                    $res = $monPdo->query($req);
                    $major = $res->fetch();
                }
                
                /* si la checkBox autre club est cochée, ça SELECTionne le tarif, le code et la majoration externe de la table tarif quand le code s'appel 'LIC-AC' 
                et stocke les résultats dans des variables*/
                if ($autreClub==1){
                    $req="SELECT Tarif FROM tarif WHERE Code like 'LIC-AC'";
                    $res = $monPdo->query($req);
                    $tarif = $res->fetch();
                    $req= "SELECT Code FROM tarif WHERE Code like 'LIC-AC'";
                    $res = $monPdo->query($req);
                    $code = $res->fetch();
                    $req= "SELECT Majoration_externe FROM tarif WHERE Code like 'LIC-AC'";
                    $res = $monPdo->query($req);
                    $major = $res->fetch();
                }
            
                /* si la checkBox essai est cochée, ça SELECTionne le tarif, le code et la majoration externe de la table tarif quand le code s'appel 'LIC-ESS' 
                et stocke les résultats dans des variables*/
                if ($essai==1){
                    $req="SELECT Tarif FROM tarif WHERE Code like 'LIC-ESS'";
                    $res = $monPdo->query($req);
                    $tarif = $res->fetch();
                    $req= "SELECT Code FROM tarif WHERE Code like 'LIC-ESS'";
                    $res = $monPdo->query($req);
                    $code = $res->fetch();
                    $req= "SELECT Majoration_externe FROM tarif WHERE Code like 'LIC-ESS'";
                    $res = $monPdo->query($req);
                    $major = $res->fetch();
                }
            
                /* insère dans la table opérations_compte_famille une ligne de débit avec les informations stockées dans les variables*/
                $numéro = getLicenciésNum($prenom,$famille);
                $req=("INSERT INTO opérations_compte_famille (NuméroLicencié,Famille,Prénom,Code_opération,Libellé_libre_opération,Date_opération,Débit)
                values($numéro,UPPER('$famille'),'$prenom','$code[Code]','Licence $famille $prenom',now(),$tarif[Tarif])");
                $res = $monPdo->exec($req);
                
                /* si la checkBox saint jean de la ruelle n'est pas cochée, ça insère dans la table opérations_compte_famille une ligne de débit supplémentaire avec 
                la majoration externe correspondant au type de licence et les informations stockées dans les variables*/
                if($SJR!=1){
                    $req=("INSERT INTO opérations_compte_famille (NuméroLicencié,Famille,Prénom,Code_opération,Libellé_libre_opération,Date_opération,Débit)
                    values($numéro,UPPER('$famille'),'$prenom','$code[Code]','Licence $famille $prenom hors St Jean',now(),$major[Majoration_externe])");
                    $res = $monPdo->exec($req);
                }
            
                /* SELECTionne le nombre de licencié pour une famille qui sont incrit et ont une date d'insciption et stocke le résultat dans une variable $nbrLic*/
                $req="SELECT count(Prénom_licencié) FROM licencié WHERE Famille='".$famille."' and Inscription=1 and Date_inscription!=''";
                $res = $monPdo->query($req);
                $nbrLic = $res->fetch();
            
                /* SELECTionne le taux montant remise club de la table tarif quand le code s'appel 'LIC-R' et que le critère mini est égal au nombre licencié d'une 
                même famille qui sont inscrit et ont une date d'inscription et stocke le résultat dans une variable $tauxRemise*/
                $req="SELECT Taux_montant_remise_club FROM tarif WHERE Code='LIC-R' and Critère_mini='".$nbrLic['count(Prénom_licencié)']."'";
                $res = $monPdo->query($req);
                $tauxRemise = $res->fetch();
            
                /* SELECTionne le nom service de la table tarif quand le code s'appel 'LIC-R' et que le critère mini est égal au nombre licencié d'une même famille
                qui sont inscrit et ont une date d'inscription et stocke le résultat dans une variable $NomServRem*/
                $req="SELECT Nom_service FROM tarif WHERE Code='LIC-R' and Critère_mini='".$nbrLic['count(Prénom_licencié)']."'";
                $res = $monPdo->query($req);
                $NomServRem = $res->fetch();
            
                /* supprime la dernière ligne d'opération quand le code opération s'appel 'LIC-REM' pour qu'une seule remise en fonction du nombre de licencié dans
                une même famille soit comptabilisée*/
                $req="DELETE FROM opérations_compte_famille WHERE Code_opération = 'LIC-REM' and Famille='".$famille."'";
                $req = $monPdo->query($req);
            
                if($tauxRemise['Taux_montant_remise_club']>0){
                    $numéro = getLicenciésNum($prenom,$famille);
                    $req=("insert into opérations_compte_famille (NuméroLicencié,Famille,Prénom,Code_opération,Libellé_libre_opération,Date_opération,Crédit)
                    values($numéro,UPPER('$famille'),'$prenom','LIC-REM','$NomServRem[Nom_service] $famille',now(),'$tauxRemise[Taux_montant_remise_club]')");
                    $res = $monPdo->exec($req);
                }
                
                /* SELECTionne le tarif de la table tarif quand le code s'appel 'CI' et stocke le résultat dans une variable $tarifCompetIndiv*/
                $req="SELECT Tarif FROM tarif WHERE Code='CI'";
                $res = $monPdo->query($req);
                $tarifCompetIndiv = $res->fetch();
            
                /* SELECTionne le nom service de la table tarif quand le code s'appel 'CI' et stocke le résultat dans une variable $NomServCI*/
                $req= "SELECT Nom_service FROM tarif WHERE Code = 'CI'";
                $res = $monPdo->query($req);
                $NomServCI = $res->fetch();
            
                /* si la checkBox compétition individuelle est cochée, ça insère dans la table opérations_compte_famille les informations stockées dans les 
                variables précédente*/
                if($competIndiv==1){
                    $numéro = getLicenciésNum($prenom,$famille);
                    $req=("insert into opérations_compte_famille (NuméroLicencié,Famille,Prénom,Code_opération,Libellé_libre_opération,Date_opération,Débit)
                    values($numéro,UPPER('$famille'),'$prenom','$NomServCI[Nom_service]','$NomServCI[Nom_service] $famille $prenom',now(),'$tarifCompetIndiv[Tarif]')");
                    $res = $monPdo->exec($req);
                }
            }
 
        }
        catch (PDOException $e) 
        {
            //header("location:javascript://history.go(-1)");
            echo $e;
            die();
        }
    }
	
	/*fonction qui modifie un licencié dans formulaire licencié*/
	function modifierLicencie()
    {
        $now = date('Y-m-d\TH:i:s.uP', time());

        try{
            $monPdo = connexionPDO();
            if($_REQUEST['Catégorie_1']=="auto"){
                $origin = date_create($now);
                $target = date_create($_POST['Date_Naissance']);
                $age = date_diff($origin, $target);
                $cat1 = CalculAgeCat($age->y)['Catégorie1'];
            }
            else{
                $cat1 = $_REQUEST['Catégorie_1'];
            }
            $typeLic = $_REQUEST['Type_licence'];
            if (isset($_POST['Inscription'])){$inscri=1;}else{$inscri=0;}
            if (isset($_POST['Participation_compétition_individuelle'])){$competIndiv=1;}else{$competIndiv=0;}
            if (isset($_POST['Saint_Jean_de_la_Ruelle'])){$SJR=1;}else{$SJR=0;}
            if (isset($_POST['Certificat_médical'])){$certificat=1;}else{$certificat=0;}
            if (isset($_POST['Membre_bureau'])){$bureau=1;}else{$bureau=0;}
            if (isset($_POST['1ere_licence'])){$unLic=1;}else{$unLic=0;}
            if (isset($_POST['Autre_club'])){$autreClub=1;}else{$autreClub=0;}
            if (isset($_POST['Essai'])){$essai=1;}else{$essai=0;}
            if (isset($_POST['Stage_uniquement'])){$stage=1;}else{$stage=0;}
            if (isset($_POST['Demie_tarif'])){$demi=1;}else{$demi=0;}
            if (isset($_POST['Licence_gratuite'])){$licGratuite=1;}else{$licGratuite=0;}
            if (isset($_POST['Participation_équipe_sénior'])){$equipeSenior=1;}else{$equipeSenior=0;}
            if (isset($_POST['Autorisation_photo_vidéo'])){$photoVideo=1;}else{$photoVideo=0;}
            if (isset($_POST['BABY_PING'])){$babyPing=1;}else{$babyPing=0;}
            if (isset($_POST['divers'])){$divers=1;}else{$divers=0;}
            if (isset($_POST['partenaire'])){$partenaire=1;}else{$partenaire=0;}
            if (isset($_POST['women'])){$women=1;}else{$women=0;}

            $req = $monPdo->prepare("UPDATE licencié SET Famille=:fam, Nom_licencié=:nom, Prénom_licencié=:prenom, Sexe=:sexe, Date_Naissance=:dateNaiss,
            Tel_mobile=:tel_mobile, Tel_domicile=:tel_domicile, Tel_travail=:tel_travail, Email_perso=:email_perso, Email_travail=:email_travail, Catégorie_1=:cat1,
            Type_licence=:type_licence,Inscription=:Inscription, Date_inscription=:Date_inscription, Participation_compétition_individuelle=:competIndiv,
            Saint_Jean_de_la_Ruelle=:SJR, Certificat_médical=:certificat, Membre_bureau=:Membre_bureau, 1ere_licence=:1ere_licence, Autre_club=:Autre_club, Essai=:Essai,
            Stage_uniquement=:Stage_uniquement, WOMEN=:women, PARTENAIRE=:partenaire,DIVERS=:divers,  BABY_PING=:babyPing, Demie_tarif=:Demie_tarif, Licence_gratuite=:Licence_gratuite, Participation_équipe_sénior=:equipeSenior, Autorisation_photo_vidéo=:photoVideo WHERE Numéro =:num;");
            $res=$req->execute(array('num'=> $_POST['Numéro'],'fam'=> $_POST['Famille'],'nom'=> $_POST['Nom_licencié'],'prenom'=> $_POST['Prénom_licencié'],
            'sexe'=> $_POST['Sexe'],'dateNaiss'=> $_POST['Date_Naissance'],'tel_mobile'=> $_POST['Tel_mobile'],'tel_domicile'=> $_POST['Tel_domicile'],
            'tel_travail'=> $_POST['Tel_travail'],'email_perso'=> $_POST['Email_perso'],'email_travail'=> $_POST['Email_travail'],'cat1'=> $cat1,
            'type_licence'=> $_POST['Type_licence'],'Inscription'=>$inscri,'Date_inscription'=>$_POST['Date_inscription'],'competIndiv'=>$competIndiv,
            'SJR'=>$SJR,'certificat'=>$certificat,'Membre_bureau'=>$bureau,'1ere_licence'=>$unLic,'Autre_club'=>$autreClub,'Essai'=>$essai,
            'Stage_uniquement'=>$stage,'Demie_tarif'=>$demi,'Licence_gratuite'=>$licGratuite,'equipeSenior'=>$equipeSenior,'babyPing' => $babyPing ,'women' => $women,'partenaire' => $partenaire, 'divers' => $divers,'photoVideo'=>$photoVideo));
            /*si la checkBox inscription est cochée et qu'il y a une date d'inscription, la série de requête se lance*/
            $famille =  $_POST['Famille'];
            $prenom = $_POST['Prénom_licencié'];
            $numéro = getLicenciésNum($prenom,$famille);

            if($inscri==1 && $_POST['Date_inscription']!= ""){
                
                /*suppressions des anciennes infos dans opérations compte sauf pour le type de licence*/
                $req= "SELECT Code_opération FROM opérations_compte_famille WHERE NuméroLicencié=$numéro LIMIT 1";
                $res = $monPdo->query($req);
                $exist = $res->fetch();
                if($exist!=""){
                    $req= "DELETE FROM opérations_compte_famille WHERE NuméroLicencié=$numéro";
                    $res = $monPdo->query($req);
                }

                /*Récupére le type de licence actuelle*/
                $req= "SELECT Code_opération FROM opérations_compte_famille WHERE NuméroLicencié=$numéro AND (Code_opération LIKE '%TRADI%' OR Code_opération LIKE '%WOMEN%' OR Code_opération LIKE '%PROMO%') ORDER BY Numéro DESC LIMIT 1";
                $res = $monPdo->query($req);
                $LastTypeLic = $res->fetch();
                $LastTypeLic = $LastTypeLic['Code_opération'];
                if($LastTypeLic==NULL){
                    $LastTypeLic=" ";
                }

                /*si la licence est de type 'TRADI'*/
                if ($typeLic=='TRADI'){
                    /*SELECTionne le dernier licencié créé grace à son numéro ordonné par ordre décroissant et stocke le résultat dans une variable $num*/
                    $num = getLicenciésNum($prenom,$famille);
                    /*SELECTionne le tarif de la licence 'TRADI' en fonction de la catégorie du licencié et stocke le résultat dans une variable $tarif*/
                    $req= "SELECT Tarif FROM licencié INNER JOIN paramètre_catégorie ON licencié.Catégorie_1 = paramètre_catégorie.Catégorie, 
                    (tarif INNER JOIN paramètre_catégorie AS paramètre_catégorie1 ON tarif.Critère_mini = paramètre_catégorie1.Catégorie) 
                    INNER JOIN paramètre_catégorie AS paramètre_catégorie2 ON tarif.Critère_maxi = paramètre_catégorie2.Catégorie
                    WHERE (((tarif.Code)='LIC-TRADI') AND licencié.Numéro='".$num."' AND ((paramètre_catégorie.Numéro_catégorie)>=paramètre_catégorie1.Numéro_catégorie 
                    AND (paramètre_catégorie.Numéro_catégorie)<=paramètre_catégorie2.Numéro_catégorie))";
                    $res = $monPdo->query($req);
                    $tarif = $res->fetch();
                    
                    /*SELECTionne le code de la table tarif quand le code s'appel 'LIC-TRADI' et stocke le résultat dans une variable $code*/
                    $req= "SELECT Code FROM tarif WHERE Code like 'LIC-TRADI'";
                    $res = $monPdo->query($req);
                    $code = $res->fetch();
                    
                    /*SELECTionne le tarif de la majoration externe de la table tarif quand le code s'appel 'LIC-TRADI' et stocke le résultat dans une variable $major*/
                    $req= "SELECT Majoration_externe FROM tarif WHERE Code like 'LIC-TRADI'";
                    $res = $monPdo->query($req);
                    $major = $res->fetch();

                    if(str_contains($LastTypeLic, 'TRADI')){
                        $tarif="";
                    }
                    elseif(str_contains($LastTypeLic, 'PROMO')){
                        $transition=true;
                    }

                    if($women)
                    {
                            $num = getLicenciésNum($prenom,$famille);
                            $req="SELECT Tarif FROM licencié INNER JOIN paramètre_catégorie ON licencié.Catégorie_1 = paramètre_catégorie.Catégorie, 
                            (tarif INNER JOIN paramètre_catégorie AS paramètre_catégorie1 ON tarif.Critère_mini = paramètre_catégorie1.Catégorie) 
                            INNER JOIN paramètre_catégorie AS paramètre_catégorie2 ON tarif.Critère_maxi = paramètre_catégorie2.Catégorie
                            WHERE (((tarif.Code)='WOMEN-TRADI') AND licencié.Numéro='".$num."' AND ((paramètre_catégorie.Numéro_catégorie)>=paramètre_catégorie1.Numéro_catégorie 
                            AND (paramètre_catégorie.Numéro_catégorie)<=paramètre_catégorie2.Numéro_catégorie))";
                            $res = $monPdo->query($req);
                            $tarif = $res->fetch();
                            
                            $req= "SELECT Code FROM tarif WHERE Code like 'WOMEN-TRADI'";
                            $res = $monPdo->query($req);
                            $code = $res->fetch();
                            
                            $req= "SELECT Majoration_externe FROM tarif WHERE Code like 'WOMEN-TRADI'";
                            $res = $monPdo->query($req);
                            $major = $res->fetch();
    
                            if(str_contains($LastTypeLic, 'TARIF')){
                                $transition=true;
                            }
                            elseif(str_contains($LastTypeLic, 'PROMO')){
                                $tarif="";
                            }
                    }
                }
                elseif($typeLic=='PROMO'){
                    /*SELECTionne le dernier licencié créé grace à son numéro ordonné par ordre décroissant et stocke le résultat dans une variable $num*/
                    $num = getLicenciésNum($prenom,$famille);
                    
                    /*SELECTionne le tarif de la licence 'PROMO' en fonction de la catégorie du licencié et stocke le résultat dans une variable $tarif*/
                    $req="SELECT Tarif FROM licencié INNER JOIN paramètre_catégorie ON licencié.Catégorie_1 = paramètre_catégorie.Catégorie, 
                    (tarif INNER JOIN paramètre_catégorie AS paramètre_catégorie1 ON tarif.Critère_mini = paramètre_catégorie1.Catégorie) 
                    INNER JOIN paramètre_catégorie AS paramètre_catégorie2 ON tarif.Critère_maxi = paramètre_catégorie2.Catégorie
                    WHERE (((tarif.Code)='LIC-PROMO') AND licencié.Numéro='".$num."' AND ((paramètre_catégorie.Numéro_catégorie)>=paramètre_catégorie1.Numéro_catégorie 
                    AND (paramètre_catégorie.Numéro_catégorie)<=paramètre_catégorie2.Numéro_catégorie))";
                    $res = $monPdo->query($req);
                    $tarif = $res->fetch();
                    
                    /*SELECTionne le code de la table tarif quand le code s'appel 'LIC-PROMO' et stocke le résultat dans une variable $code*/
                    $req= "SELECT Code FROM tarif WHERE Code like 'LIC-PROMO'";
                    $res = $monPdo->query($req);
                    $code = $res->fetch();
                    
                    /*SELECTionne le tarif de la majoration externe de la table tarif quand le code s'appel 'LIC-PROMO' et stocke le résultat dans une variable $major*/
                    $req= "SELECT Majoration_externe FROM tarif WHERE Code like 'LIC-PROMO'";
                    $res = $monPdo->query($req);
                    $major = $res->fetch();

                    if(str_contains($LastTypeLic, 'TARIF')){
                        $transition=true;
                    }
                    elseif(str_contains($LastTypeLic, 'PROMO')){
                        $tarif="";
                    }

                    if($women)
                    {
                        $num = getLicenciésNum($prenom,$famille);
                        $req="SELECT Tarif FROM licencié INNER JOIN paramètre_catégorie ON licencié.Catégorie_1 = paramètre_catégorie.Catégorie, 
                        (tarif INNER JOIN paramètre_catégorie AS paramètre_catégorie1 ON tarif.Critère_mini = paramètre_catégorie1.Catégorie) 
                        INNER JOIN paramètre_catégorie AS paramètre_catégorie2 ON tarif.Critère_maxi = paramètre_catégorie2.Catégorie
                        WHERE (((tarif.Code)='WOMEN-PROMO') AND licencié.Numéro='".$num."' AND ((paramètre_catégorie.Numéro_catégorie)>=paramètre_catégorie1.Numéro_catégorie 
                        AND (paramètre_catégorie.Numéro_catégorie)<=paramètre_catégorie2.Numéro_catégorie))";
                        $res = $monPdo->query($req);
                        $tarif = $res->fetch();
                        
                        $req= "SELECT Code FROM tarif WHERE Code like 'WOMEN-PROMO'";
                        $res = $monPdo->query($req);
                        $code = $res->fetch();
                        
                        $req= "SELECT Majoration_externe FROM tarif WHERE Code like 'WOMEN-PROMO'";
                        $res = $monPdo->query($req);
                        $major = $res->fetch();

                        if(str_contains($LastTypeLic, 'TARIF')){
                            $transition=true;
                        }
                        elseif(str_contains($LastTypeLic, 'PROMO')){
                            $tarif="";
                        }
                    }
                }
            
                /* si la checkBox membre bureau est cochée, ça SELECTionne le tarif, le code et la majoration externe de la table tarif quand le code s'appel 'LIC-BUR'
                et stocke les résultats dans des variables*/
                if($bureau==1){
                    $req="SELECT Tarif FROM tarif WHERE Code like 'LIC-BUR'";
                    $res = $monPdo->query($req);
                    $tarif = $res->fetch();
                    $req= "SELECT Code FROM tarif WHERE Code like 'LIC-BUR'";
                    $res = $monPdo->query($req);
                    $code = $res->fetch();
                    $req= "SELECT Majoration_externe FROM tarif WHERE Code like 'LIC-BUR'";
                    $res = $monPdo->query($req);
                    $major = $res->fetch();
                }

                if($babyPing==1){
                    $req="SELECT Tarif FROM tarif WHERE Code like 'BABY_PING'";
                    $res = $monPdo->query($req);
                    $tarif = $res->fetch();
                    $req= "SELECT Code FROM tarif WHERE Code like 'BABY_PING'";
                    $res = $monPdo->query($req);
                    $code = $res->fetch();
                    $req= "SELECT Majoration_externe FROM tarif WHERE Code like 'BABY_PING'";
                    $res = $monPdo->query($req);
                    $major = $res->fetch();
                }
            
                
                if($divers==1){
                    $req="SELECT Tarif FROM tarif WHERE Code like 'DIVERS'";
                    $res = $monPdo->query($req);
                    $tarif = $res->fetch();
                    $req= "SELECT Code FROM tarif WHERE Code like 'DIVERS'";
                    $res = $monPdo->query($req);
                    $code = $res->fetch();
                    $req= "SELECT Majoration_externe FROM tarif WHERE Code like 'DIVERS'";
                    $res = $monPdo->query($req);
                    $major = $res->fetch();
                }
            

                
                if($partenaire==1){
                    $req="SELECT Tarif FROM tarif WHERE Code like 'PARTENAIRE'";
                    $res = $monPdo->query($req);
                    $tarif = $res->fetch();
                    $req= "SELECT Code FROM tarif WHERE Code like 'PARTENAIRE'";
                    $res = $monPdo->query($req);
                    $code = $res->fetch();
                    $req= "SELECT Majoration_externe FROM tarif WHERE Code like 'PARTENAIRE'";
                    $res = $monPdo->query($req);
                    $major = $res->fetch();
                }
            
                /* si la checkBox 1ere licence est cochée, ça SELECTionne le tarif, le code et la majoration externe de la table tarif quand le code s'appel 'LIC-L1'
                et stocke les résultats dans des variables*/
                if ($unLic==1){
                    $req="SELECT Tarif FROM tarif WHERE Code like 'LIC-L1'";
                    $res = $monPdo->query($req);
                    $tarif = $res->fetch();
                    $req= "SELECT Code FROM tarif WHERE Code like 'LIC-L1'";
                    $res = $monPdo->query($req);
                    $code = $res->fetch();
                    $req= "SELECT Majoration_externe FROM tarif WHERE Code like 'LIC-L1'";
                    $res = $monPdo->query($req);
                    $major = $res->fetch();
                }
                
                /* si la checkBox autre club est cochée, ça SELECTionne le tarif, le code et la majoration externe de la table tarif quand le code s'appel 'LIC-AC' 
                et stocke les résultats dans des variables*/
                if ($autreClub==1){
                    $req="SELECT Tarif FROM tarif WHERE Code like 'LIC-AC'";
                    $res = $monPdo->query($req);
                    $tarif = $res->fetch();
                    $req= "SELECT Code FROM tarif WHERE Code like 'LIC-AC'";
                    $res = $monPdo->query($req);
                    $code = $res->fetch();
                    $req= "SELECT Majoration_externe FROM tarif WHERE Code like 'LIC-AC'";
                    $res = $monPdo->query($req);
                    $major = $res->fetch();
                }
            
                /* si la checkBox essai est cochée, ça SELECTionne le tarif, le code et la majoration externe de la table tarif quand le code s'appel 'LIC-ESS' 
                et stocke les résultats dans des variables*/
                if ($essai==1){
                    $req="SELECT Tarif FROM tarif WHERE Code like 'LIC-ESS'";
                    $res = $monPdo->query($req);
                    $tarif = $res->fetch();
                    $req= "SELECT Code FROM tarif WHERE Code like 'LIC-ESS'";
                    $res = $monPdo->query($req);
                    $code = $res->fetch();
                    $req= "SELECT Majoration_externe FROM tarif WHERE Code like 'LIC-ESS'";
                    $res = $monPdo->query($req);
                    $major = $res->fetch();
                }

                /* insère dans la table opérations_compte_famille une ligne de débit avec les informations stockées dans les variables*/
                
                if($transition!=true && $tarif!=""){
                    $req=("INSERT INTO opérations_compte_famille (NuméroLicencié,Famille,Prénom,Code_opération,Libellé_libre_opération,Date_opération,Débit)
                    values($numéro,UPPER('$famille'),'$prenom','$code[Code]','Licence $famille $prenom',now(),$tarif[Tarif])");
                    $res = $monPdo->exec($req);
                }
                
                if($transition==true && $tarif!=""){
                    $montantDiff = calculDiffPromoTradi($cat1,'LIC-'.$typeLic);
                    $débit = 0;
                    $crédit = 0;
                    if($montantDiff<0){
                        $débit = abs($montantDiff);
                    }
                    else{
                        $crédit = $montantDiff;
                    }                    
                    
                    if($typeLic=='TRADI'){
                        $req=("INSERT INTO opérations_compte_famille (NuméroLicencié,Famille,Prénom,Code_opération,Libellé_libre_opération,Date_opération,Débit,Crédit)
                        values($numéro,UPPER('$famille'),'$prenom','Passage à TRADI','Licence $famille $prenom',now(),$débit,$crédit)");
                        $res = $monPdo->exec($req);
                    }
                    elseif($typeLic=='PROMO'){
                        $req=("INSERT INTO opérations_compte_famille (NuméroLicencié,Famille,Prénom,Code_opération,Libellé_libre_opération,Date_opération,Débit,Crédit)
                        values($numéro,UPPER('$famille'),'$prenom','Passage à PROMO','Licence $famille $prenom',now(),$débit,$crédit)");
                        $res = $monPdo->exec($req);
                    }
                }
                
                /* si la checkBox saint jean de la ruelle n'est pas cochée, ça insère dans la table opérations_compte_famille une ligne de débit supplémentaire avec 
                la majoration externe correspondant au type de licence et les informations stockées dans les variables*/
                if($SJR!=1){
                    $numéro = getLicenciésNum($prenom,$famille);
                    $req=("INSERT INTO opérations_compte_famille (NuméroLicencié,Famille,Prénom,Code_opération,Libellé_libre_opération,Date_opération,Débit)
                    values($numéro,UPPER('$famille'),'$prenom','$code[Code]','Licence $famille $prenom hors St Jean',now(),$major[Majoration_externe])");
                    $res = $monPdo->exec($req);
                }
                // if($babyPing != null && $babyPing == 1)
                // {
                //     $req="SELECT Tarif FROM tarif WHERE Code='BABY_PING'";
                //     $res = $monPdo->query($req);
                //     $tarifBabyPing = $res->fetch();

                //     $req= "SELECT Nom_service FROM tarif WHERE Code = 'BABY_PING'";
                //     $res = $monPdo->query($req);
                //     $NomServBP = $res->fetch();
                

                //     $numéro = getLicenciésNum($prenom,$famille);
                //     $req=("INSERT INTO opérations_compte_famille (NuméroLicencié,Famille,Prénom,Code_opération,Libellé_libre_opération,Date_opération,Débit)
                //     values($numéro,UPPER('$famille'),'$prenom','$NomServBP[Nom_service]','$NomServBP[Nom_service] $famille $prenom',now(),'$tarifBabyPing[Tarif]')");
                //     $res = $monPdo->exec($req);

                // }
            
                /* SELECTionne le nombre de licencié pour une famille qui sont incrit et ont une date d'insciption et stocke le résultat dans une variable $nbrLic*/
                $req="SELECT count(Prénom_licencié) FROM licencié WHERE Famille='".$famille."' and Inscription=1 and Date_inscription!=''";
                $res = $monPdo->query($req);
                $nbrLic = $res->fetch();
            
                /* SELECTionne le taux montant remise club de la table tarif quand le code s'appel 'LIC-R' et que le critère mini est égal au nombre licencié d'une 
                même famille qui sont inscrit et ont une date d'inscription et stocke le résultat dans une variable $tauxRemise*/
                $req="SELECT Taux_montant_remise_club FROM tarif WHERE Code='LIC-R' and Critère_mini='".$nbrLic['count(Prénom_licencié)']."'";
                $res = $monPdo->query($req);
                $tauxRemise = $res->fetch();
            
                /* SELECTionne le nom service de la table tarif quand le code s'appel 'LIC-R' et que le critère mini est égal au nombre licencié d'une même famille
                qui sont inscrit et ont une date d'inscription et stocke le résultat dans une variable $NomServRem*/
                $req="SELECT Nom_service FROM tarif WHERE Code='LIC-R' and Critère_mini='".$nbrLic['count(Prénom_licencié)']."'";
                $res = $monPdo->query($req);
                $NomServRem = $res->fetch();
            
                /* supprime la dernière ligne d'opération quand le code opération s'appel 'LIC-REM' pour qu'une seule remise en fonction du nombre de licencié dans
                une même famille soit comptabilisée*/
                $req="DELETE FROM opérations_compte_famille WHERE Code_opération = 'LIC-REM' and Famille='".$famille."'";
                $req = $monPdo->query($req);
            
                if($tauxRemise['Taux_montant_remise_club']>0){
                    $numéro = getLicenciésNum($prenom,$famille);
                    $req=("insert into opérations_compte_famille (NuméroLicencié,Famille,Prénom,Code_opération,Libellé_libre_opération,Date_opération,Crédit)
                    values($numéro,UPPER('$famille'),'$prenom','LIC-REM','$NomServRem[Nom_service] $famille',now(),'$tauxRemise[Taux_montant_remise_club]')");
                    $res = $monPdo->exec($req);
                }
                
                /* SELECTionne le tarif de la table tarif quand le code s'appel 'CI' et stocke le résultat dans une variable $tarifCompetIndiv*/
                $req="SELECT Tarif FROM tarif WHERE Code='CI'";
                $res = $monPdo->query($req);
                $tarifCompetIndiv = $res->fetch();
            
                /* SELECTionne le nom service de la table tarif quand le code s'appel 'CI' et stocke le résultat dans une variable $NomServCI*/
                $req= "SELECT Nom_service FROM tarif WHERE Code = 'CI'";
                $res = $monPdo->query($req);
                $NomServCI = $res->fetch();
            
                /* si la checkBox compétition individuelle est cochée, ça insère dans la table opérations_compte_famille les informations stockées dans les 
                variables précédente*/
                if($competIndiv==1){
                    $numéro = getLicenciésNum($prenom,$famille);
                    $req=("INSERT INTO opérations_compte_famille (NuméroLicencié,Famille,Prénom,Code_opération,Libellé_libre_opération,Date_opération,Débit)
                    values($numéro,UPPER('$famille'),'$prenom','$NomServCI[Nom_service]','$NomServCI[Nom_service] $famille $prenom',now(),'$tarifCompetIndiv[Tarif]')");
                    $res = $monPdo->exec($req);
                }
            }
            else{
                /*suppressions des anciennes infos dans opérations compte*/
                $req= "SELECT Code_opération FROM opérations_compte_famille WHERE NuméroLicencié=$numéro LIMIT 1";
                $res = $monPdo->query($req);
                $exist = $res->fetch();
                if($exist!=""){
                    $req= "DELETE FROM opérations_compte_famille WHERE NuméroLicencié=$numéro";
                    $res = $monPdo->query($req);
                }
            }
		    return $res;
        }
        catch (PDOException $e){
            print "Erreur !: " . $e->getMessage();
            die();
        }
    }	
	
	/*fonction qui SELECTionne tous des familles, triée par nom de famille pour formulaire famille*/
	function getFamilles()
	{
		try 
		{
        $monPdo = connexionPDO();
		$req = 'SELECT * FROM famille order by Nom_famille';
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
	
	/*fonction qui SELECTionne tous de la famille avec le dernier numéro, triée par Numéro decroissant pour formulaire famille2*/
	function getFamillesTrie()
	{
		try{
            $monPdo = connexionPDO();
            $req = 'SELECT * FROM famille order by Numéro desc limit 1';
            $res = $monPdo->query($req);
            $lesLignes = $res->fetchAll();
            return $lesLignes;
		} 
		catch (PDOException $e){
            print "Erreur !: " . $e->getMessage();
            die();
		}
	}

    /*fonction qui Selectionne tous les informations de la famille avec le numéro*/
	function getFamillesByNum($Num)
	{
		try{
            $monPdo = connexionPDO();
            $req = 'SELECT * FROM famille WHERE Numéro = '.$Num;
            $res = $monPdo->query($req);
            $lesLignes = $res->fetch();
            return $lesLignes;
		} 
		catch (PDOException $e) {
            print "Erreur !: " . $e->getMessage();
            die();
		}
	}
	
	/*fonction pour creer une famille dans formulaire famille*/
	function creerFamille($nom,$adresse,$ville,$telMob,$telDom,$telTrav,$emailPerso,$emailTrav)
    {
        try{
            $monPdo = connexionPDO();
            $req = $monPdo->prepare("INSERT INTO famille (Nom_famille,Adresse,Ville,Tel_mobile,Tel_domicile,Tel_travail,Email_perso,Email_travail) 
            values (UPPER(?),UPPER(?),UPPER(?),?,?,?,UPPER(?),UPPER(?))");
            $res=$req->execute(array($nom,$adresse,$ville,$telMob,$telDom,$telTrav,$emailPerso,$emailTrav));
            return $res;
        }
        catch (PDOException $e){
            print "Erreur !: " . $e->getMessage();
            die();
        }
    }
	
	/*fonction pour modifier une famille avec une boucle qui parcours tout le formulaire famille*/
	function modifierFamille()
    {
        try{
            $monPdo = connexionPDO();
            $req = $monPdo->prepare("UPDATE famille SET Nom_famille=:nom, Adresse=:adresse, Ville=:ville, Tel_mobile=:telMob, Tel_domicile=:telDom,
            Tel_travail=:telTrav, Email_perso=:emailPerso, Email_travail=:emailTrav WHERE Numéro =:num;");
            for($i=0;$i<count($_POST['Numéro']);$i++){
                $res=$req->execute(array('num'=> $_POST['Numéro'][$i],'nom'=> $_POST['Nom_famille'][$i],'adresse'=> $_POST['Adresse'][$i],'ville'=> $_POST['Ville'][$i],
                'telMob'=> $_POST['Tel_mobile'][$i],'telDom'=> $_POST['Tel_domicile'][$i],'telTrav'=> $_POST['Tel_travail'][$i],'emailPerso'=> $_POST['Email_perso'][$i],
                'emailTrav'=> $_POST['Email_travail'][$i]));
            }
            return $res;
        }
        catch (PDOException $e){
            print "Erreur !: " . $e->getMessage();
            die();
        }
    }
	
	/*fonction qui SELECTionne les familles pour faire une liste des licenciés inscrient dans le formulaire liste licencié*/
	function getFamilleLicenciés()
	{
		try {
            $monPdo = connexionPDO();
            $req = 'SELECT distinct Famille FROM licencié WHERE Inscription=1 order by Famille;';
            $res = $monPdo->query($req);
            $lesLignes = $res->fetchAll();
            return $lesLignes;
		} 
		catch (PDOException $e){
            print "Erreur !: " . $e->getMessage();
            die();
		}
	}
	
	/*fonction qui SELECTionne la famille SELECTionné pour faire passer en paramètre la famille dans formulaire liste règlement*/
	function getFamilleLicenciés2()
	{
		try 
		{
        $monPdo = connexionPDO();
		$req = 'SELECT distinct Famille FROM licencié WHERE Famille="'.$_POST["Famille"].'";';
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
	
	/*fonction qui SELECTionne tous les objets règlements pour liste déroulante du formulaire règlement*/
	function getObjetReglements()
	{
		try 
		{
        $monPdo = connexionPDO();
		$req = 'SELECT * FROM libellé_opérations ;';
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
	
	/*fonction qui SELECTionne toues les banques pour liste déroulante du formulaire règlement*/
	function getBanque()
	{
		try 
		{
        $monPdo = connexionPDO();
		$req = 'SELECT * FROM banque;';
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
	
	/*fonction qui SELECTionne tous les types de paiement pour liste déroulante du formulaire règlement*/
	function getTypePaiement()
	{
		try 
		{
        $monPdo = connexionPDO();
		$req = 'SELECT * FROM type_paiement;';
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
	
	/*fonction qui ajoute un règlement dans formulaire règlement*/
	function creerReglement($fam,$prénom,$dateOpé,$objetReg,$typePaie,$montant,$banque,$codeCheque)
    {
        try{
            $monPdo = connexionPDO();
            /*insère les informations du formulaire règlement dans la table opérations_compte_famille2*/
            $req = $monPdo->prepare("INSERT INTO opérations_compte_famille2 (Famille,Date_opération,Objet_règlement,Type_paiement,Montant,Banque,Code_chèque)
            values (?,?,?,?,?,?,?)");
            $res=$req->execute(array($fam,$dateOpé,$objetReg,$typePaie,$montant,$banque,$codeCheque));
            
            /*si l'objet du règlement ne s'appel pas 'Don', la série de requête suivante est effectuée*/
            if($objetReg != 'Don'){
                /*SELECTionne les types de paiement de la table opérations_compte_famille2 et les stockent dans une variables $typePaie2*/
                $req= "SELECT Type_paiement FROM opérations_compte_famille2";
                $res = $monPdo->query($req);
                $typePaie2 = $res->fetch();

                /*SELECTionne les banques de la table opérations_compte_famille2 et les stockent dans une variables $banque2*/
                $req= "SELECT Banque FROM opérations_compte_famille2";
                $res = $monPdo->query($req);
                $banque2 = $res->fetch();

                /*SELECTionne les code chèques de la table opérations_compte_famille2 et les stockent dans une variables $cheque2*/
                $req= "SELECT Code_chèque FROM opérations_compte_famille2";
                $res = $monPdo->query($req);
                $cheque2 = $res->fetch();
                
                /*SELECTionne les objets règlement de la table opérations_compte_famille2 et les stockent dans une variables $objetReg2*/
                $req= "SELECT Objet_règlement FROM opérations_compte_famille2";
                $res = $monPdo->query($req);
                $objetReg2 = $res->fetch();
                
                $num = getLicenciésNum($prénom,$fam);

                /*si la valeur stockée dans la variable $objetReg2 commence par 'Débit', ça insère une ligne de débit dans la table opérations_compte_famille avec 
                les valeurs des variables stockées précedement*/
                if($montant>0){
                    if($prénom!='NULL'){
                        $req = "insert into opérations_compte_famille (NuméroLicencié,Famille,Prénom,Code_opération,Libellé_libre_opération,Date_opération,Crédit)
                        values ($num,UPPER('$fam'),'$prénom','$objetReg2[Objet_règlement]','$objetReg2[Objet_règlement] $typePaie2[Type_paiement] $banque2[Banque] $cheque2[Code_chèque]','$dateOpé','$montant')";
                        $res = $monPdo->exec($req);
                    }
                    else{
                        $req = "insert into opérations_compte_famille (Famille,Code_opération,Libellé_libre_opération,Date_opération,Crédit)
                        values (UPPER('$fam'),'code','$objetReg2[Objet_règlement] $typePaie2[Type_paiement] $banque2[Banque] $cheque2[Code_chèque]','$dateOpé','$montant')";
                        $res = $monPdo->exec($req);
                    }
                }
                /*si la valeur stockée dans la variable $objetReg2 commence par 'Crédit', ça insère une ligne de crédit dans la table opérations_compte_famille avec 
                les valeurs des variables stockées précedement*/
                else{
                    if($prénom!='NULL'){
                        $req = "insert into opérations_compte_famille (NuméroLicencié,Famille,Prénom,Code_opération,Libellé_libre_opération,Date_opération,Débit)
                        values ($num,UPPER('$fam'),'$prénom','$objetReg2[Objet_règlement]','$objetReg2[Objet_règlement] $typePaie2[Type_paiement] $banque2[Banque] $cheque2[Code_chèque]','$dateOpé',abs('$montant'))";
                        $res = $monPdo->exec($req);
                    }
                    else{
                        $req = "insert into opérations_compte_famille (Famille,Code_opération,Libellé_libre_opération,Date_opération,Débit)
                        values (UPPER('$fam'),'code','$objetReg2[Objet_règlement] $typePaie2[Type_paiement] $banque2[Banque] $cheque2[Code_chèque]','$dateOpé',abs('$montant'))";
                        $res = $monPdo->exec($req);
                    }
                }
                
                /*suppression des informations de la table opérations_compte_famille2*/
                $req = ("delete FROM opérations_compte_famille2");
                $res = $monPdo->exec($req);
            }
            
            /*si l'objet du règlement s'appel 'Don', la série de requête suivante est effectuée*/
            if ($objetReg == 'Don'){
                /*SELECTionne les taux montant remise club de la table tarif quand le code s'appel 'REM-DON" et les stockent dans une variables $remiseDon*/
                $req= "SELECT Taux_montant_remise_club FROM tarif WHERE Code='REM-DON'";
                $res = $monPdo->query($req);
                $remiseDon = $res->fetch();
                
                /*SELECTionne les nom service de la table tarif quand le code s'appel 'REM-DON" et les stockent dans une variables $libelleDon*/
                $req= "SELECT Nom_service FROM tarif WHERE Code='REM-DON'";
                $res = $monPdo->query($req);
                $libelleDon = $res->fetch();
                
                /*SELECTionne les code de la table tarif quand le code s'appel 'REM-DON" et les stockent dans une variables $codeDon*/
                $req= "SELECT Code FROM tarif WHERE Code='REM-DON'";
                $res = $monPdo->query($req);
                $codeDon = $res->fetch();
                
                /*insère dans la table opérations_compte_famille le montant de la remise du don calculé avec le montant du don et la valeur de la variable $remiseDon,
                et insère les valeurs des variables stockées précedement*/
                $req = ("insert into opérations_compte_famille (Famille,Code_opération,Libellé_libre_opération,Date_opération,Crédit)
                values (UPPER('$fam'),'$codeDon[Code]','$libelleDon[Nom_service]','$dateOpé','$montant' * $remiseDon[Taux_montant_remise_club])");
                $res = $monPdo->exec($req);
                
                /*insère dans la table opérations_compte_famille le montant du don avec les valeurs des variables stockées précedement*/
                $req = ("insert into opérations_compte_famille (Famille,Code_opération,Libellé_libre_opération,Date_opération,Crédit)
                values (UPPER('$fam'),'Don','Don','$dateOpé','$montant')");
                $res = $monPdo->exec($req);
                
                /*suppression des informations de la table opérations_compte_famille2*/
                $req = ("delete FROM opérations_compte_famille2");
                $res = $monPdo->exec($req);
            }
        }
        catch (PDOException $e){
            print "Erreur !: " . $e->getMessage();
            die();
        }
    }
	
	/*fonction qui SELECTionne toutes les informations d'une famille, pour le formulaire règlement*/
	function getLesInfosLicenciés()
	{
		try{
            $monPdo = connexionPDO();
            $req = 'SELECT * FROM licencié WHERE Famille ="'.$_GET['famille'].'"'; 
            $res = $monPdo->query($req);
            $lesLignes = $res->fetchAll();
            return $lesLignes;
		} 
		catch (PDOException $e){
            print "Erreur !: " . $e->getMessage();
            die();
		}
	}

    function getLesInfosLicenciésByNum($num)
	{
        $monPdo = connexionPDO();
		$req = 'SELECT * FROM licencié WHERE Numéro ="'.$num.'"'; 
		$res = $monPdo->query($req);
		$lesLignes = $res->fetch();
		return $lesLignes;
	}

	
	/*fonction qui SELECTionne toutes les opérations d'une même famille, ordonnées par numéro pour le formulaire règlement*/
	function getLesOpérationsFamille()
	{
		try 
		{
        $monPdo = connexionPDO();
		$req = 'SELECT * FROM opérations_compte_famille WHERE Famille="'.$_GET['famille'].'" order by Numéro;'; 
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
	
	/*fonction qui fait la somme des débits et des crédits pour une même famille quand le Code opération est différent de 'don' pour le formulaire règlement*/
	function getSolde()
	{
		try 
		{
        $monPdo = connexionPDO();
		$req = 'SELECT Famille, sum(Débit) as debit, sum(Crédit) as credit FROM opérations_compte_famille WHERE Famille="'.$_GET['famille'].'" and Code_opération!="Don";'; 
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
	
	/*fonction qui SELECTionne toutes les opérations des familles et qui fait la somme des opérations pour une même famille quand le Code opération est 
	différent de 'don' dans formulaire export des opérations*/
	function getExportPresident()
	{
		try 
		{
        $monPdo = connexionPDO();
		$req = "SELECT Famille, Prénom, Code_opération,Libellé_libre_opération, Date_opération, Débit, Crédit, '' as Solde 
		FROM opérations_compte_famille
		union
		SELECT Famille, '' as Prénom, 'z debit credit' as Code_opération, 'Solde famille' as Libellé_libre_opération, DATE( now() ) as Date_opération, '' as Débit,
		'' as Crédit, sum(Crédit-Débit) as Solde 
		FROM opérations_compte_famille 
		WHERE Code_opération!='Don' 
		group by Famille
		order by Famille, Date_opération,Code_opération;"; 
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

    	/*fonction qui SELECTionne toutes les opérations des familles et qui fait la somme des opérations pour une même famille quand le Code opération est 
	différent de 'don' dans formulaire export des opérations*/
	function getExportListeLicenciés()
	{
		try 
		{
        $monPdo = connexionPDO();
		$req = "SELECT Famille, Nom_licencié, Prénom_licencié, Sexe, Date_Naissance, Nationalité, f.Adresse, f.Ville, l.Tel_domicile, l.Tel_mobile, l.Email_perso
        FROM licencié l
        INNER JOIN famille f
        ON f.Nom_famille = l.Famille"; 
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

	/*fonction qui SELECTionne tous les tarifs pour formulaire tarif*/
	function getTarifs()
	{
		try 
		{
        $monPdo = connexionPDO();
		$req = 'SELECT * FROM tarif';
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
	
	/*fonction qui creer un tarif pour formulaire tarif*/
	function creerTarif($code,$nomServ,$critMin,$critMax,$tarif,$tauxRemClub,$majorExt)
    {
        try 
        {
        $monPdo = connexionPDO();
        $req = $monPdo->prepare("INSERT into tarif (Code,Nom_service,Critère_mini,Critère_maxi,Tarif,Taux_montant_remise_club,Majoration_externe) 
		values (UPPER(?),?,?,?,?,?,?)");
        $res=$req->execute(array($code,$nomServ,$critMin,$critMax,$tarif,$tauxRemClub,$majorExt));
        return $res;
        }
        catch (PDOException $e) 
        {
        print "Erreur !: " . $e->getMessage();
        die();
        }
    }
	
	/*fonction qui modifie un tarif pour formulaire tarif en fonction de son numéro*/	
	function modifierTarif()
    {
        try{
            $monPdo = connexionPDO();
            $req = $monPdo->prepare("UPDATE tarif SET Numéro=:num, Code=:code, Nom_service=:nomServ, Critère_mini=:mini, Critère_maxi=:maxi, Tarif=:tarif,
            Taux_montant_remise_club=:tauxRemClub, Majoration_externe=:majoExt WHERE Numéro =:num;");
            for($i=0;$i<count($_POST['Numéro']);$i++){
                $res=$req->execute(array('num'=> $_POST['Numéro'][$i],'code'=> $_POST['Code'][$i],'nomServ'=> $_POST['Nom_service'][$i],'mini'=> $_POST['Critère_mini'][$i],
                'maxi'=> $_POST['Critère_maxi'][$i],'tarif'=> $_POST['Tarif'][$i],'tauxRemClub'=> $_POST['Taux_montant_remise_club'][$i],'majoExt'=> $_POST['Majoration_externe'][$i]));
		    }
        return $res;
        }
        catch (PDOException $e){
            print "Erreur !: " . $e->getMessage();
            die();
        }
    }
	

	
	/*fonction qui SELECTionne les catégories d'âges pour formulaire ageCatégorie*/
	function getAgeCat()
	{
		try 
		{
        $monPdo = connexionPDO();
		$req = 'SELECT * FROM paramètre_age_catégorie';
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
	
	/*fonction qui modifie les catégories d'âges pour formulaire ageCatégorie*/
	function modifierAgeCat()
    {
        try 
        {
        $monPdo = connexionPDO();
        $req = $monPdo->prepare("update paramètre_age_catégorie set Année_naissance_mini=:naissMini, Année_naissance_maxi=:naissMaxi, Catégorie1=:cat1,
		Catégorie2=:cat2 WHERE Numéro =:num;");
		for($i=0;$i<count($_POST['Numéro']);$i++){
        $res=$req->execute(array('num'=> $_POST['Numéro'][$i],'naissMini'=> $_POST['Année_naissance_mini'][$i],'naissMaxi'=> $_POST['Année_naissance_maxi'][$i],
		'cat1'=> $_POST['Catégorie1'][$i],'cat2'=> $_POST['Catégorie2'][$i]));
		}
        return $res;
        }
        catch (PDOException $e) 
        {
        print "Erreur !: " . $e->getMessage();
        die();
        }
    }
/*fonction qui ajoute +1 aux années pour formulaire ageCatégorie*/
function IncrementationAge()
    {
        try{
            $monPdo = connexionPDO();
            $req = 'UPDATE paramètre_age_catégorie SET Année_naissance_mini = Année_naissance_mini + 1, Année_naissance_maxi =Année_naissance_maxi + 1;';
            $res = $monPdo->query($req);
            return $res;
        }
        catch (PDOException $e){
            print "Erreur !: " . $e->getMessage();
            die();
        }
    }

/*fonction qui retire 1 aux années pour formulaire ageCatégorie*/
function DécrementationAge()
{
    try{
        $monPdo = connexionPDO();
        $req = 'UPDATE paramètre_age_catégorie SET Année_naissance_mini = Année_naissance_mini - 1, Année_naissance_maxi =Année_naissance_maxi - 1;';
        $res = $monPdo->query($req);
        return $res;
    }
    catch (PDOException $e){
        print "Erreur !: " . $e->getMessage();
        die();
    }
}

function CalculAgeCat($age)
{
    try{
        $monPdo = connexionPDO();
        $req = 'SELECT Catégorie1, Numéro FROM paramètre_age_catégorie WHERE '.$age.' <= Année_naissance_mini AND '.$age.' >= Année_naissance_maxi';
        $req = $monPdo->query($req);
        $res = $req->fetch();
        return $res;
    }
    catch (PDOException $e){
        print "Erreur !: " . $e->getMessage();
        die();
    }
}

/*Fonction qui permet de connaitre le total à payé/payé par le licencié*/
function totalDébit($nom,$prenom){
    try{
        $monPdo = connexionPDO();
        $req = $monPdo->prepare('SELECT SUM(Débit) FROM opérations_compte_famille WHERE Famille = :nom AND Prénom=:prenom;');
        $req->execute(array('nom'=>$nom,'prenom'=>$prenom));
        $num = ($req->fetch())[0];
        return $num;
    }
    catch (PDOException $e){
        print "Erreur !: " . $e->getMessage();
        die();
    }
}

/*Fonction qui permet de connaitre le total à payé/payé par le licencié*/
function totalCrédit($nom,$prenom){
    try{
        $monPdo = connexionPDO();
        $req = $monPdo->prepare('SELECT SUM(Crédit) FROM opérations_compte_famille WHERE Famille = :nom AND Prénom = :prenom AND Code_Opération = \'Règlement licence\';');
        $req->execute(array('nom'=>$nom,'prenom'=>$prenom));
        $num = ($req->fetch())[0];
        if($num==""){
            $num=0;
        }
        return $num;
    }
    catch (PDOException $e){
        print "Erreur !: " . $e->getMessage();
        die();
    }
}

/*Fonction qui permet de rechercher un éléments avec une chaine de caractère parsielle*/
function searchLicenciés($keyWord){
    try{
        $monPdo = connexionPDO();
        $req = $monPdo->prepare('SELECT * FROM `licencié` WHERE Famille LIKE :key OR Prénom_licencié LIKE :key OR Email_perso LIKE :key OR Email_travail LIKE :key ORDER BY 1');
        $req->execute(array('key'=>'%'.$keyWord.'%'));
        $res = $req->fetchAll();
        return $res;
    }
    catch (PDOException $e){
        print "Erreur !: " . $e->getMessage();
        die();
    }
}
function searchFamilles($keyWord){
    try{
        $monPdo = connexionPDO();
        $req = $monPdo->prepare('SELECT * FROM `famille` WHERE Nom_Famille LIKE :key OR Tel_mobile LIKE :key OR Email_perso LIKE :key OR Email_travail LIKE :key ORDER BY 1');
        $req->execute(array('key'=>'%'.$keyWord.'%'));
        $res = $req->fetchAll();
        return $res;
    }
    catch (PDOException $e){
        print "Erreur !: " . $e->getMessage();
        die();
    }
}

function searchTarifs($keyWord){
    try{
        $monPdo = connexionPDO();
        $req = $monPdo->prepare('SELECT * FROM `tarif` WHERE Code LIKE :key OR Critère_mini LIKE :key OR Critère_maxi LIKE :key OR Tarif LIKE :key ORDER BY 1');
        $req->execute(array('key'=>'%'.$keyWord.'%'));
        $res = $req->fetchAll();
        return $res;
    }
    catch (PDOException $e){
        print "Erreur !: " . $e->getMessage();
        die();
    }
}

function getLicenciésNum($prénom,$nom){
    try{
        $monPdo = connexionPDO();
        $req = 'SELECT Numéro FROM licencié WHERE \''.$prénom.'\'=Prénom_licencié AND \''.$nom.'\'=Famille ';
        $req = $monPdo->query($req);
        $res = $req->fetch();
        $num = $res['Numéro'];
        return $num;
    }
    catch (PDOException $e){
        print "Erreur !: " . $e->getMessage();
        die();
    }
}

function importListeLicenciés(){
    try{
        $monPdo = connexionPDO();
        $LesLicenciés = getImportListeLicenciés();
        $req = 'SET FOREIGN_KEY_CHECKS = 0;';
        $req = $monPdo->query($req);
        $req = 'TRUNCATE TABLE opérations_compte_famille';
        $req = $monPdo->query($req);
        $req = 'TRUNCATE TABLE licencié';
        $req = $monPdo->query($req);
        $req = 'TRUNCATE TABLE famille';
        $req = $monPdo->query($req);
        
        $removed = array_shift($LesLicenciés);
        foreach ($LesLicenciés as &$Licencié){
            $select = $monPdo->prepare('SELECT * FROM famille WHERE Nom_famille = ?');
            $select->execute([$Licencié[0]]);
            if($select->rowCount() < 1){
                $req = $monPdo->prepare("INSERT INTO famille (Nom_famille, Adresse, Ville, Tel_mobile, Tel_domicile, Email_perso) VALUES (:Nom_famille, :Adresse, :Ville, :Tel_mobile, :Tel_domicile, :Email_perso)");
                
                $Ville = $Licencié[7]." ".$Licencié[8];
                
                $req->execute(array(
                    ':Nom_famille' => !empty($Licencié[0]) ? $Licencié[0]:NULL,
                    ':Adresse' => !empty($Licencié[6]) ? $Licencié[6]:NULL,
                    ':Ville' => $Ville,
                    ':Tel_mobile' => !empty($Licencié[10]) ? $Licencié[10]:NULL,
                    ':Tel_domicile' => !empty($Licencié[9]) ? $Licencié[9]:NULL,
                    ':Email_perso' => !empty($Licencié[11]) ? $Licencié[11]:NULL
                    )
                );
            }
            /*else{
                $req = $monPdo->prepare("UPDATE famille SET Adresse=:Adresse, Ville=:Ville, Tel_mobile=:Tel_mobile, Tel_domicile=:Tel_domicile, Email_perso=:Email_perso");
                
                $Ville = $Licencié[7]." ".!empty($Licencié[8]) ? $Licencié[8]:NULL;
                
                
                $req->execute(array(
                    ':Adresse' => !empty($Licencié[6]) ? $Licencié[6]:NULL,
                    ':Ville' => $Ville,
                    ':Tel_mobile' => !empty($Licencié[10]) ? $Licencié[10]:NULL,
                    ':Tel_domicile' => !empty($Licencié[9]) ? $Licencié[9]:NULL,
                    ':Email_perso' => !empty($Licencié[11]) ? $Licencié[11]:NULL
                    )
                );
            }*/
            $req = $monPdo->prepare("INSERT INTO licencié (Famille, Nom_licencié, Prénom_licencié, Sexe, Date_Naissance, Tel_mobile, Tel_domicile, Email_perso, Nationalité) VALUES (:Famille, :Nom_licencie, :Prenom_licencie, :Sexe, :Date_Naissance, :Tel_mobile, :Tel_domicile, :Email_perso, :Nationalite)");

            $dateNais = $Licencié[4];
            $dateNais = date('Y-m-d', strtotime($dateNais));
            if(!empty($Licencié[0])){
                $req->execute(array(
                    ':Famille' => !empty($Licencié[0]) ? $Licencié[0] : null,
                    ':Nom_licencie' => !empty($Licencié[1]) ? $Licencié[1]:null,
                    ':Prenom_licencie' => !empty($Licencié[2]) ? $Licencié[2]:NULL,
                    ':Sexe' => !empty($Licencié[3]) ? $Licencié[3]:NULL,
                    ':Date_Naissance' => $dateNais,
                    ':Tel_domicile' => !empty($Licencié[9]) ? $Licencié[9]:NULL,
                    ':Tel_mobile' => !empty($Licencié[10]) ? $Licencié[10]:NULL,
                    ':Email_perso' => !empty($Licencié[11]) ? $Licencié[11]:NULL,
                    ':Nationalite' => !empty($Licencié[5]) ? $Licencié[5]:NULL
                    )
                );
            }
            
        }
        $req = 'SET FOREIGN_KEY_CHECKS = 1;';
        $req = $monPdo->query($req);
    }
    catch (PDOException $e){
        print "Erreur !: " . $e->getMessage();
        die();
    }
}

function familleExist($fam){
    $monPdo = connexionPDO();
    $select = $monPdo->prepare('SELECT * FROM famille WHERE Nom_famille = ?');
    $select->execute(array($fam));
    if($select->rowCount() > 0){
        return true;
    }
    else{
        return false;
    }
}

function calculDiffPromoTradi($ageCat,$typeLicence){
    if($typeLicence=='LIC-TRADI'){
        $INtypeLicence='LIC-PROMO';
    }
    else{
        $INtypeLicence='LIC-TRADI';
    }
    $monPdo = connexionPDO();
    $req = 'SELECT Numéro_catégorie FROM paramètre_catégorie WHERE Catégorie =\''.$ageCat.'\'';
    $req = $monPdo->query($req);
    $res = $req->fetch();
    $numAgeCat = $res['Numéro_catégorie'];
    $req = '
    SELECT Tarif-(
        SELECT Tarif 
        FROM tarif
        INNER JOIN paramètre_catégorie spc
        ON spc.Catégorie=Critère_mini
        INNER JOIN paramètre_catégorie spc2
        ON spc2.Catégorie=Critère_maxi
        WHERE spc.Numéro_catégorie <= '.$numAgeCat.' AND spc2.Numéro_catégorie >= '.$numAgeCat.' AND Code= \''.$typeLicence.'\')    
    AS montant
    FROM tarif t
    INNER JOIN paramètre_catégorie pc
    ON pc.Catégorie=Critère_mini
    INNER JOIN paramètre_catégorie pc2
    ON pc2.Catégorie=Critère_maxi
    WHERE pc.Numéro_catégorie <= '.$numAgeCat.'
    AND pc2.Numéro_catégorie >= '.$numAgeCat.'
    AND Code= \''.$INtypeLicence.'\'';
    $req = $monPdo->query($req);
    
    $res = $req->fetch();
    $res = $res['montant'];
    return $res;
}

/*fonction qui SELECTionne tous les tarifs pour formulaire tarif*/
function getTarifsByNum($num)
{
    try{
        
        $monPdo = connexionPDO();
        $req = 'SELECT * FROM tarif WHERE Numéro = '.$num;
        $res = $monPdo->query($req);
        $lesLignes = $res->fetchAll();
        $lesLignes = $lesLignes[0];
        return $lesLignes;
    } 
    catch (PDOException $e) {
        print "Erreur !: " . $e->getMessage();
        die();
    }
}

/*fonction qui supprime toute les opérations*/
function suppressionOpération()
{
    try{
        $monPdo = connexionPDO();
        $req = 'TRUNCATE opérations_compte_famille';
        $res = $monPdo->query($req);
        return $res;
    }
    catch (PDOException $e){
        print "Erreur !: " . $e->getMessage();
        die();
    }
}

/*fonction qui désinscrit tous les licenciés*/
function désinscription()
{
    try{
        $monPdo = connexionPDO();
        $req = 'UPDATE licencié SET `Inscription`=0,`Catégorie_1`=NULL,`Catégorie_2`=NULL,`Type_licence`=NULL,`Participation_compétition_individuelle`=NULL,`Saint_Jean_de_la_Ruelle`=NULL,`Numéro_licence`=NULL,`Date_inscription`=NULL,`Certificat_médical`=NULL,`1ere_licence`=NULL,`Autre_club`=NULL,`Essai`=NULL,`Commentaire`=NULL,`Stage_uniquement`=NULL,`Demie_tarif`=NULL,`Licence_gratuite`=NULL,`Participation_équipe_sénior`=NULL,`Autorisation_photo_vidéo`=NULL,`Loisir_hors_compétition`=NULL WHERE Inscription=1';
        $res = $monPdo->query($req);
        return $res;
    }
    catch (PDOException $e){
        print "Erreur !: " . $e->getMessage();
        die();
    }
}

/*fonction qui récupére les infos de tous les licenciés "TRADI"*/
function getLicenciésTradi()
{
    try{
        $monPdo = connexionPDO();
        $req = 'SELECT * FROM licencié WHERE `Type_licence`=\'TRADI\'';
        $res = $monPdo->query($req);
        $res = $res->fetchAll();
        return $res;
    }
    catch (PDOException $e){
        print "Erreur !: " . $e->getMessage();
        die();
    }
}

/*fonction qui récupére les infos stocké dans la table famille d'un licencié avec son nom de famille*/
function getInfosFamille($nom){
    try{
        $monPdo = connexionPDO();
        $req = 'SELECT * FROM famille WHERE Nom_famille=\''.$nom.'\'';
        $res = $monPdo->query($req);
        $res = $res->fetch();
        return $res;
    }
    catch (PDOException $e){
        print "Erreur !: " . $e->getMessage();
        die();
    }
}

/*fonction qui récupére les infos stocké dans la table famille d'un licencié avec son nom de famille*/
function getLicenciésByFamille($nom){
    try{
        $monPdo = connexionPDO();
        $req = 'SELECT * FROM licencié WHERE Famille ="'.$_GET['famille'].'"';
        $res = $monPdo->query($req);
        $res = $res->fetch();
        return $res;
    }
    catch (PDOException $e){
        print "Erreur !: " . $e->getMessage();
        die();
    }
}