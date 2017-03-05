<?php

require_once(dirname(__FILE__) . '/Settings.php');

function sanear_string($string)
{

    $string = trim($string);

    //Esta parte se encarga de eliminar cualquier caracter extraño
    $string = str_replace(
        array("\\", "¨", "º", "-", "~",
             "", "@", "|", "!", "\"",
             "·", "$", "%", "&", "/",
             "(", ")", "?", "'", "¡",
             "¿", "[", "^", "`", "]",
             "+", "}", "{", "¨", "´",
             ">", "< ", ";", ",", ":",
             "."),
        '',
        $string
    );


    return $string;
}

$nombre = sanear_string($_REQUEST['nombre']) ;

session_start(); 
if ($_POST["vercode"] != $_SESSION["vercode"] OR $_SESSION["vercode"]=='')  { 
echo "<script>alert('El c\u00f3digo es err\u00f3neo.');
window.history.back();</script>";
} else { 
    mysql_connect ($db_server, $db_user, $db_passwd) or die ('Error: ' . mysql_error());
    mysql_select_db ($db_name);
    mysql_query ("SET NAMES 'utf8'");
    $query="INSERT INTO hits (page) VALUES ('$nombre')";
    mysql_query($query) or die ('Error: ' . mysql_error());
    header("location:okay.html");
}; 

?>
