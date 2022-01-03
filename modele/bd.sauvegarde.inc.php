<?php
$files = glob($_SERVER["DOCUMENT_ROOT"].'/*.zip');
foreach($files as $file){
    if(is_file($file)){
        unlink($file);
    }
}
date_default_timezone_set('Europe/Paris');
$now = date('Y-m-d', time());
/*Zip web site*/ 
$zip = new ZipArchive();
$source = $_SERVER["DOCUMENT_ROOT"].'/';
$backUp_web = 'SiteWeb_backup_'.$now.'.zip';
$zip->open($backUp_web, ZIPARCHIVE::CREATE);
if (is_dir($source) === true)
{
    $files = new RecursiveIteratorIterator(new RecursiveDirectoryIterator($source), RecursiveIteratorIterator::SELF_FIRST);

    foreach ($files as $file)
    {
        $file = str_replace('\\', '/', $file);

        // Ignore "." and ".." folders
        if( in_array(substr($file, strrpos($file, '/')+1), array('.', '..')) )
            continue;

        $file = realpath($file);

        if (is_dir($file) === true)
        {
            $zip->addEmptyDir(str_replace($source . '/', '', $file . '/'));
        }
        else if (is_file($file) === true)
        {
            $zip->addFromString(str_replace($source . '/', '', $file), file_get_contents($file));
        }
    }
}
/*Zip Data Base*/ 
$host = "localhost";
$username = "Admin-psj45";
$password = "Zmw250i~";
$database_name = "psj45";
$conn = mysqli_connect($host, $username, $password, $database_name);
$conn->set_charset("utf8");
$tables = array();
$sql = "SHOW TABLES";
$result = mysqli_query($conn, $sql);
while ($row = mysqli_fetch_row($result)) {
    $tables[] = $row[0];
}
$sqlScript = "";
foreach ($tables as $table) {
    $query = "SHOW CREATE TABLE $table";
    $result = mysqli_query($conn, $query);
    $row = mysqli_fetch_row($result);
    $sqlScript .= "\n\n" . $row[1] . ";\n\n";
    $query = "SELECT * FROM $table";
    $result = mysqli_query($conn, $query);
    $columnCount = mysqli_num_fields($result);
    // Prepare SQLscript for dumping data for each table
    for ($i = 0; $i < $columnCount; $i ++) {
        while ($row = mysqli_fetch_row($result)) {
            $sqlScript .= "INSERT INTO $table VALUES(";
            for ($j = 0; $j < $columnCount; $j ++) {
                $row[$j] = $row[$j];
             if (isset($row[$j])) {
                    $sqlScript .= '"' . $row[$j] . '"';
                } else {
                    $sqlScript .= '""';
                }
                if ($j < ($columnCount - 1)) {
                    $sqlScript .= ',';
                }
            }
            $sqlScript .= ");\n";
        }
    }
    
    $sqlScript .= "\n"; 
}
$backup_sql = $database_name . '_backup_' . $now . '.sql';
$fileHandler = fopen($backup_sql, 'w+');
$number_of_lines = fwrite($fileHandler, $sqlScript);
fclose($fileHandler); 
ob_clean();
flush();


/*ZIP all*/
$zip = new ZipArchive;
$backup='psj45_backup_' . $now.'.zip';
if ($zip->open($backup, ZipArchive::CREATE) === TRUE)
{
    // Add files to the zip file
    $zip->addFile($backup_sql);
    $zip->addFile($backUp_web);
    $zip->close();
}
exec('rm ' . $backup_sql); 
exec('rm ' . $backUp_web);
header("Location:".$backup);

?>