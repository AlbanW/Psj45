<head>
    <title>Ajouté un participant | Rakket</title>
</head>
<body>
    <div style="display:flex; flex-direction: column;">
        <form action="index.php?p=stage&uc=gestionStages&action=ajouterParticipant" method="post">
            <main style="padding-top: 10em; display: flex; flex-direction: row; justify-content: space-evenly;align-items: center">
                <div>
                    <?php
                    $lesLicenciés = getLicenciés('Nom_licencié','ASC');
                    ?>
                    <select name="licencié" id="licencié" require style="width: 100%;">
                    <?php
                            foreach ($lesLicenciés as $unLicencié)
                            {
                                $prenom = $unLicencié['Prénom_licencié'];
                                $fam = $unLicencié['Nom_licencié'];
                                echo '<option value="'.$unLicencié['Numéro'].'" >'.$fam.' - '.$prenom.'</option >';
                            }
                     ?>
                    </select>
                </div>
                <div>
                    <label for="Stage">Stage</label>
                    <select name="Stage" id="Stage" style="cursor: pointer;width:150px">
                        <?php
                        $lesStages = getStages();
                        foreach($lesStages as &$leStage){
                            echo'<option name="stage" value="'.$leStage['ID'].'">'.$leStage['Libellé'].'</option>';
                        }
                        ?>
                    </select>
                </div>
                <div style="display:flex;align-items: center">
                    <label for="tarif">Semaine complète</label>
                    <input type="checkbox" onclick="disableDayOfWeekSelector()" id="Week" name="Week" value="Week" style="margin-left:15px">       
                </div>
                <div id="selection_jours" class="selection_jours"> 
                    <table>
                        <div id="select_haut" style="display: flex; flex-direction: row; ">
                            <tr>
                            <th>.</th>
                            <th>Lundi</th>
                            <th>Mardi</th>
                            <th>Mercredi</th>
                            <th>Jeudi</th>
                            <th>Vendredi</th>
                            <th>Samedi</th>
                            <th>Dimanche</th>
                            </tr>
                        </div>
                        <div id="select_milieu" style="display: flex; flex-direction: row; align-items: center;">
                            <tr>
                                <th><p>Matin</p></th>
                                <th><input type="checkbox" name="LundiAM" value="LundiAM" style="margin: 0 1em;"></th>
                                <th><input type="checkbox" name="MardiAM" value="MardiAM" style="margin: 0 1em;"></th>
                                <th><input type="checkbox" name="MercrediAM" value="MercrediAM" style="margin: 0 1em;"></th>
                                <th><input type="checkbox" name="JeudiAM" value="JeudiAM" style="margin: 0 1em;"></th>
                                <th><input type="checkbox" name="VendrediAM" value="VendrediAM" style="margin: 0 1em;"></th>
                                <th> <input type="checkbox" name="SamediAM" value="SamediAM" style="margin: 0 1em;"></th>
                                <th> <input type="checkbox" name="DimancheAM" value="DimancheAM" style="margin: 0 1em;"></th>
                            </tr>
                        </div>
                        <div id="select_bas" style="display: flex; flex-direction: row; align-items: center;">
                            <tr>
                                <th><p>Après midi</p></th>
                                <th><input type="checkbox" name="LundiPM" value="LundiPM" style="margin: 0 1em;"></th>
                                <th><input type="checkbox" name="MardiPM" value="MardiPM" style="margin: 0 1em;"></th>
                                <th><input type="checkbox" name="MercrediPM" value="MercrediPM" style="margin: 0 1em;"></th>
                                <th><input type="checkbox" name="JeudiPM" value="JeudiPM" style="margin: 0 1em;"></th>
                                <th><input type="checkbox" name="VendrediPM" value="VendrediPM" style="margin: 0 1em;"></th>
                                <th> <input type="checkbox" name="SamediPM" value="SamediPM" style="margin: 0 1em;"></th>
                                <th> <input type="checkbox" name="DimanchePM" value="DimanchePM" style="margin: 0 1em;"></th>
                            </tr>
                        </div>
                    </table>
                </div>
            </main>
           
            <div style="display: flex; justify-content: center; align-items: center; margin-top: 25px;">
                <input class="btn" type="submit" id="Valider" name="Valider" value="Valider" style="width:300px">
            </div>
        </form>
    </div>
</body>