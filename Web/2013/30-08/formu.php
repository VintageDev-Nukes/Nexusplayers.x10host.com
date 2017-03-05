<?php
$pass = "test";

if(isset($_REQUEST['pass']) && $_REQUEST['pass'] == $pass) {
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insertar ModPack</title>
<script type="text/javascript" src="funciones.js"></script>
<script src="http://code.jquery.com/jquery-1.9.0.js"></script>
<script>

 </script>
<link rel="stylesheet" type="text/css" href="style.css" />

<body>
<form id="form1" name="form1" method="post" action="envia2.php">
<b>Nombre:</b><br>
<input type="text" name="nombre" id="nombre" maxlength="30" /><br><br>
<b>Descarga:</b><br>
<input type="text" name="descarga" id="download" maxlength="300" /><br><br>
<b>Descripci&oacute;n:</b><br>
<textarea  rows="5" cols="100" maxlength="500" name="descripcion" id="desc"></textarea><br><br>
<b>Miniatura:</b><br>
<input type="text" name="image" id="image" maxlength="200" /><br><br>
<b>Versi&oacute;n de Minecraft:</b><br>
<input type="text" name="vermc" id="vermc" maxlength="25" /><br><br>
<b>Peso del Modpack:</b><br>
<input type="text" name="vermc" id="vermc" maxlength="5" />
<SELECT NAME="medida"> 
<OPTION VALUE="MB" selected>MB</OPTION>
<OPTION VALUE="GB">GB</OPTION>
</SELECT><br><br>
<font size="3px">Captcha:</font><br>
<img src="captcha.php"/><br>
<input type="text" name="vercode" /><br><br>
<input type="submit" value="Enviar" />
</form>
</body>
</html>
<?
} else {
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