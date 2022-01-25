<head>
    <title>Modifier une participation | Rakket</title>
</head>
<body>
    <div style="display:flex; flex-direction: column;">

    <div class="formUn">
        <input type="hidden" name="Numéro" id="Numéro" value="<?php echo $participant['Numéro']; ?>">
        <div class="Colonne">
            <label for="Famille">Famille</label>
            <input disabled type="text" name="Famille" id="Famille" class="formLicTaille10" value="<?php echo $unLicencié['Famille']; ?>"/>

            <label for="Tel_mobile">Tel mobile</label>
            <input disabled type="text" name="Tel_mobile" id="Tel_mobile" class="formLicTailleTel" value="<?php echo $unLicencié['Tel_mobile']; ?>"/>

            <label for="Email_perso">Email perso</label>
            <input disabled type="text" name="Email_perso" id="Email_perso" class="formLicTaille10" value="<?php echo $unLicencié['Email_perso']; ?>"/>
        </div>
        <div class="Colonne">
            <label for="Nom_licencié">Nom licencié</label>
            <input disabled type="text" name="Nom_licencié" id="Nom_licencié" class="formLicTaille10" value="<?php echo $unLicencié['Nom_licencié']; ?>"/>

            <label for="Tel_domicile">Tel domicile</label>
            <input type="text" name="Tel_domicile" id="Tel_domicile" class="formLicTailleTel" value="<?php echo $unLicencié['Tel_domicile']; ?>"/>

            <label for="Email_travail">Email travail</label>
            <input disabled type="text" name="Email_travail" id="Email_travail" class="formLicTaille10" value="<?php echo $unLicencié['Email_travail']; ?>"/>
        </div>

        <div class="Colonne">

            <label for="Prénom_licencié">Prénom licencié</label>
            <input disabled type="text" name="Prénom_licencié" id="Prénom_licencié" class="formLicTaille10" value="<?php echo $unLicencié['Prénom_licencié']; ?>"/>

            <label for="Tel_travail">Tel travail</label>
            <input disabled type="text" name="Tel_travail" id="Tel_travail" class="formLicTailleTel" value="<?php echo $unLicencié['Tel_travail']; ?>"/>

            <label for="Nationalité">Nationalité</label>
            <input disabled type="text" name="Nationalité" id="Nationalité" class="formCreaLicTailleCaseNatio"/>
    </div>
        </div>
        <hr>
