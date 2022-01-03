<?php
    function getSeason(){
        date_default_timezone_set('Europe/Paris');
        $time = strtotime("now");
        $year = date('Y', $time);
        if(date('n', $time)<7){
            $date = ($year-1).'-'.$year;
        }
        else{
            $date = $year.'-'.($year+1);
        }
        return $date;
    }
    require_once("../modele/bd.licenciés.inc.php");
    $num=$_POST['licencié'];
    $Licencié = getLesInfosLicenciésByNum($num);
    date_default_timezone_set('Europe/Paris');
    $now = date('d/m/Y', time());
    if($Licencié['Sexe']=='M'){
        $accr = 'M';
    }
    else{
        $accr = 'Mme';
    }
    $beginSeason = explode('-',getSeason())[0];
    $endSeason = explode('-',getSeason())[1];
    $fam = $Licencié['Famille'];
    $nom = $Licencié['Nom_licencié'];
    $prenom = $Licencié['Prénom_licencié'];
    $totalDébit = totalCrédit($fam,$prenom);
    // Require composer autoload
    require_once '../vendor/autoload.php';
    $html = '
    <div id="#e1">
        <div id="e3" class="cls_002"><span class="cls_002">PING SAINT JEAN 45</span></div>
        <div id="e4" class="cls_002"><span class="cls_002">77 rue Croix Baudu, 45140 St Jean de la Ruelle</span></div>
        <div id="e5" class="cls_002"><span class="cls_002">Tél : 02 38 72 02 94    e-mail : psj45@orange.fr</span></div>
        <div id="e6" class="cls_002"><span class="cls_002">Site internet : </span>
            <A HREF="http://www.pingsaintjean45.fr.gd/">http://www.pingsaintjean45.fr.gd/</A> </div>
        <div id="e7" class="cls_003"><span class="cls_003">Mr Thierry QUETARD,  Président</span></div>
        <div id="e8" class="cls_003"><span class="cls_003">e-mail : quetard.thierry@wanadoo.fr</span></div>
        <div id="e9" class="cls_003"><span class="cls_003">Tél : 02 38 66 04 06</span></div>
        <div id="e10" class="cls_004"><span class="cls_004">le '.$now.'</span></div>
        <div id="e12" class="cls_004"><span class="cls_004">Je soussigné: Mr Thierry QUETARD, Président du club de tennis de table, <span class="cls_003">PING ST JEAN 45,</span> </span></div>
        <div id="e14" class="cls_004"><span class="cls_004">certifie  que <span class="cls_005">'.$accr.' '.$nom.'</span></span></div>
        <div id="e16" class="cls_004"><span class="cls_004">a payé la somme de '.$totalDébit.' euros au club</span></div>
        <div id="e19" class="cls_004"><span class="cls_004">au titre de l\'inscription de  '.$prenom.' '.$nom.' pour la saison '.getSeason().'  (Juillet '.$beginSeason.' à Juin '.$endSeason.').</span></div>
        <div id="e20" class="cls_004"><span class="cls_004">Ce document pour faire valoir ce que de droit.</span></div>
        <div id="e21" class="cls_004"><span class="cls_004">Mr  Thierry QUETARD</span></div>
        <div id="e22" class="cls_003"><span class="cls_003">PING ST JEAN 45 <span class="cls_003">N° SIRET : 495 132 086 00010   Code APE :  9312Z</span></span></div>
        <div id="e24" class="cls_003"><span class="cls_003">Agrément Jeunesse et Sport   N°  45-07-011-S        Affiliation FFTT :  2345075</span></div>
    </div>
    ';
    $stylesheet = file_get_contents('DemandeAttestationLicencie.css');
    $mpdf = new \Mpdf\Mpdf();
    $mpdf->SetDefaultBodyCSS('background', "url('../img/backgroundAttestation.jpg')");
    $mpdf->WriteHTML($stylesheet, \Mpdf\HTMLParserMode::HEADER_CSS);
    $mpdf->WriteHTML($html,  \Mpdf\HTMLParserMode::HTML_BODY);
    $mpdf->Output('filename.pdf', "I");
?>