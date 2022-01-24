<head>
	<title>Modifiction | Rakket</title>
</head>
	<!-- formulaire de modification d'un licencié-->
	<FORM action="index.php?p=licencie&uc=gestionLicenciés&action=modifierLicencie" method="post">
        <div class="formUn">
        <?php
$lesLicenciés = getLicenciésTri();
foreach ($lesLicenciés as $unLicencié)
{
?>
            <input type="hidden" name="Numéro" id="Numéro" value="<?php echo $unLicencié['Numéro']; ?>">
        <div class="Colonne">
            <label for="Famille">Famille</label>
            <input type="text" name="Famille" id="Famille" class="formLicTaille10" value="<?php echo $unLicencié['Famille']; ?>"/>

            <label for="Tel_mobile">Tel mobile</label>
            <input type="text" name="Tel_mobile" id="Tel_mobile" class="formLicTailleTel" value="<?php echo $unLicencié['Tel_mobile']; ?>"/>

            <label for="Email_perso">Email perso</label>
            <input type="text" name="Email_perso" id="Email_perso" class="formLicTaille10" value="<?php echo $unLicencié['Email_perso']; ?>"/>
        </div>
        <div class="Colonne">
            <label for="Nom_licencié">Nom licencié</label>
            <input type="text" name="Nom_licencié" id="Nom_licencié" class="formLicTaille10" value="<?php echo $unLicencié['Nom_licencié']; ?>"/>

            <label for="Tel_domicile">Tel domicile</label>
            <input type="text" name="Tel_domicile" id="Tel_domicile" class="formLicTailleTel" value="<?php echo $unLicencié['Tel_domicile']; ?>"/>

            <label for="Email_travail">Email travail</label>
            <input type="text" name="Email_travail" id="Email_travail" class="formLicTaille10" value="<?php echo $unLicencié['Email_travail']; ?>"/>
        </div>

        <div class="Colonne">

            <label for="Prénom_licencié">Prénom licencié</label>
            <input type="text" name="Prénom_licencié" id="Prénom_licencié" class="formLicTaille10" value="<?php echo $unLicencié['Prénom_licencié']; ?>"/>

            <label for="Tel_travail">Tel travail</label>
            <input type="text" name="Tel_travail" id="Tel_travail" class="formLicTailleTel" value="<?php echo $unLicencié['Tel_travail']; ?>"/>

            <label for="Nationalité">Nationalité</label>
            <input type="text" name="Nationalité" id="Nationalité" class="formCreaLicTailleCaseNatio"/>
    </div>

        <div class="Colonne">

            <label for="Sexe">Sexe</label>
            <select  name="Sexe";>
            <?php if ($unLicencié['Sexe'] == "M")
    { ?>
                        <option value="M" selected>M</option>
                        <option value="F">F</option>
                        <?php
    }
    else if ($unLicencié['Sexe'] == "F")
    {
?>
                            <option value="M">M</option>
                            <option value="F" selected>F</option>
                            <?php
    }
?>
            </select>

            <label for="Date_Naissance">Date de naissance</label>
            <input type="date" name="Date_Naissance" id="Date_Naissance" class="formLicTaille10" value="<?php echo $unLicencié['Date_Naissance']; ?>"/>
        </div>
        </div>

    <br><br>
        <div class="formDeux">

            <label for="Catégorie_1">Catégorie
            <select  name="Catégorie_1" id="Catégorie_1">
                <?php
    if ($unLicencié['Catégorie_1'] == "P")
    {
        echo '<option value="auto">Auto</option><option value="P" selected>P</option><option value="B">B</option><option value="M">M</option><option value="C">C</option><option value="J">J</option><option value="S">S</option><option value="V">V</option>';
    }
    elseif ($unLicencié['Catégorie_1'] == "B")
    {
        echo '<option value="auto">Auto</option><option value="P">P</option><option value="B" selected>B</option><option value="M">M</option><option value="C">C</option><option value="J">J</option><option value="S">S</option><option value="V">V</option>';
    }
    elseif ($unLicencié['Catégorie_1'] == "M")
    {
        echo '<option value="auto">Auto</option><option value="P">P</option><option value="B">B</option><option value="M" selected>M</option><option value="C">C</option><option value="J">J</option><option value="S">S</option><option value="V">V</option>';
    }
    elseif ($unLicencié['Catégorie_1'] == "C")
    {
        echo '<option value="auto">Auto</option><option value="P">P</option><option value="B" >B</option><option value="M">M</option><option value="C" selected>C</option><option value="J">J</option><option value="S">S</option><option value="V">V</option>';
    }
    elseif ($unLicencié['Catégorie_1'] == "J")
    {
        echo '<option value="auto">Auto</option><option value="P">P</option><option value="B" >B</option><option value="M">M</option><option value="C">C</option><option value="J" selected>J</option><option value="S">S</option><option value="V">V</option>';
    }
    elseif ($unLicencié['Catégorie_1'] == "S")
    {
        echo '<option value="auto">Auto</option><option value="P">P</option><option value="B" >B</option><option value="M">M</option><option value="C">C</option><option value="J">J</option><option value="S" selected>S</option><option value="V">V</option>';
    }
    elseif ($unLicencié['Catégorie_1'] == "V")
    {
        echo '<option value="auto">Auto</option><option value="P">P</option><option value="B" >B</option><option value="M">M</option><option value="C">C</option><option value="J">J</option><option value="S">S</option><option value="V" selected>V</option>';
    }
    else
    {
        echo '<option value="auto" selected >Auto</option><option value="P">P</option><option value="B">B</option><option value="M">M</option><option value="C">C</option><option value="J">J</option><option value="S">S</option><option value="V">V</option>';
    }
?>				
            </select>
            </label>


        <label for="Type_licence">Type licence
            <select  style="width: auto" id="TypeLicence" name="Type_licence" class="formLicTailleTypeLic";>
            <?php
    if ($unLicencié['Type_licence'] == "TRADI")
    {
        echo '
                <option value=""></option>
                <option value="TRADI" selected>TRADI</option>
                <option value="PROMO">PROMO</option>';
    }
    elseif ($unLicencié['Type_licence'] == "PROMO")
    {
        echo '
                <option value=""></option>
                <option value="TRADI">TRADI</option>
                <option value="PROMO" selected>PROMO</option>';
    }
    else
    {
        echo '
                <option value="" selected></option>
                <option value="TRADI">TRADI</option>
                <option value="PROMO">PROMO</option>';
    } ?>
            </select>	
        </label>
        <label for="Inscription">Inscription
        <?php if ($unLicencié['Inscription'] == 1 || $unLicencié['Inscription'] == "on")
    { ?>
        <label class="checkbox_label" style="bottom: 0px;">
            <input type="checkbox" onclick="disableInscriptionDate()" name="Inscription" id="Inscription" class="formLicTailleBox" checked="checked" />
            <span class="checkmark"></span>
        </label>
        <?php
    }
    else
    { ?>
        <label class="checkbox_label" style="bottom: 0px;">
            <input type="checkbox" onclick="disableInscriptionDate()" name="Inscription" id="Inscription" class="formLicTailleBox" />
            <span class="checkmark"></span>
        </label>
        <?php
    } ?>
        </label>
        <label for="Date_inscription">Date d'inscription
            <input type="date" name="Date_inscription" id="Date_inscription" class="formLicTaille10" value="<?php echo $unLicencié['Date_inscription']; ?>"/>
        </label>  
        
        </div>
        <hr>
        <div class="formTrois">
            <div class="formColonne">

                <label for="Participation_équipe_sénior">Compétition par équipe</label>
                <?php if ($unLicencié['Participation_équipe_sénior'] == 1 || $unLicencié['Participation_équipe_sénior'] == "on")
    { ?>
                <label class="checkbox_label" style="bottom: 0px;">
                    <input type="checkbox" name="Participation_équipe_sénior" id="Participation_équipe_sénior" class="formLicTailleBox" checked="checked" />
                    <span class="checkmark"></span>
                </label>
                <?php
    }
    else
    { ?>
                <label class="checkbox_label" style="bottom: 0px;">
                    <input type="checkbox" name="Participation_équipe_sénior" id="Participation_équipe_sénior" class="formLicTailleBox" />
                    <span class="checkmark"></span>
                </label>
                <?php
    } ?>


                <label for="Participation_compétition_individuelle">Compétition individuelle</label>
                <?php if ($unLicencié['Participation_compétition_individuelle'] == 1 || $unLicencié['Participation_compétition_individuelle'] == "on")
    { ?>
                <label class="checkbox_label" style="bottom: 0px;">
                    <input type="checkbox" name="Participation_compétition_individuelle" id="Participation_compétition_individuelle" class="formLicTailleBox" checked="checked" />
                    <span class="checkmark"></span>
                </label>
                <?php
    }
    else
    { ?>
                <label class="checkbox_label" style="bottom: 0px;">
                    <input type="checkbox" name="Participation_compétition_individuelle" id="Participation_compétition_individuelle" class="formLicTailleBox" />
                    <span class="checkmark"></span>
                </label>
                <?php
    } ?>


                <label for="Loisir_hors_compétition">Loisir hors compétition</label>
                <?php if ($unLicencié['Loisir_hors_compétition'] == 1 || $unLicencié['Loisir_hors_compétition'] == "on")
    { ?>
                <label class="checkbox_label" style="bottom: 0px;">
                    <input type="checkbox" name="Loisir_hors_compétition" id="Loisir_hors_compétition" class="formLicTailleBox" checked="checked" />
                    <span class="checkmark"></span>
                </label>
                <?php
    }
    else
    { ?>
                <label class="checkbox_label" style="bottom: 0px;">
                    <input type="checkbox" name="Loisir_hors_compétition" id="Loisir_hors_compétition" class="formLicTailleBox" />
                    <span class="checkmark"></span>
                </label>
                <?php
    } ?>


                <label for="Saint_Jean_de_la_Ruelle">Saint Jean de la Ruelle</label>
                <?php if ($unLicencié['Saint_Jean_de_la_Ruelle'] == 1 || $unLicencié['Saint_Jean_de_la_Ruelle'] == "on")
    { ?>
                <label class="checkbox_label" style="bottom: 0px;">
                    <input type="checkbox" name="Saint_Jean_de_la_Ruelle" id="Saint_Jean_de_la_Ruelle" class="formLicTailleBox" checked="checked" />
                    <span class="checkmark"></span>
                </label>
                <?php
    }
    else
    { ?>
                <label class="checkbox_label" style="bottom: 0px;">
                    <input type="checkbox" name="Saint_Jean_de_la_Ruelle" id="Saint_Jean_de_la_Ruelle" class="formLicTailleBox" />
                    <span class="checkmark"></span>
                </label>
                <?php
    } ?>


                <label for="Certificat_médical">Certificat médical</label>
                <?php if ($unLicencié['Certificat_médical'] == 1 || $unLicencié['Certificat_médical'] == "on")
    { ?>
                <label class="checkbox_label" style="bottom: 0px;">
                    <input type="checkbox" name="Certificat_médical" id="Certificat_médical" class="formLicTailleBox" checked="checked" />
                    <span class="checkmark"></span>
                </label>
                <?php
    }
    else
    { ?>
                <label class="checkbox_label" style="bottom: 0px;">
                    <input type="checkbox" name="Certificat_médical" id="Certificat_médical" class="formLicTailleBox" />
                    <span class="checkmark"></span>
                </label>
                <?php
    } ?>
            </div>
            <div class="formColonne">

                <label for="Membre_bureau">Membre bureau</label>
                <?php if ($unLicencié['Membre_bureau'] == 1 || $unLicencié['Membre_bureau'] == "on")
    { ?>
                <label class="checkbox_label" style="bottom: 0px;">
                    <input type="checkbox" name="Membre_bureau" id="Membre_bureau" class="formLicTailleBox" checked="checked" />
                    <span class="checkmark"></span>
                </label>
                <?php
    }
    else
    { ?>
                <label class="checkbox_label" style="bottom: 0px;">
                    <input type="checkbox" name="Membre_bureau" id="Membre_bureau" class="formLicTailleBox" />
                    <span class="checkmark"></span>
                </label>
                <?php
    } ?>


                <label for="1ere_licence">1ere licence</label>
                <?php if ($unLicencié['1ere_licence'] == 1 || $unLicencié['1ere_licence'] == "on")
    { ?>
                <label class="checkbox_label" style="bottom: 0px;">
                    <input type="checkbox"name="1ere_licence" id="1ere_licence" class="formLicTailleBox" checked="checked" />
                    <span class="checkmark"></span>
                </label>
                <?php
    }
    else
    { ?>
                <label class="checkbox_label" style="bottom: 0px;">
                    <input type="checkbox" name="1ere_licence" id="1ere_licence" class="formLicTailleBox" />
                    <span class="checkmark"></span>
                </label>
                <?php
    } ?>


                <label for="Autre_club">Autre club</label>
                <?php if ($unLicencié['Autre_club'] == 1 || $unLicencié['Autre_club'] == "on")
    { ?>
                <label class="checkbox_label" style="bottom: 0px;">
                    <input type="checkbox" name="Autre_club" id="Autre_club" class="formLicTailleBox" checked="checked" />
                    <span class="checkmark"></span>
                </label>
                <?php
    }
    else
    { ?>
                <label class="checkbox_label" style="bottom: 0px;">
                    <input type="checkbox" name="Autre_club" id="Autre_club" class="formLicTailleBox" />
                    <span class="checkmark"></span>
                </label>
                <?php
    } ?>


                <label for="Essai">Essai</label>
                <?php if ($unLicencié['Essai'] == 1 || $unLicencié['Essai'] == "on")
    { ?>
                <label class="checkbox_label" style="bottom: 0px;">
                    <input type="checkbox" name="Essai" id="Essai" class="formLicTailleBox" checked="checked" />
                    <span class="checkmark"></span>
                </label>
                <?php
    }
    else
    { ?>
                <label class="checkbox_label" style="bottom: 0px;">
                    <input type="checkbox" name="Essai" id="Essai" class="formLicTailleBox" />
                    <span class="checkmark"></span>
                </label>
                <?php
    } ?>
                

                <label for="Stage_uniquement">Stage uniquement</label>
                <?php if ($unLicencié['Stage_uniquement'] == 1 || $unLicencié['Stage_uniquement'] == "on")
    { ?>
                <label class="checkbox_label" style="bottom: 0px;">
                    <input type="checkbox" name="Stage_uniquement" id="Stage_uniquement" class="formLicTailleBox" checked="checked" />
                    <span class="checkmark"></span>
                </label>
                <?php
    }
    else
    { ?>
                <label class="checkbox_label" style="bottom: 0px;">
                    <input type="checkbox" name="Stage_uniquement" id="Stage_uniquement" class="formLicTailleBox" />
                    <span class="checkmark"></span>
                </label>
                <?php
    } ?>
            </div>

            <div class="formColonne">

                <label for="Demie_tarif">Demi tarif</label>
                <?php if ($unLicencié['Demie_tarif'] == 1 || $unLicencié['Demie_tarif'] == "on")
    { ?>
                <label class="checkbox_label" style="bottom: 0px;">
                    <input type="checkbox" name="Demie_tarif" id="Demie_tarif" class="formLicTailleBox" checked="checked" />
                    <span class="checkmark"></span>
                </label>
                <?php
    }
    else
    { ?>
                <label class="checkbox_label" style="bottom: 0px;">
                    <input type="checkbox" name="Demie_tarif" id="Demie_tarif" class="formLicTailleBox" />
                    <span class="checkmark"></span>
                </label>
                <?php
    } ?>
                

                <label for="Licence_gratuite">Licence gratuite</label>
                <?php if ($unLicencié['Licence_gratuite'] == 1 || $unLicencié['Licence_gratuite'] == "on")
    { ?>
                <label class="checkbox_label" style="bottom: 0px;">
                    <input type="checkbox" name="Licence_gratuite" id="Licence_gratuite" class="formLicTailleBox" checked="checked" />
                    <span class="checkmark"></span>
                </label>
                <?php
    }
    else
    { ?>
                <label class="checkbox_label" style="bottom: 0px;">
                    <input type="checkbox" name="Licence_gratuite" id="Licence_gratuite" class="formLicTailleBox" />
                    <span class="checkmark"></span>
                </label>
                <?php
    } ?>
                
                <label for="Autorisation_photo_vidéo">Autorisation photo vidéo</label>
                <?php if ($unLicencié['Autorisation_photo_vidéo'] == 1 || $unLicencié['Autorisation_photo_vidéo'] == "on")
    { ?>
                <label class="checkbox_label" style="bottom: 0px;">
                    <input type="checkbox" name="Autorisation_photo_vidéo" id="Autorisation_photo_vidéo" class="formLicTailleBox" checked="checked" />
                    <span class="checkmark"></span>
                </label>
                <?php
    }
    else
    { ?>
                <label class="checkbox_label" style="bottom: 0px;">
                    <input type="checkbox" name="Autorisation_photo_vidéo" id="Autorisation_photo_vidéo" class="formLicTailleBox"/>
                    <span class="checkmark"></span>
                </label>
                <?php
    } ?>
            </div>
            </div>
            <hr>
            <div class="boutonSubmit">
            <!--<input type="text" name="Inscription" id="Inscription" class="zone5">-->
            <button type="submit" class="btn" value='Enregistrer' style="margin-top: 28px; width:150px" >Enregistrer</button>
            </div>	
        <?php
}
?>
    </FORM>
    <script>disableInscriptionDate()</script>