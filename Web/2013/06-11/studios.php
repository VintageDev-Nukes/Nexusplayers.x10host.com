<?
//Studios.php

require_once(dirname(__FILE__) . '/Settings.php');
mysql_connect ($db_server, $db_user, $db_passwd) or die ('Error: ' . mysql_error());
mysql_select_db ($db_name);
$query = "SELECT COUNT(*) FROM softs";
$result = mysql_query($query) or die(mysql_error());
$int = 0;
$q = @$_GET['q'];
$l = @$_GET['l'];
$c = @$_GET['c'];
$i = @$_GET['i'];

/*if(empty($q)){$q="";}
if(empty($l)){$l="";}
if(empty($c)){$c="";}
if(empty($i)){$i="";}*/


?>

<html>
<head>
<title>Proyectos de Ikillnukes</title>
<style type="text/css">
	.icon { 
		width:expression(document.body.clientWidth > 100 ? "100px" : "auto");
		height:expression(document.body.clientHeight > 125 ? "125px" : "auto");
	}
</style>
</head>
<body>

<?php

$total = mysql_num_rows(mysql_query("SELECT * FROM softs ORDER BY id"));
if($total==0){
    echo '<center>No se encontraron resultados.</center>';
}else{
if(empty($q) && empty($l) && empty($c) && empty($i)) {
$query = "SELECT * FROM softs ORDER BY id";
} else {
if(isset($q)){$query = "SELECT * FROM softs WHERE nombre='$q'";}
elseif(isset($l)){$query = "SELECT * FROM softs WHERE lenguaje='$l'";}
elseif(isset($c)){$query = "SELECT * FROM softs WHERE compilador='$c'";}
elseif(isset($i)){$query = "SELECT * FROM softs WHERE interprete='$i'";}
}
$result = mysql_query($query) or die(mysql_error());
if(mysql_num_rows($result)==0){echo '<center>No se encontro ning&uacute;n resultado.</center>';} 
else {
echo '<table>';
while($rs=mysql_fetch_array($result)) 
{ 
$int++;
echo'<tr><td style="vertical-align:top;"><img src="'.$rs['icono'].'" class="icon" style="max-width:125px;max-height:250px;" /></td><td>
<form id="formu" action="'.$rs['link'].'" style="display:inline-block;">
<b>Nombre:</b><i> '.$rs['nombre'].'</i><br>
<b>Descripci&oacute;n:</b> '.$rs['descripcion'].'<br>
<b>Lenguaje:</b> '.$rs['lenguaje'].'<br>';
if($rs['compilador'] != "") {echo '<b>Compilador:</b> '.$rs['compilador'].'<br>';}
else{echo '<b>Int&eacute;rprete:</b> '.$rs['interprete'].'<br>';}
echo '<b>Peso del archivo:</b> '.$rs['peso'].'<br>
<input id="global" type="submit" name="'.$rs['id'].'" value="Ir a la página" /><br></form></td></tr>';
if($int<$total){echo '<tr><td colspan="2"><hr color="#000000" style="margin-top:12px;"></td></tr>';}
}
echo'</table>';
$int = 0;
}
}
?>

</body>
</html>

<?
//END Studios.php
?>