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
                    <input name="licencié" id="licencié" minlength="2" type="text" placeholder="Entrer le nom - prénom" list="licenciéList" require/>
                    <input type="hidden" name="numLicencié" id="licencié-hidden">
                    <datalist id="licenciéList">
                        <?php
                            foreach ($lesLicenciés as $unLicencié)
                            {
                                $prenom = $unLicencié['Prénom_licencié'];
                                $fam = $unLicencié['Nom_licencié'];
                                echo '<option data-value="'.$unLicencié['Numéro'].'" >'.$fam.' - '.$prenom.'</option >';
                            }
                        ?>
                    </datalist>
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
            <hr>
            <div id="non_licencie" style="display:flex;justify-content: space-evenly;align-items: center">
                <label for="Nom">Nom
                <input type="text"  name="Nom" id="Nom"/></input>
                </label>
                
                <label for="Prénom">Prénom
                <input type="text"  name="Prénom" id="Prénom"/></input>
                </label>

                <label for="Tel_mobile">Tel mobile
                <input type="text"  name="Tel_mobile" id="Tel_mobile"/></input>
                </label>
                        
                <label for="Email_perso">Email perso
                <input  type="text"  name="Email_perso" id="Email_perso"/></input>
                </label>

                <label for="Date_Naissance">Date de naissance
                <input required type="date" name="Date_Naissance" id="Date_Naissance" class="formCreaLicTailleCaseHaut"/></input>     
                </label>
            </div>
            <div style="display: flex; justify-content: center; align-items: center; padding-top: 15em;">
                <input class="btn" type="submit" id="Valider" name="Valider" value="NonLicencié" style="width:300px">
            </div>
        </form>
    </div>
</body>

<script language="JavaScript"type="text/javascript">
    var lesLicenciés = <?php echo json_encode($lesLicenciés); ?>;
    var lesLicenciésNP =[];
    lesLicenciés.forEach(licencie => lesLicenciésNP.push(licencie[1]+" - "+licencie[3]));
    document.querySelector('input[list]').addEventListener('input', function(e) {
        
        var participant= document.getElementById("licencié").value;

        if(lesLicenciésNP.includes(participant)){
            document.getElementById("non_licencie").style.display = "none";
            document.getElementById("Date_Naissance").removeAttribute('required', "");
            State = document.getElementById("Valider").value ='Licencié';
        }
        else{
            document.getElementById("non_licencie").style.display = "flex";
            document.getElementById("Date_Naissance").setAttribute('required', "");
            State = document.getElementById("Valider").value ='NonLicencié';
        }
    });

    document.querySelector('input[list]').addEventListener('input', function(e) {
        
        var input = e.target,
            list = input.getAttribute('list'),
            options = document.querySelectorAll('#' + list + ' option'),
            hiddenInput = document.getElementById(input.getAttribute('id') + '-hidden'),
            inputValue = input.value;

        hiddenInput.value = inputValue;

        

        for(var i = 0; i < options.length; i++) {
            var option = options[i];

            if(option.innerText === inputValue) {
                hiddenInput.value = option.getAttribute('data-value');
                break;
            }
        }
    });
</script>