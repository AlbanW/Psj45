<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Acceuil | Rakket</title>
        <div class="headerbar"></div>
    </head>
    <body>
            <section class="main_psj">
                <div style="display:flex;align-items: flex-start; justify-content: center">
                    <main class="logo_psj">
                        <img height="95"src="../img/rakketd.png" alt="Rakket">
                    </main>
                </div>
                <div style="display:flex;align-items: flex-start; justify-content: center;margin-top:25px;">
                   <h1 style="font-weight: 300;">Bonjour,&nbsp;<h1> <?php echo $_SESSION['username']?>
                </div>
                <div style="margin-top:45px;display:flex;justify-content: center;">
                    <a href="index.php?p=licencie&uc=gestionLicenciés&action=listeLicencie" style="color: rgba(0, 0, 0) !important; text-align:center;margin-right:75px">
                        <div class="box_accueil">
                            Gestion Licencié
                        </div>
                    </a>
                    <a href="index.php?p=stage&uc=gestionStages&action=créationStage" style="color: rgba(0, 0, 0) !important;text-align:center;margin-left:75px">
                        <div class="box_accueil">
                            Gestion Stage
                        </div>
                    </a>
                </div>

            </section>
    </body>
</html>
