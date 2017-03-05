<?php
require_once(dirname(__FILE__) . '/Settings.php');

function tecla2($cadena) {
   // Si es una letra o numero de 1 caracter de logitud, se le añadira <div class="tecla">
   // Pero si coincide con las palabras flechas,enter etc... se le añadira <img src="" />
   $buscarRegex = array('/^([A-ZñÑ0-9]{1})$/i','/^(flechas|enter|control|alt|espacio|der|izq|mover|shift|letras|letrasflechas)$/i','/^([0-9]) - ([0-9])$/i');
   $reemplazo = array('<div class="tecla">$1</div>','<img src="ico/$1.png" alt="tecla-$1" />', '<span class="tecla">$1</span> - <span class="tecla">$2</span>');
   $mag = preg_replace($buscarRegex, $reemplazo, $cadena,-1,$contador);
   // Si las sustituciones son menores a 1, significa que no se ha encontrado el patrón.
   if($contador <= 6){return $mag;}else{return 'desconocida';}
}

function tecla3($texto2) 
{
$buscar = (' - ');
$reem1 = ('</div> - <div class="table">');
$texto2 = str_replace($buscar, $reem1, $texto2);

return $texto2;
}

/* Por cada campo de tecla ... */
foreach($_POST['tecla'] as $tecla){
   /* Le pasamos tecla2 y le agregamos a un array. */
   $teclas[] = tecla2($tecla);
}
 
/* Lo mismo con las acciones.. */
foreach($_POST['accion'] as $accion){
   $acciones[] = $accion;
}

$miniatura = $_REQUEST['miniatura'] ;
$linkjuego = $_REQUEST['link_juego'] ;
$nombre = $_REQUEST['nombre'] ;
$descripcion = $_REQUEST['descripcion'] ;
$cat = $_POST['cat'] ;
$tipo = $_POST['tipo_de_juego'];
$teclas = serialize($teclas);
$acciones = serialize($acciones);
$ancho = $_POST['ancho'];
$alto = $_POST['alto'];
$code = $_POST['code'];

session_start(); 
if ($_POST["vercode"] != $_SESSION["vercode"] OR $_SESSION["vercode"]=='')  { 
echo "<script>alert('El c\u00f3digo es err\u00f3neo.');
window.history.back();</script>";
} else { 
mysql_connect ($db_server, $db_user, $db_passwd) or die ('Error: ' . mysql_error());
mysql_select_db ($db_name);
mysql_query ("SET NAMES 'utf8'");
$query="INSERT INTO juegos (miniatura, linkjuego, nombre, descripcion, categoria, tipo, teclas, acciones, ancho, alto, code) VALUES ('$miniatura', '$linkjuego', '$nombre', '$descripcion', '$cat', '$tipo', '$teclas','$acciones', '$ancho', '$alto', '$code')";
mysql_query($query) or die ('Error: ' . mysql_error());
header("location:okay.html");
}; 
 
?>
