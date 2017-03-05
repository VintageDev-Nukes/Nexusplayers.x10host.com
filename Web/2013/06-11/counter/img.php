<?php
 
include('counter_config.php');
 
/* Valores por defecto */
if(!empty($_REQUEST['app'])){$app=$_REQUEST['app'];}else{$app='';}
if(!empty($_REQUEST['tipo'])){$tipo=$_REQUEST['tipo'];}else{$tipo='';}
 
/* Comprobaciones */
if(empty($tipo) && !empty($app)) {
    $string = 'Has olvidado el \'tipo\' de aplicación. Estos son los tipos disponibles: \'unico\' y \'total\'.';
    $proceed=false;
} elseif(empty($app) && !empty($tipo)) {
    $string = 'Has olvidado el nombre de la \'app\'';
    $proceed=false;
} elseif($tipo==='unico') {
    $string = $app.' ha obtenido %ips instalaciones únicas.';
    $proceed=true;
} elseif($tipo==='total') {
    $string = $app.' ha obtenido %hits instalaciones totales.';
    $proceed=true;
} elseif(!empty($app) && !empty($tipo)) {
    $string = 'Te has equivocado en el \'tipo\' de variable, usa \'unico\' o \'total\'.';
    $proceed=false;
} else {
    $string = 'No has declarado ninguna variable.';
    $proceed=false;
}
 
/* Si podemos continuar, hacemos la consulta */
if($proceed===true){
    if(preg_match("/^[A-Z0-9 ]+$/i", $app)<=0){die('Intento de Hack... -.-"');}
    if(preg_match("/^[A-Z0-9 ]+$/i", $tipo)<=0){die('Intento de Hack... -.-"');} 

    /* Conectar a BD */
    $link = mysqli_connect($localhost,$dbuser,$dbpass,$dbname);
    if(!$link){die('No se ha podido establecer conexion a la BD');}
 
    $query = "SELECT COUNT(info.app) as ips, COUNT(hits.count) as hts FROM info, hits WHERE hits.page='".$app."' AND info.app='".$app."'";
    $result = mysqli_query($link,$query);
    $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
 
    $total = array($row['ips'],$row['hts']);
    $reemplazo = array('%ips','%hits');
 
    $string = str_replace($reemplazo,$total,$string);
}
 
/* Generar Imagen */
header("Content-type: image/png");
$fuente = "arial.ttf";
$font = 4;
$width = ImageFontWidth($font) * strlen($string);
$height = ImageFontHeight($font);
 
$im = @imagecreate($width,$height);
$background_color = imagecolorallocatealpha($im, 255, 255, 255, 127);
$text_color = imagecolorallocate($im, 0, 0,0); 
imagestring($im, $font, 0, 0, utf8_decode($string), $text_color);
#imagettftext($im, $font, 0, 0, 0, $text_color, $fuente, $string);
imagepng($im);
imagedestroy($im);
 
mysqli_free_result($result);
mysqli_close($link);
?>