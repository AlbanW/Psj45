let nb = 0;
let Select = [];

function showHeaderTools(type) {
    
    if(type=='licenciés'){
        document.getElementById("tools").innerHTML = '<form method="post" action="index.php?p=licencie&uc=gestionLicenciés&action=listeLicencie" style="margin-bottom: 0px; display: flex; align-items: center;"> <input name="key" type="search" placeholder="Rechercher" maxlength="19"/> <button type="submit" name="search" value="true" class="searchbtn"><img class="searchimg" src="../img/loupe.svg" height="15px"/></button> </form> <li class="separator"></li><li><a href="index.php?p=licencie&uc=gestionOutils&action=confirmationSuppression" class="btn_Suppr">Supprimer</a></li><li><p id="nbSelected">0 Élément(s) sélectionné(s)</p></li>';
        //<a style="padding-felt:50px;" href="index.php?p=licencie&uc=gestionOutils&action=confirmationSuppression" class="btn_Suppr">Archiver</a>
    }
    else if(type=='comptes')
    {
        document.getElementById("tools").innerHTML = '<form method="post" action="index.php?p=licencie&uc=gestionCompte&action=gererComptes" style="margin-bottom: 0px; display: flex; align-items: center;"> <input name="key" type="search" placeholder="Rechercher" maxlength="19"/> <button type="submit" name="search" value="true" class="searchbtn"><img class="searchimg" src="../img/loupe.svg" height="15px"/></button> </form> <li class="separator"></li> <li><a href="index.php?p=licencie&uc=gestionOutils&action=confirmationSuppression" class="btn_Suppr">Supprimer</a></li><li><p id="nbSelected">0 Élément(s) sélectionné(s)</p></li>';
    }
    else if(type=='familles')
    {
        document.getElementById("tools").innerHTML = '<form method="post" action="index.php?p=licencie&uc=gestionLicenciés&action=creerFamille" style="margin-bottom: 0px; display: flex; align-items: center;"> <input name="key" type="search" placeholder="Rechercher" maxlength="19"/> <button type="submit" name="search" value="true" class="searchbtn"><img class="searchimg" src="../img/loupe.svg" height="15px"/></button> </form> <li class="separator"></li> <li><a href="index.php?p=licencie&uc=gestionOutils&action=confirmationSuppression" class="btn_Suppr">Supprimer</a></li><li><p id="nbSelected">0 Élément(s) sélectionné(s)</p></li>';
    }
    else if(type=='tarifs')
    {
        document.getElementById("tools").innerHTML = '<form method="post" action="index.php?p=licencie&uc=gestionLicenciés&action=tarif" style="margin-bottom: 0px; display: flex; align-items: center;"> <input name="key" type="search" placeholder="Rechercher" maxlength="19"/> <button type="submit" name="search" value="true" class="searchbtn"><img class="searchimg" src="../img/loupe.svg" height="15px"/></button> </form> <li class="separator"></li> <li><a href="index.php?p=licencie&uc=gestionOutils&action=confirmationSuppression" class="btn_Suppr">Supprimer</a></li><li><p id="nbSelected">0 Élément(s) sélectionné(s)</p></li>';
    }
    else if(type=='stages')
    {
        document.getElementById("tools").innerHTML = '<form method="post" action="index.php?p=stage&uc=gestionStages&action=listeStages" style="margin-bottom: 0px; display: flex; align-items: center;"> <input name="key" type="search" placeholder="Rechercher" maxlength="19"/> <button type="submit" name="search" value="true" class="searchbtn"><img class="searchimg" src="../img/loupe.svg" height="15px"/></button> </form> <li class="separator"></li> <li><a href="index.php?p=stage&uc=gestionOutils&action=confirmationSuppression" class="btn_Suppr">Supprimer</a></li><li><p id="nbSelected">0 Élément(s) sélectionné(s)</p></li>';
    }
    else if(type=='tarifsStage')
    {
        document.getElementById("tools").innerHTML = '<form method="post" action="index.php?p=stage&uc=gestionStages&action=tarif" style="margin-bottom: 0px; display: flex; align-items: center;"> <input name="key" type="search" placeholder="Rechercher" maxlength="19"/> <button type="submit" name="search" value="true" class="searchbtn"><img class="searchimg" src="../img/loupe.svg" height="15px"/></button> </form> <li class="separator"></li> <li><a href="index.php?p=stage&uc=gestionOutils&action=confirmationSuppression" class="btn_Suppr">Supprimer</a></li><li><p id="nbSelected">0 Élément(s) sélectionné(s)</p></li>';
    }
    
    document.cookie = "Select= ; expires = Thu, 01 Jan 1970 00:00:00 GMT"
}

