<head>
	<title>Créer un stage | Rakket</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/js/bootstrap-datepicker.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/css/bootstrap-datepicker.css" rel="stylesheet"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/locales/bootstrap-datepicker.fr.min.js"></script>  
</head>
<!-- Formulaire de création d'un stage -->
	<FORM action="index.php?p=stage&uc=gestionStages&action=créerStage" method="post">
        <div style="display: flex; justify-content: center; align-items: flex-start; padding-top: 15em;">
        <br>
        <div style="padding:1em">
        <label for="Libelle">Libellé</label>
        <input type="text" required name="Libelle" id="Libelle" class="formCreaLicTailleCaseHaut"/>
        </div>
        <div style="padding:1em">
        <label for="tarif">Tarif</label>
        <select name="tarif" id="tarif" style="cursor: pointer;">
            <?php
            foreach(getTarifsStage() as &$tarif){
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
        <div style="display: flex; justify-content: center; align-items: center; padding-top: 15em;">
            <input class="btn" type="submit" value="Valider" style="width:300px">
        </div>
</FORM>