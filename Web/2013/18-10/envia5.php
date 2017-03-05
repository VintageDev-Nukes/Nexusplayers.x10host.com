<?php
require_once(dirname(__FILE__) . '/Settings.php');

function reem($texto1) {

//Rememplazamos caracteres especiales latinos minusculas
$find = array('á', 'é', 'í', 'ó', 'ú', 'ñ', '\"', '€', 'ü', 'Á', 'É', 'Í', 'Ó', 'Ú', 'Ñ', 'Ü', 'ç', 'Ç', '¿', '¡');
$repl = array('&aacute;', '&eacute;', '&iacute;', '&oacute;', '&uacute;', '&ntilde;', '&quot;', '&euro;', '&uuml;', '&Aacute;', '&Eacute;', '&Iacute;', '&Oacute;', '&Uacute;', '&Ntilde;', '&Uuml;', '&ccedil;', '&Ccedil;', '&#191;', '&#161;');
$texto1 = str_replace($find, $repl, $texto1);

return $texto1;

} 

function sanear_string($string)
{

    $string = trim($string);

    $string = str_replace(
        array('á', 'à', 'ä', 'â', 'ª', 'Á', 'À', 'Â', 'Ä'),
        array('a', 'a', 'a', 'a', 'a', 'A', 'A', 'A', 'A'),
        $string
    );

    $string = str_replace(
        array('é', 'è', 'ë', 'ê', 'É', 'È', 'Ê', 'Ë'),
        array('e', 'e', 'e', 'e', 'E', 'E', 'E', 'E'),
        $string
    );

    $string = str_replace(
        array('í', 'ì', 'ï', 'î', 'Í', 'Ì', 'Ï', 'Î'),
        array('i', 'i', 'i', 'i', 'I', 'I', 'I', 'I'),
        $string
    );

    $string = str_replace(
        array('ó', 'ò', 'ö', 'ô', 'Ó', 'Ò', 'Ö', 'Ô'),
        array('o', 'o', 'o', 'o', 'O', 'O', 'O', 'O'),
        $string
    );

    $string = str_replace(
        array('ú', 'ù', 'ü', 'û', 'Ú', 'Ù', 'Û', 'Ü'),
        array('u', 'u', 'u', 'u', 'U', 'U', 'U', 'U'),
        $string
    );

    $string = str_replace(
        array('ñ', 'Ñ', 'ç', 'Ç'),
        array('n', 'N', 'c', 'C',),
        $string
    );

    //Esta parte se encarga de eliminar cualquier caracter extraño
    $string = str_replace(
        array("\\", "¨", "º", "-", "~",
             "#", "@", "|", "!", "\"",
             "·", "$", "%", "&", "/",
             "(", ")", "?", "'", "¡",
             "¿", "[", "^", "`", "]",
             "+", "}", "{", "¨", "´",
             ">", "< ", ";", ",", ":",
             ".", " "),
        '',
        $string
    );

    return strtolower($string);
}

$icono = $_REQUEST['icono'];
$nombre = $_REQUEST['nombre'];
$descripcion = $_REQUEST['descripcion'];
$descarga = $_REQUEST['descarga'];
$lenguaje = $_REQUEST['lenguaje'];
$compilador = $_REQUEST['compilador'];
$interprete = $_REQUEST['interprete'];
$peso = $_REQUEST['peso'] . " " . $_REQUEST['medida'];
$appver = $_REQUEST['appver'];

session_start(); 
if ($_POST["vercode"] != $_SESSION["vercode"] OR $_SESSION["vercode"]=='')  { 
echo "<script>alert('El c\u00f3digo es err\u00f3neo.');
window.history.back();</script>";
} else { 
mysql_connect ($db_server, $db_user, $db_passwd) or die ('Error: ' . mysql_error());
mysql_select_db ($db_name);
mysql_query ("SET NAMES 'utf8'");
$query="INSERT INTO softs (icono, nombre, descripcion, lenguaje, compilador, interprete, peso, link, appver) VALUES ('$icono', '$nombre', '$descripcion', '$lenguaje', '$compilador', '$interprete', '$peso', '$descarga', '$appver')";
mysql_query($query) or die ('Error: ' . mysql_error());
header("location:okay.html");
}; 

?>