function getNumberSelectedElements(num) {
    console.log(num);
    if (Select.includes(num)) {
        nb--;
        Select.splice(Select.indexOf(num), 1);
    } else {
        nb++;
        Select.push(num);
    }
    let d = new Date();
    d.setTime(d.getTime() + (24 * 60 * 60 * 1000));
    let expires = "expires=" + d.toUTCString();
    document.cookie = 'Select=' + Select + ';' + expires + ';path=/'
    document.getElementById("nbSelected").innerText = nb + " élément(s) sélectionné(s)";
}

function importLicenciés(){
    let file = document.getElementById('listLicenciésImport').files[0];
    let fileName = file.name;
    document.getElementById("labelListLicenciésImport").innerText = fileName;
    const uploadUrl = 'import/process.php'
    const form = document.getElementById('formListLicenciésImport')
    form.addEventListener('submit', (e) => {
        e.preventDefault()
      
        const files = document.querySelector('[type=file]').files
        const formData = new FormData()
        console.log(files)
        for (let i = 0; i < files.length; i++) {
          let file = files[i]
      
          formData.append('files[]', file)
        }
      
        fetch(uploadUrl, {
          method: 'POST',
          body: formData,
        }).then((response) => {
          console.log(response)
          window.location="index.php?p=licencie&uc=gestionLicenciés&action=exportListLicencié";
        })
      })
}

function disableInscriptionDate(){
    let today = new Date().toISOString().slice(0, 10);
    Date_inscription = document.getElementById("Date_inscription");
    TypeLicence = document.getElementById("TypeLicence");
    Catégorie_1 = document.getElementById("Catégorie_1");
    Inscription = document.getElementById("Inscription");
    checkBoxs = document.querySelectorAll('.formTrois input');
    Date_inscription.setAttribute("value","");
    Catégorie_1.value="auto";
    if(Inscription.checked){
        if(TypeLicence.value==""){
            TypeLicence.value="PROMO";
        }
        Date_inscription.setAttribute("value",today);
        Date_inscription.removeAttribute('readonly');
        Date_inscription.setAttribute('required', "");
        TypeLicence.removeAttribute('disabled');
        Catégorie_1.removeAttribute('disabled');
        checkBoxs.forEach(function(userItem) {
            userItem.removeAttribute('disabled');
          });
    }
    else{
        Date_inscription.setAttribute("value","");
        TypeLicence.value="";
        Catégorie_1.value="auto";
        Date_inscription.removeAttribute('required');
        Date_inscription.setAttribute("readonly","");
        TypeLicence.setAttribute("disabled", "");
        Catégorie_1.setAttribute("disabled", "");
        checkBoxs.forEach(function(userItem) {
            userItem.setAttribute("disabled", "");
          });
    }
    
}

function disableDayOfWeekSelector(){
    Week = document.getElementById("Week");
    checkBoxs = document.querySelectorAll('.selection_jours input');
    if(Week.checked){
        checkBoxs.forEach(function(userItem) {
            userItem.setAttribute("disabled", "");
        });
    }
    else{
        checkBoxs.forEach(function(userItem) {
            userItem.removeAttribute('disabled');
        });
    }
}