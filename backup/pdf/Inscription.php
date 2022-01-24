<script src="..\js\x-notify.js"></script>
<script>const Notify = new XNotify();</script>
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
    $interval = $_POST['dateInterval'];
    $Licenciés = getLicenciésTradi();
    if(count($Licenciés)>0){
        date_default_timezone_set('Europe/Paris');
        $now = date('d/m/Y', time());
        $totalDébit = totalDébit($nom,$prenom);
        // Require composer autoload
        require_once '../vendor/autoload.php';
        foreach($Licenciés as $Licencié){
            $infosFamille = getInfosFamille($Licencié['Famille']);
            $date = new DateTime($Licencié['Date_Naissance']);
            $date = $date->format('d/m/Y');
            $html = $html.'
                <BODY>   
                <P class="p0 ft0">PING SAINT JEAN 45</P> 
                <P class="p1 ft1">FICHE INSCRIPTION Saison '.getSeason().' </P>
                <P class="p2 ft1">NOM : <span style="font: normal !important">'.$Licencié['Nom_licencié'].' </span> PRENOM : <span style="font: normal !important">'.$Licencié['Prénom_licencié'].'</span></P>
                <P class="p2 ft1">DATE de NAISSANCE : <span style="font: normal !important">'.$date.'</span>. Nationalité : <span style="font: normal !important">'.$Licencié['Nationalité'].'</span>.</P>
                <P class="p2 ft1">ADRESSE : <span style="font: normal !important">'.$infosFamille['Adresse'].'</span> </P>
                <P class="p3 ft1"> <span style="font: normal !important">'.$infosFamille['Ville'].'</span></P>
                <P class="p2 ft2">Sexe : ';
                if($Licencié['Sexe']=='M'){
                    $html = $html.'<input checked="checked" type="checkbox"></input> Masculin <input type="checkbox"></input>';
                }else{
                    $html = $html.'<input type="checkbox"></input> Masculin <input checked="checked" type="checkbox"></input>';
                }
                $html = $html.'  Féminin</P>
                <P class="p4 ft2">Tél : Domicile : '.$Licencié['Tel_domicile'].' Professionnel : '.$Licencié['Tel_travail'].' N° Portable : '.$Licencié['Tel_mobile'].'.</P>
                <P class="p1 ft2"><NOBR>e-mail</NOBR> perso : '.$Licencié['Email_perso'].'</P>
                <P class="p1 ft2"><NOBR>e-mail</NOBR> travail : '.$Licencié['Email_travail'].'</P>
                <P class="p5 ft2">Pour les nouveaux licenciés : <NOBR>pouvez-vous</NOBR> nous préciser comment vous avez connu le club ?</P>
                <TABLE cellpadding=0 cellspacing=0 class="t0">
                <TR>
                    <TD class="tr0 td0"><P class="p6 ft2"><input type="checkbox"></input> affiches/tracts <input type="checkbox"></input> site internet</P></TD>
                    <TD class="tr0 td1"><P class="p6 ft2"><input type="checkbox"></input> bouche à oreille <input type="checkbox"></input> presse <input type="checkbox"></input> mairie <input type="checkbox"></input> forum des assos</P></TD>
                </TR>
                </TABLE>
                <P class="p7 ft2"><SPAN class="ft2"><input type="checkbox"></input></SPAN><SPAN class="ft3">autre : merci de préciser …………………………………………………………………………………</SPAN></P>
                <P class="p5 ft4">Je soussigné Mr / Mme………………………………… , autorise les éducateurs ou les responsables du club à:</P>
                <P class="p8 ft2"><SPAN class="ft2">-</SPAN><SPAN class="ft3">faire pratiquer sur mon enfant tout acte médical ou chirurgical qui apparaîtrait indispensable, en cas d’accident survenu au cours des entraînements ou lors des compétitions.</SPAN></P>
                <P class="p9 ft2"><SPAN class="ft2">-</SPAN><SPAN class="ft3">à prendre des photos ou des vidéos de mon enfant ou de </SPAN><NOBR>moi-même</NOBR> et à les publier dans des documents internes, dans la presse et sur des sites internet de tennis de table.</P>
                <TABLE cellpadding=0 cellspacing=0 class="t1">
                <TR>
                    <TD class="tr0 td2"><P class="p6 ft2"><input type="checkbox"></input> OUI</P></TD>
                    <TD class="tr0 td3"><P class="p6 ft2"><input type="checkbox"></input> NON</P></TD>
                </TR>
                </TABLE>
                <P class="p10 ft5">Le club vous rappelle que les parents sont tenus de remettre leurs enfants aux éducateurs sportifs et de venir les récupérer à la fin des entraînements, conformément aux horaires des séances. L’accord parental est nécessaire pour déroger aux horaires en place. Le club ne pourra être tenu pour responsable de tout incident ou accident qui interviendrait en dehors de ces plages horaires.</P>
                <P class="p11 ft2">Je reconnais avoir pris connaissance des conditions du contrat d’assurance N°4.285.000 négocié par la FFTT auprès de COVEA RISKS et la possibilité de souscrire des garanties complémentaires.</P>
                <TABLE cellpadding=0 cellspacing=0 class="t2">
                <TR>
                    <TD class="tr1 td4"><P class="p6 ft6">&nbsp;</P></TD>
                    <TD class="tr1 td5"><P class="p6 ft6">&nbsp;</P></TD>
                    <TD class="tr1 td6"><P class="p6 ft6">&nbsp;</P></TD>
                    <TD class="tr1 td7"><P class="p6 ft6">&nbsp;</P></TD>
                    <TD class="tr1 td8"><P class="p6 ft6">&nbsp;</P></TD>
                    <TD colspan=3 class="tr1 td9"><P class="p12 ft7">A St Jean de la Ruelle le</P></TD>
                    <TD class="tr1 td10"><P class="p6 ft2">…………….</P></TD>
                </TR>
                <TR>
                    <TD class="tr2 td4"><P class="p6 ft6">&nbsp;</P></TD>
                    <TD class="tr2 td5"><P class="p6 ft6">&nbsp;</P></TD>
                    <TD class="tr2 td6"><P class="p6 ft6">&nbsp;</P></TD>
                    <TD class="tr2 td7"><P class="p6 ft6">&nbsp;</P></TD>
                    <TD class="tr2 td8"><P class="p6 ft6">&nbsp;</P></TD>
                    <TD colspan=2 class="tr2 td11"><P class="p12 ft2">Signature :</P></TD>
                    <TD class="tr2 td12"><P class="p6 ft6">&nbsp;</P></TD>
                    <TD class="tr2 td10"><P class="p6 ft6">&nbsp;</P></TD>
                </TR>
                <TR>
                    <TD class="tr3 td4"><P class="p6 ft2">COTISATION</P></TD>
                    <TD colspan=2 class="tr3 td13"><P class="p6 ft2">………… ( Montant euros )</P></TD>
                    <TD class="tr3 td7"><P class="p6 ft6">&nbsp;</P></TD>
                    <TD colspan=5 class="tr3 td14"><P class="p6 ft2">DON inscription ………… ( Montant euros )</P></TD>
                </TR>
                <TR>
                    <TD colspan=3 class="tr4 td15"><P class="p13 ft8">Paiement possible par Tickets CAF/ Pass\'loisirs</P></TD>
                    <TD colspan=3 class="tr4 td16"><P class="p6 ft8">et Chèques Vacances</P></TD>
                    <TD class="tr4 td17"><P class="p6 ft6">&nbsp;</P></TD>
                    <TD class="tr4 td12"><P class="p6 ft6">&nbsp;</P></TD>
                    <TD class="tr4 td10"><P class="p6 ft6">&nbsp;</P></TD>
                </TR>
                <TR>
                    <TD class="tr5 td4"><P class="p6 ft9">Critérium Fédéral</P></TD>
                    <TD class="tr5 td5"><P class="p14 ft2"><input type="checkbox"></input> OUI</P></TD>
                    <TD class="tr5 td6"><P class="p15 ft2"><input type="checkbox"></input> NON</P></TD>
                    <TD colspan=4 class="tr5 td18"><P class="p16 ft2">Compétitions ( ex TJL )</P></TD>
                    <TD class="tr5 td12"><P class="p6 ft2"><input type="checkbox"></input> OUI</P></TD>
                    <TD class="tr5 td10"><P class="p17 ft2"><input type="checkbox"></input> NON</P></TD>
                </TR>
                <TR>
                    <TD class="tr5 td4"><P class="p6 ft2"><input type="checkbox"></input> Espèces</P></TD>
                    <TD colspan=6 class="tr5 td19"><P class="p18 ft7"><input type="checkbox"></input> chèque (banque) <input type="checkbox"></input> Tickets CAF / Pass\'loisirs : montant</P></TD>
                    <TD class="tr5 td12"><P class="p6 ft6">&nbsp;</P></TD>
                    <TD class="tr5 td10"><P class="p17 ft2"><input type="checkbox"></input> Autre</P></TD>
                </TR>
                <TR>
                    <TD colspan=2 class="tr6 td20"><P class="p6 ft2">Certificat médical obligatoire :</P></TD>
                    <TD class="tr6 td6"><P class="p15 ft2">Fourni</P></TD>
                    <TD class="tr6 td7"><P class="p19 ft2"><input type="checkbox"></input></P></TD>
                    <TD class="tr6 td8"><P class="p20 ft2">OUI</P></TD>
                    <TD class="tr6 td21"><P class="p6 ft2"><input type="checkbox"></input></P></TD>
                    <TD class="tr6 td17"><P class="p6 ft2">NON</P></TD>
                    <TD class="tr6 td12"><P class="p6 ft6">&nbsp;</P></TD>
                    <TD class="tr6 td10"><P class="p6 ft6">&nbsp;</P></TD>
                </TR>
                <TR>
                    <TD colspan=2 class="tr7 td20"><P class="p6 ft9">Questionnaire médical et attestation :</P></TD>
                    <TD class="tr7 td6"><P class="p6 ft2">Fourni</P></TD>
                    <TD class="tr7 td7"><P class="p21 ft2"><input type="checkbox"></input></P></TD>
                    <TD class="tr7 td8"><P class="p22 ft2">OUI</P></TD>
                    <TD class="tr7 td21"><P class="p23 ft2"><input type="checkbox"></input></P></TD>
                    <TD class="tr7 td17"><P class="p23 ft2">NON</P></TD>
                    <TD class="tr7 td12"><P class="p6 ft6">&nbsp;</P></TD>
                    <TD class="tr7 td10"><P class="p6 ft6">&nbsp;</P></TD>
                </TR>
                </TABLE>
                <P class="p24 ft2">Partie réservée au secrétariat du club</P>
                </DIV>
                </BODY>
                </HTML>
                <br><br><br><br>';
        }    
        $stylesheet = file_get_contents('ficheInscription.css');
        $mpdf = new \Mpdf\Mpdf();
        $mpdf->SetDefaultBodyCSS('background', "url('../img/backgroundFicheInscription.jpg')");
        $mpdf->WriteHTML($stylesheet, \Mpdf\HTMLParserMode::HEADER_CSS);
        $mpdf->WriteHTML($html,  \Mpdf\HTMLParserMode::HTML_BODY);
        $mpdf->Output('ficheRéinscription.pdf', "I");
    }
    else{
        echo'
        <div></div>
        <script>
        Notify.error({ 
            title: "Aucun licencié Tradi trouvé", 
            description: "Pour pouvoir générer la fiche licencié préremplie A+1 veuillez tout d\'abord ajouter de licenciés TRADI.", 
            duration: 4000
        });
        setTimeout(() =>{ window.history.back(); }, 3200);
        </script>';
    }
    if($_GET==""){
        echo "<script>window.close();</script>";
        suppressionOpération();
        désinscription();
    }
?>