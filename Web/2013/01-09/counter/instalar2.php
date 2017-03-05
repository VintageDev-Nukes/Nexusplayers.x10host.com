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

$page = 'The name of this page';

// or you could use $page = $_SERVER['PHP_SELF'] ;

include ( './counter/counter.php');
addinfo($page);
header("location:http://ikillcraft.a0001.net/?state=ok");

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
