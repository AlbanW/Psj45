<head>
	<title>Créer un stage | Rakket</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/js/bootstrap-datepicker.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/css/bootstrap-datepicker.css" rel="stylesheet"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/locales/bootstrap-datepicker.fr.min.js"></script>  
</head>
<!-- Formulaire de création d'un stage -->


<center><br><br>
<h1>Modifier stage</h1><br><br>
</center>
	<FORM action="index.php?p=stage&uc=gestionStages&action=créerStage" method="post">
        <div style="display: flex; justify-content: center; align-items: flex-start; ">
        <br>
        <div style="padding:1em">
        <label for="Libelle">Libellé</label>
        <input type="text" required name="Libelle" value="<?= $unStage['Libellé']; ?>"  id="Libelle" class="formCreaLicTailleCaseHaut"/>
        </div>
        <div style="padding:1em">
        <label for="tarif">Tarif</label>
        <select name="tarif" id="tarif" style="cursor: pointer;">
            <?php
            foreach(getTarifsStage() as &$tarif){
                if($tarif['Numéro'] == $stageTarif)
                    echo'<option value="'.$tarif['Numéro'].'" selected>'.$tarif['Code'].'</option>';
                else
                    echo'<option value="'.$tarif['Numéro'].'">'.$tarif['Code'].'</option>';
            }
            ?>   
        </select>
        </div>
        <div class="contient"style="padding:1em">
        <label for="Txt_Date">Dates</label>
        <input onchange="update()" type="text" id="Txt_Date" placeholder="Dates" style="cursor: pointer;">
        <script type="text/javascript">
            ;(function($){
                $.fn.datepicker.dates['FR'] = {
                days: ["dimanche", "lundi", "mardi", "mercredi", "jeudi", "vendredi", "samedi"],
                daysShort: ["dim.", "lun.", "mar.", "mer.", "jeu.", "ven.", "sam."],
                daysMin: ["d", "l", "ma", "me", "j", "v", "s"],
                months: ["Janvier", "Février", "Mars", "Avril", "Mai", "Juin", "Juillet", "Août", "Septembre", "Octobre", "Novembre", "Décembre"],
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
                todayHighlight: true,
                orentation: top,
                startDate: '-4d',
                widgetPositioning: {horizontal: "bottom",vertical: "auto"}
            });
            function update(){
                $date = $("#Txt_Date").data('datepicker').getFormattedDate('yyyy-mm-dd');
                document.cookie="selectedDays="+$date+";max-age=86400;";
            }
        </script>
        </div>
        </div>
        <div style="display: flex; justify-content: center; align-items: center;">
            <input class="btn" type="submit" value="Valider" style="width:300px">
        </div>
</FORM>
<br><br><br>
<hr>
<br><br><br>
<center>
<h1>Liste participant</h1>
</center><br><br>
<?php
$participants = getParticipantsInStage($unStage['ID']);    
echo '
<span class="Tableau">
<ul class="menu_categories">
    <li class="categorie_input" style="padding-left:45px">Nom</li>
    <li class="categorie_input">Prenom</li>
    <li class="categorie_input" style="width:100px;">Stage n°</li>
    <li class="categorie_input" style="width:100px;">Reste a payer</li>
</ul>
<br/>
</span>
';
foreach($participants as $unParticipant){;
                $Nom = $unParticipant['Nom_licencié'];
                $Prenom = $unParticipant['Prénom_licencié'];
                $Libellé = $unStage['Libellé'];
        ?>
        <span class="Tableau">
            <label class="checkbox_label">
                <input type="checkbox" id="checktest" autocomplete="off" onclick="deleteRow()" style="width:45px;" class="Selected";>
                <span class="checkmark"></span>
            </label>
            
            <input type="hidden" name="Numéro[]" id="Numéro_part" value="<?php echo $num;?>">
            <input type="text" required name="Nom_participant[]" id="Nom_participant" class="formFamTailleNom" style="width:175px;" value="<?php echo $Nom?>"/>
            <input type="text" required name="Prenom_participant[]" id="Prenom_participant" class="formFamTailleNom" style="width:175px;" value="<?php echo $Prenom?>"/>
            <input type="text" required name="ID_Stage[]" id="ID_stage" class="formFamTailleNom" style="width:175px;" value="<?php echo $Libellé ?>"/>
            <input type="text" required name="ID_Stage[]" id="ID_stage" class="formFamTailleNom" style="width:175px;" value="A FAIRE"/>
        </span>
        <?php
        }
        ?>
        <div style="display: flex; justify-content: center; align-items: center;">
            <input class="btn_delete" id="deleteCheckbox" style="display:none;width:300px" type="submit" value="Supprimer"  ">
        </div>
        <script>
            function deleteRow()
            {
                var valores = (function () {
                var valor = [];
                $('input.Selected[type=checkbox]').each(function () {
                    if (this.checked)
                        valor.push($(this).val());
                });
                return valor;

            })();
                var size = valores.length;
                if(size > 0)
                {
                    elmts = document.getElementsByClassName("btn_delete");
                    for(var i=0;i<elmts.length;i++)
                    {
                        elmts[i].style.display='block';
                    }
                } else {
                    elmts = document.getElementsByClassName("btn_delete");
                    for(var i=0;i<elmts.length;i++)
                    {
                        elmts[i].style.display='none';
                    }
                }
            }
        </script>