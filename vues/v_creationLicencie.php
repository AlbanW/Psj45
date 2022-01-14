<head>
	<title>Créer un licencié | Rakket</title>
</head>
<!-- Formulaire de création d'un licencié -->
	<!-- c'est le case ajouterLicencie qui réalisera l'ajout -->
	<FORM action="index.php?p=licencie&uc=gestionLicenciés&action=ajouterLicencie" method="post">
        <div class="formUn">
        <div class="Colonne">
        
            <label for="Famille">Famille</label>
            <input type="text" required name="Famille" id="Famille" class="formCreaLicTailleCaseHaut"/>
            
            <label for="Tel_mobile">Tel mobile</label>
            <input type="text"  name="Tel_mobile" id="Tel_mobile" class="formCreaLicTailleCaseTel"/>
            
            <label for="Email_perso">Email perso</label>
            <input type="text"  name="Email_perso" id="Email_perso" class="formCreaLicTailleCaseMail"/>
        </div>

        <div class="Colonne">

            <label for="Nom_licencié">Nom licencié</label>
            <input type="text" required name="Nom_licencié" id="Nom_licencié" class="formCreaLicTailleCaseHaut"/>

            <label for="Tel_domicile">Tel domicile</label>
            <input type="text"  name="Tel_domicile" id="Tel_domicile" class="formCreaLicTailleCaseTel"/>

            <label for="Email_travail">Email travail</label>
            <input type="text"  name="Email_travail" id="Email_travail" class="formCreaLicTailleCaseMail"/>
        </div>

        <div class="Colonne">
            
            <label for="Prénom_licencié">Prénom licencié</label>
            <input type="text" name="Prénom_licencié" id="Prénom_licencié" class="formCreaLicTailleCaseHaut"/>
            
            
            <label for="Tel_travail">Tel travail</label>
            <input type="text"  name="Tel_travail" id="Tel_travail" class="formCreaLicTailleCaseTel"/>

            <label for="Nationalité">Nationalité</label>
            <input type="text" name="Nationalité" id="Nationalité" class="formCreaLicTailleCaseNatio"/>

        </div>

        <div class="Colonne">
            <label for="Sexe">Sexe</label>
            <select name="Sexe">
                <option value="M">M</option>
                <option value="F">F</option>
            </select>
            <label for="Date_Naissance">Date de naissance</label>
            <input type="date" name="Date_Naissance" id="Date_Naissance" class="formCreaLicTailleCaseHaut"/>
        </div>
        
        </div>
        <br><br>
        <div class="formDeux">
        <label for="Catégorie_1">Catégorie
            <select name="Catégorie_1" id="Catégorie_1">
            <option value="auto">Auto</option><option value="P">P</option><option value="B">B</option><option value="M">M</option><option value="C">C</option><option value="J">J</option><option value="S">S</option><option value="V">V</option>
            </select>
        </label>
        
        
        <label for="Type_licence">Type licence
            <select style="width: auto" id="TypeLicence" name="Type_licence">
                        <option value=""></option>
                        <option value="PROMO">PROMO</option>
                        <option value="TRADI">TRADI</option>
            </select>
        </label>
        
        
        <label for="Inscription">Inscription
            <label class="checkbox_label" style="top: 0px;">
                <input type="checkbox" onclick="disableInscriptionDate()" name="Inscription" id="Inscription"/>
            <span class="checkmark"></span>
            </label>
        </label>
        
        
        <label for="Date_inscription">Date d'inscription
            <input type="date" name="Date_inscription" id="Date_inscription" class="formCreaLicTailleCaseHaut"/>
        </label>
        
        
        
        </div>
        
        <br>
        <hr>
        <div class="formTrois">
        <div class="formColonne">

        <label for="Participation_équipe_sénior">Compétition par équipe</label>
        <label class="checkbox_label" style="top: 0px;">
            <input type="checkbox" name="Participation_équipe_sénior" id="Participation_équipe_sénior"/>
            <span class="checkmark"></span>
        </label>
    
        <label for="Participation_compétition_individuelle">Compétition individuelle</label>
        <label class="checkbox_label" style="top: 0px;">
            <input type="checkbox" name="Participation_compétition_individuelle" id="Participation_compétition_individuelle"/>
            <span class="checkmark"></span>
        </label>

        <label for="Loisir_hors_compétition">Loisir hors compétition</label>
        <label class="checkbox_label" style="top: 0px;">
        <input type="checkbox" name="Loisir_hors_compétition" id="Loisir_hors_compétition"/>
        <span class="checkmark"></span>
        </label>
        
        <label for="Saint_Jean_de_la_Ruelle">Saint Jean de la Ruelle</label>
        <label class="checkbox_label" style="top: 0px;">
        <input type="checkbox" name="Saint_Jean_de_la_Ruelle" id="Saint_Jean_de_la_Ruelle"/>
        <span class="checkmark"></span>
        </label>
        
        <label for="Certificat_médical">Certificat médical</label>
        <label class="checkbox_label" style="top: 0px;">
        <input type="checkbox" name="Certificat_médical" id="Certificat_médical"/>
        <span class="checkmark"></span>
        </label>


        <label for="divers">Divers</label>
        
        <label class="checkbox_label" style="bottom: 0px;">
                    <input type="checkbox" name="divers" id="divers" class="formLicTailleBox"/>
                    <span class="checkmark"></span>
                </label>

        </div>
        
        <div class="formColonne">
        <label for="Membre_bureau">Membre bureau</label>
        <label class="checkbox_label" style="top: 0px;">
        <input type="checkbox" name="Membre_bureau" id="Membre_bureau"/>
        <span class="checkmark"></span>
        </label>
        
        <label for="1ere_licence">1ere licence</label>
        <label class="checkbox_label" style="top: 0px;">
        <input type="checkbox" name="1ere_licence" id="1ere_licence"/>
        <span class="checkmark"></span>
        </label>
        
        <label for="Autre_club">Autre club</label>
        <label class="checkbox_label" style="top: 0px;">
        <input type="checkbox" name="Autre_club" id="Autre_club"/>
        <span class="checkmark"></span>
        </label>
        
        <label for="Essai">Essai</label>
        <label class="checkbox_label" style="top: 0px;">
        <input type="checkbox" name="Essai" id="Essai"/>	
        <span class="checkmark"></span>
        </label>
        
        <label for="Stage_uniquement">Stage uniquement</label>
        <label class="checkbox_label" style="top: 0px;">
        <input type="checkbox" name="Stage_uniquement" id="Stage_uniquement"/>
        <span class="checkmark"></span>
        </label>

        <label for="women">Féminine</label>
        <label class="checkbox_label" style="top: 0px;">
        <input type="checkbox" name="women" id="women"/>
        <span class="checkmark"></span>
        </label>
        </div>
        
        <div class="formColonne">
        <label for="Demie_tarif">Demi tarif</label>
        <label class="checkbox_label" style="top: 0px;">
        <input type="checkbox" name="Demie_tarif" id="Demie_tarif"/>
        <span class="checkmark"></span>
        </label>
        
        <label for="Licence_gratuite">Licence gratuite</label>
        <label class="checkbox_label" style="top: 0px;">
        <input type="checkbox" name="Licence_gratuite" id="Licence_gratuite"/>
        <span class="checkmark"></span>
        </label>
        
        <label for="Autorisation_photo_vidéo">Autorisation photo vidéo</label>
        <label class="checkbox_label" style="top: 0px;">
        <input type="checkbox" name="Autorisation_photo_vidéo" id="Autorisation_photo_vidéo"/>
        <span class="checkmark"></span>
        </label>

        
        <label for="baby_ping">Baby Ping</label>
        <label class="checkbox_label" style="bottom: 0px;">
            <input type="checkbox" name="BABY_PING" id="baby_ping" class="formLicTailleBox"/>
            <span class="checkmark"></span>
        </label>

        
        <label for="partenaire">Salarié d'entreprise partenaire</label>
        <label class="checkbox_label" style="bottom: 0px;">
                    <input type="checkbox" name="partenaire" id="partenaire" class="formLicTailleBox"/>
                    <span class="checkmark"></span>
        </label>


        </div>
        </div>
        <hr>
        <div class="boutonSubmit">
        <!--<input type="text" name="Inscription" id="Inscription" class="zone5">-->
        <button type="submit" class="btn" value='sav' style="margin-top: 28px; width:150px" >Enregistrer</button>
        </div>
	</FORM>
    <?php
    if(isset($_GET['E'])){
        if($_GET['E']==0){
            echo'<div class="réussite">Un email vient de vous être envoyé sur votre adresse.</div>';
        }
        elseif($_GET['E']==1){
            echo'<div class="erreur">Utilisateur ou mot de passe incorrect.</div>';
          }
    }
    ?>
    <script>disableInscriptionDate()</script>