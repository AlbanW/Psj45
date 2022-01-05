<head>
	<title>Liste Licenciés | Rakket</title>
</head>
<!-- Affichage de la barre d'outils et attribution de la variable "$_Session['type']" qui permet de connaitre les éléments sur les quelles doivent s'appliquer les outils (exemple : licencié, tarif, comptes) -->
    <?php
        $_SESSION['type']='licenciés';
    ?>
    <script>
        showHeaderTools('licenciés');
    </script>
<!--Fin du code permetant l'affichage des outils-->
<div class="hScroll">
    <!-- formulaire liste des licenciés-->
    <?php
    echo '
        <ul class="menu_categories" style="text-align: center;display: inline-flex;align-items: center;gap: 5px;">
            <li style="width:30px;"></li>
            <li class="categorie_input"><a style="cursor: pointer;" href="index.php?p=licencie&uc=gestionLicenciés&action=listeLicencie&sortBy=Famille">Famille</a></li>
            <li class="categorie_input"><a style="cursor: pointer;" href="index.php?p=licencie&uc=gestionLicenciés&action=listeLicencie&sortBy=Nom_licencié">Nom</a></li>
            <li class="categorie_input"><a style="cursor: pointer;" href="index.php?p=licencie&uc=gestionLicenciés&action=listeLicencie&sortBy=Prénom_licencié">Prénom</a></li>
            <li class="categorie_select"><a style="cursor: pointer;" href="index.php?p=licencie&uc=gestionLicenciés&action=listeLicencie&sortBy=Sexe">Sexe</a></li>
            <li class="categorie_input" style="width:135px;"><a style="cursor: pointer;" href="index.php?p=licencie&uc=gestionLicenciés&action=listeLicencie&sortBy=Date_Naissance">Date de naissance</a></li>
            <li class="categorie_input" style="width:100px;"><a style="cursor: pointer;" href="index.php?p=licencie&uc=gestionLicenciés&action=listeLicencie&sortBy=Tel_mobile"> Tel Mobile</a></li>
            <li class="categorie_input" style="width:100px;"><a style="cursor: pointer;" href="index.php?p=licencie&uc=gestionLicenciés&action=listeLicencie&sortBy=Tel_domicile"> Tel Domicile</a></li>
            <li class="categorie_input" style="width:100px;"> Tel Travail </li>
            <li class="categorie_input"><a style="cursor: pointer;" href="index.php?p=licencie&uc=gestionLicenciés&action=listeLicencie&sortBy=Email_perso"> Email Perso </a></li>
            <li class="categorie_input"> Email Travail </li>
            <li class="categorie_select"><a style="cursor: pointer;" href="index.php?p=licencie&uc=gestionLicenciés&action=listeLicencie&sortBy=Catégorie_1"> Cat1 </a></li>
            <li class="categorie_select" style="width:80px;"><a style="cursor: pointer;" href="index.php?p=licencie&uc=gestionLicenciés&action=listeLicencie&sortBy=Type_licence"> Licence </a></li>
            <li class="categorie_checkbox"><a style="cursor: pointer;" href="index.php?p=licencie&uc=gestionLicenciés&action=listeLicencie&sortBy=Inscription"> Inscription </a></li>
            <li class="categorie_input"> Date d\'inscription </li>
            <li class="categorie_checkbox"> Compet indiv </li>
            <li class="categorie_checkbox"> St Jean </li>
            <li class="categorie_checkbox"> Certif Med </li>
            <li class="categorie_checkbox"> Bureau </li>
            <li class="categorie_checkbox"> 1ere lic </li>
            <li class="categorie_checkbox"> Autre club </li>
            <li class="categorie_checkbox"> Essai </li>
            <li class="categorie_checkbox"> Stage </li>
            <li class="categorie_checkbox"> 1/2 tarif </li>
            <li class="categorie_checkbox"> Licence gratuite </li>
            <li class="categorie_checkbox"> Compet équipe </li>
            <li class="categorie_checkbox"> Photo-Vidéo </li>
            <li class="categorie_checkbox"> Baby Ping </li>

            <li class="categorie_checkbox"> Loisir </li>
        </ul>
        <br>
    ';
    if(isset($_POST['search'])){
        $lesLicenciés = searchLicenciés($_POST['key']);
    }
    else{
        if(isset($_GET['sortBy'])){
            if($_SESSION['lastSortBy']==$_GET['sortBy']){
                $lesLicenciés = getLicenciés($_GET['sortBy'],'DESC');
                $_SESSION['lastSortBy'] = '';
            }
            else{
                $lesLicenciés = getLicenciés($_GET['sortBy'],'ASC');
                $_SESSION['lastSortBy']=$_GET['sortBy'];
            }
            
        }
        else{
            $lesLicenciés = getLicenciés('Famille','ASC');
        }
        
    }
    
    foreach ($lesLicenciés as $unLicencié) {
    ?>
    <span style="text-align: center;display: inline-flex;align-items: center;gap: 5px;">
        <label class="checkbox_label">
            <input type="checkbox" autocomplete="off" onclick="getNumberSelectedElements(<?php echo $unLicencié['Numéro']; ?>)" class="Selected";>
            <span class="checkmark"></span>
        </label>
        <input readonly type="hidden" name="Numéro[]" id="Numéro" value="<?php echo $unLicencié['Numéro']; ?>">
        <a href="index.php?p=licencie&test=test&uc=gestionLicenciés&action=listeLicencie2&numero=<?php echo $unLicencié['Numéro']; ?>"><input readonly type="text" name="Famille[]" id="Famille" class="formLicTaille10"  style="cursor: pointer;" value="<?php echo $unLicencié['Famille']; ?>" /></a>
        <input readonly type="text" name="Nom_licencié[]" value="<?php echo $unLicencié['Nom_licencié']; ?>" />
        <input readonly type="text" name="Prénom_licencié[]" id="Prénom_licencié" class="formLicTaille10" value="<?php echo $unLicencié['Prénom_licencié']; ?>" />
        <select disabled="disabled" style="width:45px;" name="Sexe[]" ;>
            <?php if ($unLicencié['Sexe'] == "M") { ?>
                <option value="M" selected><a href="index.php?p=licencie&test=test&uc=gestionLicenciés&action=listeLicencie2&numero=<?php echo $unLicencié['Numéro']; ?>">M</a></option>
                <option value="F"><a href="index.php?p=licencie&test=test&uc=gestionLicenciés&action=listeLicencie2&numero=<?php echo $unLicencié['Numéro']; ?>">F</a></option>
            <?php
            } else
					if ($unLicencié['Sexe'] == "F") {
            ?>
                <option value="M"><a href="index.php?p=licencie&test=test&uc=gestionLicenciés&action=listeLicencie2&numero=<?php echo $unLicencié['Numéro']; ?>">M</a></option>
                <option value="F" selected><a href="index.php?p=licencie&test=test&uc=gestionLicenciés&action=listeLicencie2&numero=<?php echo $unLicencié['Numéro']; ?>">F</a></option>
            <?php
            }
            ?>
        </select>

        <input readonly type="date" style="width:135px;" name="Date_Naissance[]" id="Date_Naissance" class="formLicTaille10" value="<?php echo $unLicencié['Date_Naissance'] ; ?>" />
        <input readonly type="text" name="Tel_mobile[]" id="Tel_mobile" class="formLicTailleTel" value="<?php echo $unLicencié['Tel_mobile']; ?>" />
        <input readonly type="text" name="Tel_domicile[]" id="Tel_domicile" class="formLicTailleTel" value="<?php echo $unLicencié['Tel_domicile']; ?>" />
        <input readonly type="text" name="Tel_travail[]" id="Tel_travail" class="formLicTailleTel" value="<?php echo $unLicencié['Tel_travail']; ?>" />
        <input readonly type="text" name="Email_perso[]" id="Email_perso" class="formLicTaille10" value="<?php echo $unLicencié['Email_perso']; ?>" title="<?php echo $unLicencié['Email_perso']; ?>" />
        <input readonly type="text" name="Email_travail[]" id="Email_travail" class="formLicTaille10" value="<?php echo $unLicencié['Email_travail']; ?>" title="<?php echo $unLicencié['Email_travail']; ?>" />
        <select disabled="disabled" style="width:45px;" name="Catégorie_1[]" class="formLicTaille3" ;>
        <?php
            if(!isset($unLicencié['Catégorie_1'])){
                echo'
                <option value="P">P</option>
                <option value="B">B</option>
                <option value="M">M</option>
                <option value="C">C</option>
                <option value="J">J</option>
                <option value="S">S</option>
                <option value="V">V</option>';
            }
            else{
                if ($unLicencié['Catégorie_1'] == "P") { 
                    echo'
                    <option value="P" selected>P</option>
                    <option value="B">B</option>
                    <option value="M">M</option>
                    <option value="C">C</option>
                    <option value="J">J</option>
                    <option value="S">S</option>
                    <option value="V">V</option>';
                }
                elseif ($unLicencié['Catégorie_1'] == "B") {
                    echo'
                    <option value="P">P</option>
                    <option value="B" selected>B</option>
                    <option value="M">M</option>
                    <option value="C">C</option>
                    <option value="J">J</option>
                    <option value="S">S</option>
                    <option value="V">V</option>';
                }
                elseif ($unLicencié['Catégorie_1'] == "M") {
                    echo'
                    <option value="P">P</option>
                    <option value="B">B</option>
                    <option value="M" selected>M</option>
                    <option value="C">C</option>
                    <option value="J">J</option>
                    <option value="S">S</option>
                    <option value="V">V</option>';
                }
                elseif ($unLicencié['Catégorie_1'] == "C") {
                    echo'
                    <option value="P">P</option>
                    <option value="B">B</option>
                    <option value="M">M</option>
                    <option value="C" selected>C</option>
                    <option value="J">J</option>
                    <option value="S">S</option>
                    <option value="V">V</option>';
                }
                elseif ($unLicencié['Catégorie_1'] == "J") {
                    echo'
                    <option value="P">P</option>
                    <option value="B">B</option>
                    <option value="M">M</option>
                    <option value="C">C</option>
                    <option value="J" selected>J</option>
                    <option value="S">S</option>
                    <option value="V">V</option>';
                }
                elseif ($unLicencié['Catégorie_1'] == "S") {
                    echo'
                    <option value="P">P</option>
                    <option value="B">B</option>
                    <option value="M">M</option>
                    <option value="C">C</option>
                    <option value="J">J</option>
                    <option value="S" selected>S</option>
                    <option value="V">V</option>';
                } 
                elseif ($unLicencié['Catégorie_1'] == "V") {
                    echo'
                    <option value="P">P</option>
                    <option value="B">B</option>
                    <option value="M">M</option>
                    <option value="C">C</option>
                    <option value="J">J</option>
                    <option value="S">S</option>
                    <option value="V" selected>V</option>';
                }
            }
                        
            ?>

        </select>
        <select disabled="disabled" style="width:80px" name="Type_licence[]" class="formLicTailleTypeLic" ;>
            <?php if ($unLicencié['Type_licence'] == "TRADI") { ?>
                <option value="TRADI" selected>TRADI</option>
                <option value="PROMO">PROMO</option>
            <?php
            } else
					if ($unLicencié['Type_licence'] == "PROMO") {
            ?>
                <option value="TRADI">TRADI</option>
                <option value="PROMO" selected>PROMO</option>
            <?php
            }
            ?>
        </select>

        <?php if ($unLicencié['Inscription'] == 1 || $unLicencié['Inscription'] == "on") { ?>
            <label class="checkbox_label" style="margin-left:37.5px ; margin-right:37.5px;">
                <input disabled="disabled" type="checkbox" name="Inscription[]" id="Inscription" checked="checked"/>
                <span class="checkmark"></span>
            </label>
        <?php } else { ?>
            <label class="checkbox_label" style="margin-left:37.5px ; margin-right:37.5px;">
                <input disabled="disabled" type="checkbox" name="Inscription[]" id="Inscription" />
                <span class="checkmark"></span>
            </label>
        <?php } ?>
        <input readonly type="date" name="Date_inscription[]" id="Date_inscription" class="formLicTaille10" value="<?php echo $unLicencié['Date_inscription']; ?>" />
        <!--<input readonly type="text" name="Nationalité[]" id="Nationalité" class="formLicTaille3" value="<?php echo $unLicencié['Nationalité']; ?>" />-->

        <?php if ($unLicencié['Participation_compétition_individuelle'] == 1 || $unLicencié['Participation_compétition_individuelle'] == "on") { ?>
            <label class="checkbox_label" style="margin-left:37.5px ; margin-right:37.5px;">
                <input disabled="disabled" type="checkbox" autocomplete="off" name="Participation_compétition_individuelle[]" id="Participation_compétition_individuelle"  checked="checked" />
                <span class="checkmark"></span>
            </label>
        <?php } else { ?>
            <label class="checkbox_label" style="margin-left:37.5px ; margin-right:37.5px;">
                <input disabled="disabled" type="checkbox" autocomplete="off" name="Participation_compétition_individuelle[]" id="Participation_compétition_individuelle"  />
                <span class="checkmark"></span>
            </label>
        <?php } ?>

        <?php if ($unLicencié['Saint_Jean_de_la_Ruelle'] == 1 || $unLicencié['Saint_Jean_de_la_Ruelle'] == "on") { ?>
            <label class="checkbox_label" style="margin-left:37.5px ; margin-right:37.5px;">
                <input disabled="disabled" type="checkbox" autocomplete="off" name="Saint_Jean_de_la_Ruelle[]" id="Saint_Jean_de_la_Ruelle" checked="checked" />
                <span class="checkmark"></span>
            </label>
        <?php } else { ?>
            <label class="checkbox_label" style="margin-left:37.5px ; margin-right:37.5px;">
                <input disabled="disabled" type="checkbox" autocomplete="off" name="Saint_Jean_de_la_Ruelle[]" id="Saint_Jean_de_la_Ruelle" />
                <span class="checkmark"></span>
            </label>
        <?php } ?>

        <?php if ($unLicencié['Certificat_médical'] == 1 || $unLicencié['Certificat_médical'] == "on") { ?>
            <label class="checkbox_label" style="margin-left:37.5px ; margin-right:37.5px;">
                <input disabled="disabled" type="checkbox" autocomplete="off" name="Certificat_médical[]" id="Certificat_médical" checked="checked" />
                <span class="checkmark"></span>
            </label>
        <?php } else { ?>
            <label class="checkbox_label" style="margin-left:37.5px ; margin-right:37.5px;">
                <input disabled="disabled" type="checkbox" autocomplete="off" name="Certificat_médical[]" id="Certificat_médical" />
                <span class="checkmark"></span>
            </label>
        <?php } ?>

        <?php if ($unLicencié['Membre_bureau'] == 1 || $unLicencié['Membre_bureau'] == "on") { ?>
            <label class="checkbox_label" style="margin-left:37.5px ; margin-right:37.5px;">
                <input disabled="disabled" type="checkbox" autocomplete="off" name="Membre_bureau[]" id="Membre_bureau" checked="checked" />
                <span class="checkmark"></span>
            </label>
        <?php } else { ?>
            <label class="checkbox_label" style="margin-left:37.5px ; margin-right:37.5px;">
                <input disabled="disabled" type="checkbox" autocomplete="off" name="Membre_bureau[]" id="Membre_bureau" />
                <span class="checkmark"></span>
            </label>
        <?php } ?>

        <?php if ($unLicencié['1ere_licence'] == 1 || $unLicencié['1ere_licence'] == "on") { ?>
            <label class="checkbox_label" style="margin-left:37.5px ; margin-right:37.5px;">
                <input disabled="disabled" type="checkbox" autocomplete="off" name="1ere_licence[]" id="1ere_licence" checked="checked" />
                <span class="checkmark"></span>
            </label>
        <?php } else { ?>
            <label class="checkbox_label" style="margin-left:37.5px ; margin-right:37.5px;">
                <input disabled="disabled" type="checkbox" autocomplete="off" name="1ere_licence[]" id="1ere_licence" />
                <span class="checkmark"></span>
            </label>
        <?php } ?>

        <?php if ($unLicencié['Autre_club'] == 1 || $unLicencié['Autre_club'] == "on") { ?>
            <label class="checkbox_label" style="margin-left:37.5px ; margin-right:37.5px;">
                <input disabled="disabled" type="checkbox" autocomplete="off" name="Autre_club[]" id="Autre_club" checked="checked" />
                <span class="checkmark"></span>
            </label>
        <?php } else { ?>
            <label class="checkbox_label" style="margin-left:37.5px ; margin-right:37.5px;">
                <input disabled="disabled" type="checkbox" autocomplete="off" name="Autre_club[]" id="Autre_club" />
                <span class="checkmark"></span>
            </label>
        <?php } ?>

        <?php if ($unLicencié['Essai'] == 1 || $unLicencié['Essai'] == "on") { ?>
            <label class="checkbox_label" style="margin-left:37.5px ; margin-right:37.5px;">
                <input disabled="disabled" type="checkbox" autocomplete="off" name="Essai[]" id="Essai" checked="checked" />
                <span class="checkmark"></span>
            </label>
        <?php } else { ?>
            <label class="checkbox_label" style="margin-left:37.5px ; margin-right:37.5px;">
                <input disabled="disabled" type="checkbox" autocomplete="off" name="Essai[]" id="Essai" />
                <span class="checkmark"></span>
            </label>
        <?php } ?>

        <?php if ($unLicencié['Stage_uniquement'] == 1 || $unLicencié['Stage_uniquement'] == "on") { ?>
            <label class="checkbox_label" style="margin-left:37.5px ; margin-right:37.5px;">
                <input disabled="disabled" type="checkbox" autocomplete="off" name="Stage_uniquement[]" id="Stage_uniquement" checked="checked" />
                <span class="checkmark"></span>
            </label>
        <?php } else { ?>
            <label class="checkbox_label" style="margin-left:37.5px ; margin-right:37.5px;">
                <input disabled="disabled" type="checkbox" autocomplete="off" name="Stage_uniquement[]" id="Stage_uniquement" />
                <span class="checkmark"></span>
            </label>
        <?php } ?>

        <?php if ($unLicencié['Demie_tarif'] == 1 || $unLicencié['Demie_tarif'] == "on") { ?>
            <label class="checkbox_label" style="margin-left:37.5px ; margin-right:37.5px;">
                <input disabled="disabled" type="checkbox" autocomplete="off" name="Demie_tarif[]" id="Demie_tarif"  checked="checked" />
                <span class="checkmark"></span>
            </label>
        <?php } else { ?>
            <label class="checkbox_label" style="margin-left:37.5px ; margin-right:37.5px;">
                <input disabled="disabled" type="checkbox" autocomplete="off" name="Demie_tarif[]" id="Demie_tarif"  />
                <span class="checkmark"></span>
            </label>
        <?php } ?>

        <?php if ($unLicencié['Licence_gratuite'] == 1 || $unLicencié['Licence_gratuite'] == "on") { ?>
            <label class="checkbox_label" style="margin-left:37.5px ; margin-right:37.5px;">
                <input disabled="disabled" type="checkbox" autocomplete="off" name="Licence_gratuite[]" id="Licence_gratuite" checked="checked" />
                <span class="checkmark"></span>
            </label>
        <?php } else { ?>
            <label class="checkbox_label" style="margin-left:37.5px ; margin-right:37.5px;">
                <input disabled="disabled" type="checkbox" autocomplete="off" name="Licence_gratuite[]" id="Licence_gratuite" />
                <span class="checkmark"></span>
            </label>
        <?php } ?>

        <?php if ($unLicencié['Participation_équipe_sénior'] == 1 || $unLicencié['Participation_équipe_sénior'] == "on") { ?>
            <label class="checkbox_label" style="margin-left:37.5px ; margin-right:37.5px;">
                <input disabled="disabled" type="checkbox" autocomplete="off" name="Participation_équipe_sénior[]" id="Participation_équipe_sénior" checked="checked" />
                <span class="checkmark"></span>
            </label>
        <?php } else { ?>
            <label class="checkbox_label" style="margin-left:37.5px ; margin-right:37.5px;">
                <input disabled="disabled" type="checkbox" autocomplete="off" name="Participation_équipe_sénior[]" id="Participation_équipe_sénior" />
                <span class="checkmark"></span>
            </label>
        <?php } ?>

        <?php if ($unLicencié['Autorisation_photo_vidéo'] == 1 || $unLicencié['Autorisation_photo_vidéo'] == "on") { ?>
            <label class="checkbox_label" style="margin-left:37.5px ; margin-right:37.5px;">
                <input disabled="disabled" type="checkbox" autocomplete="off" name="Autorisation_photo_vidéo[]" id="Autorisation_photo_vidéo" checked="checked" />
                <span class="checkmark"></span>
            </label>
        <?php } else { ?>
            <label class="checkbox_label" style="margin-left:37.5px ; margin-right:37.5px;">
                <input disabled="disabled" type="checkbox" autocomplete="off" name="Autorisation_photo_vidéo[]" id="Autorisation_photo_vidéo" />
                <span class="checkmark"></span>
            </label>
        <?php } ?>

        <?php if ($unLicencié['BABY_PING'] == 1 || $unLicencié['BABY_PING'] == "on") { ?>
            <label class="checkbox_label" style="margin-left:37.5px ; margin-right:37.5px;">
                <input disabled="disabled" type="checkbox" autocomplete="off" name="babyPing[]" id="babyPing" checked="checked" />
                <span class="checkmark"></span>
            </label>
        <?php } else { ?>
            <label class="checkbox_label" style="margin-left:37.5px ; margin-right:37.5px;">
                <input disabled="disabled" type="checkbox" autocomplete="off" name="babyPing[]" id="babyPing" />
                <span class="checkmark"></span>
            </label>
        <?php } ?>
        
        <?php if ($unLicencié['Loisir_hors_compétition'] == 1 || $unLicencié['Loisir_hors_compétition'] == "on") { ?>
            <label class="checkbox_label" style="margin-left:37.5px ; margin-right:37.5px;">
                <input disabled="disabled" type="checkbox" autocomplete="off" name="Loisir_hors_compétition[]" id="Loisir_hors_compétition" checked="checked" />
                <span class="checkmark"></span>
            </label>
        <?php } else { ?>
            <label class="checkbox_label" style="margin-left:37.5px ; margin-right:37.5px;">
                <input disabled="disabled" type="checkbox" autocomplete="off" name="Loisir_hors_compétition[]" id="Loisir_hors_compétition" />
                <span class="checkmark"></span>
            </label>
        </span>
        <?php } ?>
        <br>
    <?php
    }
    ?>
</div>

