<?php
$pass = "ok";

if(isset($_REQUEST['state']) && $_REQUEST['state'] == $pass) {
?>

<html>
<head>

<style>
body {width:100%; height:100%;margin:0;font-family:arial;font-size:13px;overflow:none;}
</style>
</head>
<body>
<?php

$page = $_REQUEST['app'];
$pas = $_REQUEST['state'];

if(empty($page) && !empty($pas)) {
$page = "";
}

// or you could use $page = $_SERVER['PHP_SELF'] ;

require_once(dirname(__FILE__) . '/Settings.php');

if(stristr($_SERVER['HTTP_USER_AGENT'], 'bot')){header('Location: http://ikillcraft.a0001.net');

} else {
mysql_connect ($db_server, $db_user, $db_passwd) or die ('Error: ' . mysql_error());
mysql_select_db ($db_name);
$query = mysql_query("SELECT page FROM hits WHERE page='$page'");


if(mysql_num_rows($query) > 0) {
include ( './counter/counter.php');
addinfo($page);
} else {
echo "</i>No existe ning&uacuten programa con el nombre <b>$page</b>.</i>";
}
}

?>
</body>
</html>
<?
}
else {
  if(isset($_REQUEST['state']) && $_REQUEST['state'] != $pass) {
    echo '<center style="position:relative; top:50%;"><b>Contrase&ntilde;a incorrecta. Intentelo de nuevo.</b><br>';
  }
?>
<center style="position:relative; top:50%;">
Por favor, indroduzca una contrase&ntilde;a:<br>
<form method="get">
<input type="password" name="state" />
<input type="submit" value="Entrar" />
</form>
</center>
<?php
}
?>
