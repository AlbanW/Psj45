<?php
require 'vendor/autoload.php';

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

/*
    fichier qui contient les fonctions qui ne font pas accès aux données de la BD
*/

function random_password($length){
    //Liste des characters utiliser pour generer le mot de passe.
    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!-.[]?*()';
    $password = '';
    $characterListLength = mb_strlen($characters, '8bit') - 1;
    foreach(range(1, $length) as $i){
        $password .= $characters[random_int(0, $characterListLength)];
    }
    return $password;
}

function exportListeLicenciés(){


    $spreadsheet = new Spreadsheet();
    $sheet = $spreadsheet->getActiveSheet();
    $sheet->setCellValue('A1', 'Nom Famille');
    $spreadsheet->getActiveSheet()->getColumnDimension('A')->setAutoSize(true);
    $sheet->setCellValue('B1', 'Nom');
    $spreadsheet->getActiveSheet()->getColumnDimension('B')->setAutoSize(true);
    $sheet->setCellValue('C1', 'Prénom');
    $spreadsheet->getActiveSheet()->getColumnDimension('C')->setAutoSize(true);
    $sheet->setCellValue('D1', 'Sexe');
    $spreadsheet->getActiveSheet()->getColumnDimension('D')->setAutoSize(true);
    $sheet->setCellValue('E1', 'Naissance');
    $spreadsheet->getActiveSheet()->getColumnDimension('E')->setAutoSize(true);
    $sheet->setCellValue('F1', 'Natio');
    $spreadsheet->getActiveSheet()->getColumnDimension('F')->setAutoSize(true);
    $sheet->setCellValue('G1', 'Ad2');
    $spreadsheet->getActiveSheet()->getColumnDimension('G')->setAutoSize(true);
    $sheet->setCellValue('H1', 'Code Postal');
    $spreadsheet->getActiveSheet()->getColumnDimension('H')->setAutoSize(true);
    $sheet->setCellValue('I1', 'Ville');
    $spreadsheet->getActiveSheet()->getColumnDimension('I')->setAutoSize(true);
    $sheet->setCellValue('J1', 'Telephone');
    $spreadsheet->getActiveSheet()->getColumnDimension('J')->setAutoSize(true);
    $sheet->setCellValue('K1', 'Portable');
    $spreadsheet->getActiveSheet()->getColumnDimension('K')->setAutoSize(true);
    $sheet->setCellValue('L1', 'Mail');
    $spreadsheet->getActiveSheet()->getColumnDimension('L')->setAutoSize(true);
    
    $lesExports = getExportListeLicenciés();
    

    $i = 1;

    foreach($lesExports as $unExport){
        $dateNais = str_replace("-","/",$unExport['Date_Naissance']);
        $arr = str_split($unExport['Ville']);
        $c = 0;
        while(is_numeric($arr[$c])){            
            $codePostal = $codePostal.$arr[$c];
            $c ++;
        }
        for($c;$c<count($arr);$c++){
            $ville = $ville.$arr[$c];
        }
        $i ++;  
        $sheet->setCellValue('A'.$i, $unExport['Famille']);
        $sheet->setCellValue('B'.$i, $unExport['Nom_licencié']);
        $sheet->setCellValue('C'.$i, $unExport['Prénom_licencié']);
        $sheet->setCellValue('D'.$i, $unExport['Sexe']);
        $sheet->setCellValue('E'.$i, $dateNais);
        $sheet->setCellValue('F'.$i, $unExport['Nationalité']);
        $sheet->setCellValue('G'.$i, $unExport['Adresse']);
        $sheet->setCellValue('H'.$i, $codePostal);
        $sheet->setCellValue('I'.$i, $ville);
        $sheet->setCellValue('J'.$i, $unExport['Tel_domicile']);
        $sheet->setCellValue('K'.$i, $unExport['Tel_mobile']);
        $sheet->setCellValue('L'.$i, $unExport['Email_perso']);
        $codePostal='';
        $ville='';
    }

    $writer = new Xlsx($spreadsheet);
    $writer->save('exportListeLicenciés.xls');
    
    header("Location:exportListeLicenciés.xls");
}

function getImportListeLicenciés(){
    $reader = new \PhpOffice\PhpSpreadsheet\Reader\Xls();
    $spreadsheet = $reader->load("./import/uploads/importedFile.xls");
    $LesLicenciés=$spreadsheet->getSheet(0)->toArray();
    return $LesLicenciés;
}

function getSeason(){
    date_default_timezone_set('Europe/Paris');
    $time = strtotime("now");
    $year = date('Y', $time);
    if(date('n', $time)<7){
        $date = ($year-1).'-'.$year;
    }
    else{
        $date = $year.'-'.($year+1);
    }
    return $date;
}

?>