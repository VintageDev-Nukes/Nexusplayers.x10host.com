<?php
require 'check.php'; //continua en el siguiente bloque
require("funciones.php");

require_once(dirname(__FILE__) . '/Settings.php'); //Aquí se saca las strings de conexión
$conexion = mysql_connect ($db_server, $db_user, $db_passwd) or die ('Error: ' . mysql_error()); //Aquí se conecta
mysql_select_db($db_name, $conexion);
mysql_query("SET NAMES 'utf8'");

$id = getParam($_GET["id"], "-1");
$action = getParam($_GET["action"], "");
$tabla = getParam($_GET["tabla"], "");
$redirect = getParam($_GET['redirect'], "");
$row = getParam($_GET['row'], "");
if(isset($_GET['value'])) {$value = getParam($_GET['value'], "");}

switch ($action) {
	case 'del':
		$sql = "DELETE FROM ".$tabla." WHERE id = ".sqlValue($id, "int");
    	mysql_query($sql, $conexion);
		break;

	case 'mod':
		$sql = "UPDATE ".$tabla." SET ".$row."='".$value."' WHERE id='".$id."'";
    	mysql_query($sql, $conexion);
		break;

}

header("location: " . $redirect);

?>