<?php
require_once(dirname(__FILE__) . '/Settings.php');
mysql_connect ($db_server, $db_user, $db_passwd) or die ('Error: ' . mysql_error());
mysql_select_db ($db_name);
$query = "SELECT COUNT(*) FROM modpacks";
$result = mysql_query($query) or die(mysql_error());

$pass = "test";

if(isset($_REQUEST['pass']) && $_REQUEST['pass'] == $pass) {
?>

<html>
<head>

<style>
body {width:100%; height:100%;margin:0;font-family:arial;font-size:13px;overflow:none;}
</style>
<link rel="stylesheet" type="text/css" href="styles.css"> 
</head>
<body>
<?php #contenido here :) ?>


<form name="form" method="post" action="envia4.php" style="left:50%;top:50%;position:absolute;margin-left: -108px;margin-top: -89px;">
<center><b>Noticias (cada Enter es una nueva noticia):</b><br><input type="text" name="nombre" size="30" maxlength="30" /><br><br>
<font size="3px">Captcha:</font><br>
<img src="captcha.php"/><br>
<input type="text" name="vercode" /><br><br>
<input type="submit" value="Insertar nuevas noticias" /></center>
</form>

<h2>Administrar las noticias actuales:</h2>

    <table>
<?php

$total = mysql_num_rows(mysql_query("SELECT * FROM news ORDER BY id"));
if($total==0){
    echo '<tr><td>No se encontraron resultados.</td></tr>';
}else{
echo '<tr><td>Id</td><td>Noticia</td></tr>';
$query = "SELECT * FROM news ORDER BY id";
$result = mysql_query($query) or die(mysql_error());
while($rs=mysql_fetch_array($result)) 
  { 
echo'<tr><td>'.$rs['id'].'</td><td>'.$rs['noticia'].'</td></tr>';
}
echo'</table>';
}
?>
</body>
</html>
<?
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