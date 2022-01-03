<head>
	<title>Règlement | Rakket</title>
</head>
<br><br><br><br><br>
<!-- entête formulaire règlement-->
	<div class="TableauOperations">
	<table>
	<tr>
	<td style="width:171px">Famille</td>
    <td style="width:96px">Prénom</td>
	<td style="width:171px">Date</td>
	<td style="width:196px">Objet règlement </td>
	<td style="width:171px">Type paiement</td>
	<td style="width:171px">Montant</td>
	<td style="width:196px">Banque</td>
	<td style="width:171px">Code chèque</td>
	</tr>
	</table>
	</div>
	<!-- opération-->
	
	<!-- formulaire pour ajouter un règlement-->
	<div class="TableauOperations">
    <FORM action="index.php?p=licencie&uc=gestionLicenciés&action=ajouterReglement" style="display:flex"method="post">
	
	<?php
    
	$unParticipant = getParticipantsByNum($_GET["participant"]);
    if($unParticipant['Numéro_licencie']!=""){
        $licencié = getLesInfosLicenciésByNum($unParticipant['Numéro_licencie']);
        $Nom = $licencié['Nom_licencié'];
        $Prenom = $licencié['Prénom_licencié'];
        $Tel_mobile = $licencié['Tel_mobile'];
        $Email = $licencié['Email_perso'];
        $Date_Naissance = $licencié['Date_Naissance'];
    }
    else{
        $Nom = $unParticipant['Nom'];
        $Prenom = $unParticipant['Prenom'];
        $Tel_mobile = $unParticipant['Tel_mobile'];
        $Email = $unParticipant['Email_perso'];
        $Date_Naissance = $unParticipant['Date_Naissance'];
    }
	echo'
    <input type="text" readonly name="Nom" id="Nom" class="formRegTailleFam" value="'.$Nom.'"/>
    
    <input type="text" readonly name="Prenom" style="width:100px" id="Prenom" class="formRegTailleFam" value="'.$Prenom.'"/>
    
    ';

    echo '<input type="date" name="Date_opération" id="Date_opération" value="'.date('Y-m-d').'" class="formRegTailleDate"/>';

	echo '
    <select name="Objet_règlement" style="width:200px;">
        <option value="ex"> exemple </option>
    </select>';
	
	
	echo '
    <select name="Type_paiement" style="width:175px;">
        <option value="ex">exemple</option>
    </select>';
	?>
	
	<input type="text" name="Montant" id="Montant" class="formRegTailleMontant"/>
	
	<select name="Banque" style="width:200px;">
        <option value="ex">exemple</option>';
	</select>
	
	<input type="text" name="Code_chèque" id="Code_chèque"/>
	</div>
	<div class="TableauOperations">
	<input type="submit" id="envoyer" name="envoyer" class="btn" value="Ajouter" style="margin-top: 28px; width:150px;"/>
    </div>
    </FORM>

	<hr>
	
	<!-- entête liste des opérations pour une famille du formulaire règlement-->
	<!--
	<div class="formRegFam">Famille</div><div class="formRegCodeOpe">Code opération </div><div class="formRegLibOpe">Libellé opération </div>
	<div class="formRegDate1L2">Date </div><div class="formRegMontant">Débit </div><div class="formRegMontant">Crédit </div>
	<br><div class="formRegDate2L2">opération </div><hr>
	-->
	<div class="TableauOperations">
	<table>
	<caption style="margin:1em 0;">Liste des Opérations</caption>
	
	<tr>
        <th>Famille</td>
        <th>Prénom</td>
        <th>Code Opération</td>
        <th>Libellé opération </td>
        <th>Date</td>
        <th>Débit</td>
        <th>Crédit</td>
    </tr>
	
		
	<!-- liste des opérations pour une famille dans formulaire règlement-->	
	
	<?php
	$lesOpérations = getLesOpérationsFamille();
	foreach ($lesOpérations as $uneOpération)
        {
			$fam = $uneOpération['Famille'];
            $prénom = $uneOpération['Prénom'];
			$codeOpé = $uneOpération['Code_opération'];
			$libelleOpé = $uneOpération['Libellé_libre_opération'];
			$date = date('d/m/Y', strtotime($uneOpération['Date_opération']));
			$debit = $uneOpération['Débit'];
			$credit = $uneOpération['Crédit'];
			?> 
			<tr>
				<td class="EnteteTableauMouvement7">
                    <div>
                    <?php if($codeOpé!='Don') echo $fam; ?>
                    <?php if($codeOpé=='Don') echo $fam; ?>
                </td>
                <td class="EnteteTableauMouvement7">
                    <div>
                    <?php echo $prénom; ?>
                </td>
                <td class="EnteteTableauMouvement7">
                    <?php if($codeOpé!='Don') echo $codeOpé; ?>
                    <?php if($codeOpé=='Don') echo $codeOpé; ?>
                </td>
                <td class="EnteteTableauMouvement7">
                    <?php if($codeOpé!='Don') echo $libelleOpé; ?>
                    <?php if($codeOpé=='Don') echo $libelleOpé; ?>
                </td>
                <td class="EnteteTableauMouvement7">
                    <?php if($codeOpé!='Don') echo $date; ?>
                    <?php if($codeOpé=='Don') echo $date; ?>
                </td>
                <td class="EnteteTableauMouvement4">
                    <?php if ($debit!=null and $debit!=0 and $codeOpé!='Don') echo abs(sprintf("%.02f",$debit)); ?>
                    <?php if ($debit!=null and $debit!=0 and $codeOpé=='Don') echo abs(sprintf("%.02f",$debit)); ?>
                </td>
                <td class="EnteteTableauMouvement4">
                    <?php if ($credit!=null and $credit!=0 and $codeOpé!='Don') echo abs(sprintf("%.02f",$credit)); ?>
                    <?php if ($credit!=null and $credit!=0 and $codeOpé=='Don') echo "<div style=\"color:#95afc0\">".abs(sprintf("%.02f",$credit))."</div>"; ?>
                </td>
			</tr>
			<br>
			<?php
		}		
	?>
	</table>
	</div>
	<br>
	
	<!-- solde d'une famille dans formulaire règlement-->
	<div class="TableauOperations">
	<?php
	$lesSoldes = getSolde();{
	foreach ($lesSoldes as $unSolde)
        {
			$fam = $unSolde['Famille'];
			$debit = $unSolde['debit'];
			$credit = $unSolde['credit'];
			$somme = $credit-$debit;
			if($somme<0){
			?>
			<?php echo '<h2 style="color: #e95530;">Solde : '.sprintf("%.02f",$somme).'</h2>' ?>
			<?php
			}
			else
				if($somme>0){
				?>
				<?php echo '<h2 style="color: #4ad85a;">Solde : '.sprintf("%.02f",$somme).'</h2>' ?>
				<?php
				} else {
					?>
					<?php echo '<h2>Solde : '.sprintf("%.02f",$somme).'</h2>' ?>
			<?php
				}
		}		
	}
	?>
	</div>
	<hr>