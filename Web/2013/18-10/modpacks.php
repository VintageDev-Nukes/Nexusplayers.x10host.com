<?php
require_once(dirname(__FILE__) . '/Settings.php');
mysql_connect ($db_server, $db_user, $db_passwd) or die ('Error: ' . mysql_error());
mysql_select_db ($db_name);
$query = "SELECT COUNT(*) FROM modpacks";
$result = mysql_query($query) or die(mysql_error());

$pass = "test";

if(isset($_REQUEST['pass']) && $_REQUEST['pass'] == $pass) {
echo '<html>
<head>';
?>
<style>
body {width:395px; height:300px;margin:0;font-family:arial;}
#fondo {background-color: rgba(255, 255, 255, 0.6);width:325px;position:absolute;top:0px;margin-left:25px;height:100%;padding:10px;
-ms-filter: "progid:DXImageTransform.Microsoft.gradient(GradientType=1, StartColorStr='#99FFFFFF', EndColorStr='#99FFFFFF')";
filter: progid:DXImageTransform.Microsoft.Gradient(GradientType=1, StartColorStr='#99FFFFFF', EndColorStr='#99FFFFFF');
zoom: 1!important;}
#global {position: absolute;
right: 10px;}
#fondoimg {background:url('11_image.jpg') no-repeat left top; width:395px;height:300px; background-size:100%;overflow-y: auto;
filter: progid:DXImageTransform.Microsoft.AlphaImageLoader( src='11_image.jpg', sizingMethod='scale');
    -ms-filter: "progid:DXImageTransform.Microsoft.AlphaImageLoader( src='11_image.jpg', sizingMethod='scale')";
}
#nada {font-weight:bold;position:absolute;margin-top: 140px;
left: 50%;
margin-left: -115px;}
#formu {font-size: 12px;}
</style>
</head>
<body>
<div id="fondoimg">
  <div id="fondo">
    <table><tr><td style="width:146px;"><b><i>&Uacute;ltimos Modpacks:</b></i></td></tr>
<?php

$total = mysql_num_rows(mysql_query("SELECT * FROM modpacks ORDER BY id"));
if($total==0){
    echo '<div id="nada">No se encontraron resultados.</div>';
}else{
$query = "SELECT * FROM modpacks ORDER BY id";
$result = mysql_query($query) or die(mysql_error());
while($rs=mysql_fetch_array($result)) 
  { 
echo'<tr><td><img src="'.$rs['image'].'" style="width:126px;height:77px;margin-top:-47px;" /></td><td>
<form id="formu" name="'.$rs['id'].'" action="okay2.html">
<b>Nombre: <i>'.$rs['nombre'].'</i></b><br>
<b>Descripci&oacute;n:</b><br>'.$rs['descripcion'].'<br>
<b>Peso del archivo:</b>'.$rs['peso'].'<br>
    <input id="'.$rs['id'].'-name" type="hidden" name="handle" value="'.$rs['name'].'" />
    <input id="'.$rs['id'].'-nombre" type="hidden" name="handle" value="'.$rs['nombre'].'" />
    <input id="'.$rs['id'].'-dwl" type="hidden" name="handle" value="'.$rs['descarga'].'" />
    <input id="'.$rs['id'].'-ver" type="hidden" name="handle" value="'.$rs['version'].'" />
    <input id="'.$rs['id'].'-desc" type="hidden" name="handle" value="'.$rs['descripcion'].'" />
    <input id="'.$rs['id'].'-id" type="hidden" name="handle" value="'.$rs['id'].'" />
    <input id="'.$rs['id'].'-vermc" type="hidden" name="handle" value="'.$rs['vermc'].'" />
    <input id="global" type="submit" name="'.$rs['id'].'" value="Instalar" /><br><hr color="#000000" style="margin-top:12px;"></form></td></tr>';
}
echo'</table></div>
</div>';
}

echo'</body>
</html>';
}
else {
  if(isset($_REQUEST['pass']) && $_REQUEST['pass'] != $pass) {
    echo '<center style="position:relative; top:50%;"><b>Contrase&ntilde;a incorrecta. Intentelo de nuevo.</b><br>';
  }
?>
<center style="position:relative; top:50%;">
Por favor, indroduzca una contrase&ntilde;a:<br>
<form method="get">
<input type="password" name="pass" />
<input type="submit" value="Entrar" />
</form>
</center>
<?php
}
?>
