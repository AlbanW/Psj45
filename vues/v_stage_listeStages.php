<head>
	<title>Liste des Stages | Rakket</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/js/bootstrap-datepicker.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/css/bootstrap-datepicker.css" rel="stylesheet"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/locales/bootstrap-datepicker.fr.min.js"></script>  
</head>	<!-- formulaire pour modifier une famille-->
<!-- Affichage de la barre d'outils et attribution de la variable "$_Session['type']" qui permet de connaitre les éléments sur les quelles doivent s'appliquer les outils (exemple : licencié, tarif, comptes) -->
<?php
    $_SESSION['type']='stages';
?>
<script>
    showHeaderTools('stages');
</script>
<!--Fin du code permetant l'affichage des outils-->
<div class="vScroll">
	<FORM action="index.php?test2=test2&uc=gestionLicenciés&action=modifierFamille" method="post">
        <?php
            echo '
            <span class="Tableau">
            <ul class="menu_categories">
                <li class="categorie_input">Libellé</li>
                <li class="categorie_input">Date</li>
                <li class="categorie_input">Code Tarif</li>
                <li class="categorie_input">Nombre de participant</li>
            </ul>
            <br/>
            </span>
        ';
        if(isset($_POST['search'])){
            $lesFamilles = searchFamilles($_POST['key']);
        }
        else{
            $lesStages = getStages();
        }
        foreach($lesStages as $unStage){;
        ?>

        <span class="Tableau">
            <label class="checkbox_label">
                <input type="checkbox" autocomplete="off" onclick="getNumberSelectedElements(<?php echo $unStage['ID']; ?>)" style="width:45px;" class="Selected";>
                <span class="checkmark"></span>
            </label>
            
            <div class="contient">
                <?php

                $listday = "";
                if($unStage['Jour1']!=""){
                    $Jour1 = new DateTime($unStage['Jour1']);
                    $unStage['Jour1'] = $Jour1->format('d/m/Y');
                    $listday .= $unStage['Jour1'];
                }
                else{
                    $unStage['Jour1'] ="";
                }
                if($unStage['Jour2']!=""){
                    $Jour2 = new DateTime($unStage['Jour2']);
                    $unStage['Jour2'] = $Jour2->format('d/m/Y');
                    $listday .= ','.$unStage['Jour2'];
                }
                else{
                    $unStage['Jour2'] ="";
                }
                if($unStage['Jour3']!=""){
                    $Jour3 = new DateTime($unStage['Jour3']);
                    $unStage['Jour3'] = $Jour3->format('d/m/Y');
                    $listday .= ','.$unStage['Jour3'];
                }
                else{
                    $unStage['Jour3'] ="";
                }
                if($unStage['Jour4']!=""){
                    $Jour4 = new DateTime($unStage['Jour4']);
                    $unStage['Jour4'] = $Jour4->format('d/m/Y');
                    $listday .= ','.$unStage['Jour4'];
                }
                else{
                    $unStage['Jour4'] ="";
                }
                if($unStage['Jour5']!=""){
                    $Jour5 = new DateTime($unStage['Jour5']);
                    $unStage['Jour5'] = $Jour5->format('d/m/Y');
                    $listday .= ','.$unStage['Jour5'];
                }
                else{
                    $unStage['Jour5'] ="";
                }
                if($unStage['Jour6']!=""){
                    $Jour6 = new DateTime($unStage['Jour6']);
                    $unStage['Jour6'] = $Jour6->format('d/m/Y');
                    $listday .= ','.$unStage['Jour6'];
                }
                else{
                    $unStage['Jour6'] ="";
                }
                if($unStage['Jour7']!=""){
                    $Jour7 = new DateTime($unStage['Jour7']);
                    $unStage['Jour7'] = $Jour7->format('d/m/Y');
                    $listday .= ','.$unStage['Jour7'];
                }
                else{
                    $unStage['Jour7'] ="";
                }

            ?>
         <a href="index.php?p=stage&test=test&uc=gestionStages&action=voirStage&numero=<?php echo $unStage['ID']; ?>"><input readonly type="text" name="Numéro[]" id="Famille" class="formLicTaille10"  style="cursor: pointer;" value="<?php echo $unStage['Libellé']; ?>" />
         </a>
                <input onchange="update()" type="text" id="Txt_Date" placeholder="Date" style="cursor: pointer;" value="<?php echo $listday?>">
                <!--script type="text/javascript">
                    ;(function($){
                        $.fn.datepicker.dates['FR'] = {
                        days: ["dimanche", "lundi", "mardi", "mercredi", "jeudi", "vendredi", "samedi"],
                        daysShort: ["dim.", "lun.", "mar.", "mer.", "jeu.", "ven.", "sam."],
                        daysMin: ["d", "l", "ma", "me", "j", "v", "s"],
                        months: ["janvier", "février", "mars", "avril", "mai", "juin", "juillet", "août", "septembre", "octobre", "novembre", "décembre"],
                        monthsShort: ["janv.", "févr.", "mars", "avril", "mai", "juin", "juil.", "août", "sept.", "oct.", "nov.", "déc."],
                        today: "Aujourd'hui",
                        monthsTitle: "Mois",
                        clear: "Effacer",
                        weekStart: 1,
                        format: "dd/mm/yyyy"
                        };
                    }(jQuery));
                    $("#Txt_Date").datepicker({
                        format: 'dd/mm/yyyy',
                        inline: true,
                        language: 'fr',
                        step: 7,
                        multidate: 7,
                        container: '.contient',
                        orentation: top,
                        startDate: '-4d',
                        widgetPositioning: {horizontal: "bottom",vertical: "auto"}
                    });
                    function update(){
                        $date = $("#Txt_Date").data('datepicker').getFormattedDate('yyyy-mm-dd');
                        document.cookie="selectedDays="+$date+";max-age=86400;";
                    }
                </script-->
           </div>
           <input type="text" name="Adresse[]" id="Adresse" class="formFamTailleVilleAdresse" value="<?php echo (getTarifsStageByNum($unStage['Num_Tarif'])['Libellé']);?>"/>
           <input type="text" name="Adresse[]" id="Adresse" class="formFamTailleVilleAdresse" value="<?php echo (getAmountParticipantsInStage($unStage['ID']));?>"/>
        
        </span>
        <?php
        }
        ?>
        <br/>
            <span class="Tableau">
        
        <button type="submit" class="btn" value='sav' style="margin-top: 28px; width:150px" >Enregistrer</button>
        </span>
	</FORM>
    </div>