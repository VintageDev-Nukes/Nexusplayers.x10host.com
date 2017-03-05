<?php
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


<form name="form" method="post" action="envia3.php" style="left:50%;top:50%;position:absolute;margin-left: -108px;margin-top: -89px;">
<center><b>Nombre de tu app:</b><br><input type="text" name="nombre" size="30" maxlength="30" /><br><br>
<font size="3px">Captcha:</font><br>
<img src="captcha.php"/><br>
<input type="text" name="vercode" /><br><br>
<input type="submit" value="Enviar" /></center>
</form>

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