<center><br><br>
<h1>Modifier la participation au <u><?= $unStage['Libellé'];?></u> pour <u><?= $unLicencié['Nom_licencié']; ?> <?= $unLicencié['Prénom_licencié']; ?></u></h1><br>

        <form action="index.php?p=stage&uc=gestionStages&action=modifierParticipant&numero=<?= $participant['Numéro']; ?>&numlic=<?=$unLicencié['Numéro']; ?>" method="post">

        
            
        <main style=" display: flex; flex-direction: row; justify-content: space-evenly;align-items: center">
        <div style="display:flex;align-items: center">
                    <label for="tarif">Semaine complète</label>
                    <?php if($participant['complet'] == 1) { ?>
                    <input type="checkbox" checked onclick="disableDayOfWeekSelector()" id="Week" name="Week" style="margin-left:15px">       
                    <?php } else { ?> 
                        <input type="checkbox" onclick="disableDayOfWeekSelector()" id="Week" name="Week" style="margin-left:15px">
                        <?php } ?>
                </div>
    </main>
        <main style="padding-top: 3em; display: flex; flex-direction: row; justify-content: space-evenly;align-items: center">
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

                        <?php 
                        if($participant['complet'] == 1) {
                        ?>
                        <div id="select_milieu" style="display: flex; flex-direction: row; align-items: center;">
                            <tr>
                                <th><p>Matin</p></th>
                                <?php if($participant['l_m'] == 1) { ?>
                                    <th><input disabled type="checkbox" checked name="LundiAM" value="LundiAM" style="margin: 0 1em;"></th>
                                <?php } else { ?> 
                                    <th><input disabled type="checkbox" name="LundiAM" value="LundiAM" style="margin: 0 1em;"></th>
                                <?php } ?>

                                <?php if($participant['ma_m'] == 1) { ?>
                                    <th><input disabled type="checkbox" checked name="MardiAM" value="MardiAM" style="margin: 0 1em;"></th>
                                <?php } else { ?> 
                                    <th><input disabled type="checkbox" name="MardiAM" value="MardiAM" style="margin: 0 1em;"></th>
                                <?php } ?>

                                <?php if($participant['mer_m'] == 1) { ?>
                                    <th><input disabled type="checkbox" checked name="MercrediAM" value="MercrediAM" style="margin: 0 1em;"></th>
                                <?php } else { ?> 
                                    <th><input disabled type="checkbox" name="MercrediAM" value="MercrediAM" style="margin: 0 1em;"></th>
                                <?php } ?>

                                <?php if($participant['jeudi_m'] == 1) { ?>
                                    <th><input disabled type="checkbox" checked name="JeudiAM" value="JeudiAM" style="margin: 0 1em;"></th>
                                <?php } else { ?> 
                                    <th><input disabled type="checkbox" name="JeudiAM" value="JeudiAM" style="margin: 0 1em;"></th>
                                <?php } ?>

                                
                                <?php if($participant['vendredi_m'] == 1) { ?>
                                    <th><input disabled type="checkbox" checked name="VendrediAM" value="VendrediAM" style="margin: 0 1em;"></th>
                                <?php } else { ?> 
                                    <th><input disabled type="checkbox" name="VendrediAM" value="VendrediAM" style="margin: 0 1em;"></th>
                                <?php } ?>
                                          
                                <?php if($participant['samedi_m'] == 1) { ?>
                                    <th><input disabled type="checkbox" checked name="SamediAM" value="SamediAM" style="margin: 0 1em;"></th>
                                <?php } else { ?> 
                                    <th><input disabled type="checkbox" name="SamediAM" value="SamediAM" style="margin: 0 1em;"></th>
                                <?php } ?>
                                          
                                <?php if($participant['dimanche_m'] == 1) { ?>
                                    <th><input disabled type="checkbox" checked name="DimancheAM" value="DimancheAM" style="margin: 0 1em;"></th>
                                <?php } else { ?> 
                                    <th><input disabled type="checkbox" name="DimancheAM" value="DimancheAM" style="margin: 0 1em;"></th>
                                <?php } ?>

                                
                            </tr>
                        </div>
                        <div id="select_bas" style="display: flex; flex-direction: row; align-items: center;">
                            <tr>
                                <th><p>Après midi</p></th>
                                <?php if($participant['l_a'] == 1) { ?>
                                    <th><input disabled type="checkbox" checked name="LundiPM" value="LundiPM" style="margin: 0 1em;"></th>
                                <?php } else { ?> 
                                    <th><input disabled type="checkbox" name="LundiPM" value="LundiPM" style="margin: 0 1em;"></th>
                                <?php } ?>

                                <?php if($participant['ma_a'] == 1) { ?>
                                    <th><input disabled type="checkbox" checked name="MardiPM" value="MardiPM" style="margin: 0 1em;"></th>
                                <?php } else { ?> 
                                    <th><input disabled type="checkbox" name="MardiPM" value="MardiPM" style="margin: 0 1em;"></th>
                                <?php } ?>

                                <?php if($participant['mer_a'] == 1) { ?>
                                    <th><input disabled type="checkbox" checked name="MercrediPM" value="MercrediPM" style="margin: 0 1em;"></th>
                                <?php } else { ?> 
                                    <th><input disabled type="checkbox" name="MercrediPM" value="MercrediPM" style="margin: 0 1em;"></th>
                                <?php } ?>

                                <?php if($participant['jeudi_a'] == 1) { ?>
                                    <th><input disabled type="checkbox" checked name="JeudiPM" value="JeudiPM" style="margin: 0 1em;"></th>
                                <?php } else { ?> 
                                    <th><input disabled type="checkbox" name="JeudiPM" value="JeudiPM" style="margin: 0 1em;"></th>
                                <?php } ?>

                                
                                <?php if($participant['vendredi_a'] == 1) { ?>
                                    <th><input disabled type="checkbox" checked name="VendrediPM" value="VendrediPM" style="margin: 0 1em;"></th>
                                <?php } else { ?> 
                                    <th><input disabled type="checkbox" name="VendrediPM" value="VendrediPM" style="margin: 0 1em;"></th>
                                <?php } ?>
                                          
                                <?php if($participant['samedi_a'] == 1) { ?>
                                    <th><input disabled type="checkbox" checked name="SamediPM" value="SamediPM" style="margin: 0 1em;"></th>
                                <?php } else { ?> 
                                    <th><input disabled type="checkbox" name="SamediPM" value="SamediPM" style="margin: 0 1em;"></th>
                                <?php } ?>
                                          
                                <?php if($participant['dimanche_a'] == 1) { ?>
                                    <th><input disabled type="checkbox" checked name="DimanchePM" value="DimanchePM" style="margin: 0 1em;"></th>
                                <?php } else { ?> 
                                    <th><input disabled type="checkbox" name="DimanchePM" value="DimanchePM" style="margin: 0 1em;"></th>
                                <?php } ?>
                            </tr>
                        </div>
                        <?php }else{ ?>
                            <div id="select_milieu" style="display: flex; flex-direction: row; align-items: center;">
                            <tr>
                                <th><p>Matin</p></th>
                                <?php if($participant['l_m'] == 1) { ?>
                                    <th><input type="checkbox" checked name="LundiAM" value="LundiAM" style="margin: 0 1em;"></th>
                                <?php } else { ?> 
                                    <th><input type="checkbox" name="LundiAM" value="LundiAM" style="margin: 0 1em;"></th>
                                <?php } ?>

                                <?php if($participant['ma_m'] == 1) { ?>
                                    <th><input type="checkbox" checked name="MardiAM" value="MardiAM" style="margin: 0 1em;"></th>
                                <?php } else { ?> 
                                    <th><input type="checkbox" name="MardiAM" value="MardiAM" style="margin: 0 1em;"></th>
                                <?php } ?>

                                <?php if($participant['mer_m'] == 1) { ?>
                                    <th><input type="checkbox" checked name="MercrediAM" value="MercrediAM" style="margin: 0 1em;"></th>
                                <?php } else { ?> 
                                    <th><input type="checkbox" name="MercrediAM" value="MercrediAM" style="margin: 0 1em;"></th>
                                <?php } ?>

                                <?php if($participant['jeudi_m'] == 1) { ?>
                                    <th><input type="checkbox" checked name="JeudiAM" value="JeudiAM" style="margin: 0 1em;"></th>
                                <?php } else { ?> 
                                    <th><input type="checkbox" name="JeudiAM" value="JeudiAM" style="margin: 0 1em;"></th>
                                <?php } ?>

                                
                                <?php if($participant['vendredi_m'] == 1) { ?>
                                    <th><input type="checkbox" checked name="VendrediAM" value="VendrediAM" style="margin: 0 1em;"></th>
                                <?php } else { ?> 
                                    <th><input type="checkbox" name="VendrediAM" value="VendrediAM" style="margin: 0 1em;"></th>
                                <?php } ?>
                                          
                                <?php if($participant['samedi_m'] == 1) { ?>
                                    <th><input type="checkbox" checked name="SamediAM" value="SamediAM" style="margin: 0 1em;"></th>
                                <?php } else { ?> 
                                    <th><input type="checkbox" name="SamediAM" value="SamediAM" style="margin: 0 1em;"></th>
                                <?php } ?>
                                          
                                <?php if($participant['dimanche_m'] == 1) { ?>
                                    <th><input type="checkbox" checked name="DimancheAM" value="DimancheAM" style="margin: 0 1em;"></th>
                                <?php } else { ?> 
                                    <th><input type="checkbox" name="DimancheAM" value="DimancheAM" style="margin: 0 1em;"></th>
                                <?php } ?>

                                
                            </tr>
                        </div>
                        <div id="select_bas" style="display: flex; flex-direction: row; align-items: center;">
                            <tr>
                                <th><p>Après midi</p></th>
                                <?php if($participant['l_a'] == 1) { ?>
                                    <th><input type="checkbox" checked name="LundiPM" value="LundiPM" style="margin: 0 1em;"></th>
                                <?php } else { ?> 
                                    <th><input type="checkbox" name="LundiPM" value="LundiPM" style="margin: 0 1em;"></th>
                                <?php } ?>

                                <?php if($participant['ma_a'] == 1) { ?>
                                    <th><input type="checkbox" checked name="MardiPM" value="MardiPM" style="margin: 0 1em;"></th>
                                <?php } else { ?> 
                                    <th><input type="checkbox" name="MardiPM" value="MardiPM" style="margin: 0 1em;"></th>
                                <?php } ?>

                                <?php if($participant['mer_a'] == 1) { ?>
                                    <th><input type="checkbox" checked name="MercrediPM" value="MercrediPM" style="margin: 0 1em;"></th>
                                <?php } else { ?> 
                                    <th><input type="checkbox" name="MercrediPM" value="MercrediPM" style="margin: 0 1em;"></th>
                                <?php } ?>

                                <?php if($participant['jeudi_a'] == 1) { ?>
                                    <th><input type="checkbox" checked name="JeudiPM" value="JeudiPM" style="margin: 0 1em;"></th>
                                <?php } else { ?> 
                                    <th><input type="checkbox" name="JeudiPM" value="JeudiPM" style="margin: 0 1em;"></th>
                                <?php } ?>

                                
                                <?php if($participant['vendredi_a'] == 1) { ?>
                                    <th><input type="checkbox" checked name="VendrediPM" value="VendrediPM" style="margin: 0 1em;"></th>
                                <?php } else { ?> 
                                    <th><input type="checkbox" name="VendrediPM" value="VendrediPM" style="margin: 0 1em;"></th>
                                <?php } ?>
                                          
                                <?php if($participant['samedi_a'] == 1) { ?>
                                    <th><input type="checkbox" checked name="SamediPM" value="SamediPM" style="margin: 0 1em;"></th>
                                <?php } else { ?> 
                                    <th><input type="checkbox" name="SamediPM" value="SamediPM" style="margin: 0 1em;"></th>
                                <?php } ?>
                                          
                                <?php if($participant['dimanche_a'] == 1) { ?>
                                    <th><input type="checkbox" checked name="DimanchePM" value="DimanchePM" style="margin: 0 1em;"></th>
                                <?php } else { ?> 
                                    <th><input type="checkbox" name="DimanchePM" value="DimanchePM" style="margin: 0 1em;"></th>
                                <?php } ?>
                            </tr>
                        </div>
                        <?php }?>
                    </table>
                </div>
            </main>
           
            <div style="display: flex; justify-content: center; align-items: center; margin-top: 25px;">
            <input class="btn_valid" type="submit" id="validateForm" name="validateForm" value="Valider" style="width:300px">
            <input class="btn_delete" type="submit" id="deleteForm" name="deleteForm" value="Supprimer la participation" style="width:300px">
            </div>
        </form>
    </div>
</body>