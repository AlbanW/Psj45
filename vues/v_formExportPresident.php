<?php
    require 'vendor/autoload.php';

    use PhpOffice\PhpSpreadsheet\Spreadsheet;
    use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

    $spreadsheet = new Spreadsheet();
    $sheet = $spreadsheet->getActiveSheet();
    $sheet->setCellValue('A1', 'Famille');
    $spreadsheet->getActiveSheet()->getColumnDimension('A')->setAutoSize(true);
    $sheet->setCellValue('B1', 'Prénom');
    $spreadsheet->getActiveSheet()->getColumnDimension('B')->setAutoSize(true);
    $sheet->setCellValue('C1', 'Code opération');
    $spreadsheet->getActiveSheet()->getColumnDimension('C')->setAutoSize(true);
    $sheet->setCellValue('D1', 'Libellé libre opération');
    $spreadsheet->getActiveSheet()->getColumnDimension('D')->setAutoSize(true);
    $sheet->setCellValue('E1', 'Date opération');
    $spreadsheet->getActiveSheet()->getColumnDimension('E')->setAutoSize(true);
    $sheet->setCellValue('F1', 'Débit');
    $spreadsheet->getActiveSheet()->getColumnDimension('F')->setAutoSize(true);
    $sheet->setCellValue('G1', 'Crédit');
    $spreadsheet->getActiveSheet()->getColumnDimension('G')->setAutoSize(true);
    $sheet->setCellValue('H1', 'Solde');
    $spreadsheet->getActiveSheet()->getColumnDimension('H')->setAutoSize(true);
    $sheet->setCellValue('I1', 'Commentaire-1');
    $spreadsheet->getActiveSheet()->getColumnDimension('I')->setAutoSize(true);
    $sheet->setCellValue('J1', 'Commentaire-2');
    $spreadsheet->getActiveSheet()->getColumnDimension('J')->setAutoSize(true);
    
    $lesExports = getExportPresident();

    $i = 1;

	foreach($lesExports as $unExport){
      $i ++;  
      $sheet->setCellValue('A'.$i, $unExport['Famille']);
      $sheet->setCellValue('B'.$i, $unExport['Prénom']);
      $sheet->setCellValue('C'.$i, $unExport['Code_opération']);
      $sheet->setCellValue('D'.$i, $unExport['Libellé_libre_opération']);
      $sheet->setCellValue('E'.$i, $unExport['Date_opération']);
      $sheet->setCellValue('F'.$i, $unExport['Débit']);
      $sheet->setCellValue('G'.$i, $unExport['Crédit']);
      $sheet->setCellValue('H'.$i, $unExport['Solde']);
    }

    $writer = new Xlsx($spreadsheet);
    $writer->save('exportPresident.xlsx');

    header("Location:exportPresident.xlsx");

	echo "<script>window.close();</script>";
?>