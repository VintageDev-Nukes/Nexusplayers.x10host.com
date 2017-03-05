<?php
require_once(dirname(__FILE__) . '/Settings.php');
mysql_connect ($db_server, $db_user, $db_passwd) or die ('Error: ' . mysql_error());
mysql_select_db ($db_name);
$query = "SELECT COUNT(*) FROM news";
$result = mysql_query($query) or die(mysql_error());

require 'check.php';
?>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<style>
body {width:100%; height:100%;margin:0;font-family:arial;font-size:13px;overflow:none;}
</style>
<link rel="stylesheet" type="text/css" href="styles.css" /> 
<title>Nuevas noticias here!</title>
<script>
	
function cambiarInner(id, inner, id2) {
	document.getElementById(id).innerHTML = "<textarea id=\"edited-"+id2+"\">" + inner + "</textarea><br><img id=\"ok-"+id2+"\" onclick=\"javascript:mod('edited-"+id2+"', '"+id2+"');\" src=\"http://www.sitewizard.co.uk/images/tick_icon.png\" />"
}

function del(id) {
    if (window.confirm("\u00BFDesea eliminar el registro seleccionado?")) {
        window.location = "actioner.php?action=del&id="+id+"&tabla=news&row=noticia&redirect=news-box.php";   
    }
}

function mod(id, id2) {
    if (window.confirm("\u00BFDesea modificar el registro seleccionado?")) {
    	var inner = document.getElementById(id).value;
        window.location = "actioner.php?action=mod&redirect=news-box.php&id="+id2+"&value="+inner+"&tabla=news&row=noticia";   
    }
}
</script>
</head>
<body>
<?php #contenido here :) ?>
<br>
<a href="logout.php" style="float:right;font-size:12px;" class="linka">Cerrar sesión</a><br>
<form name="form" method="post" action="envia4.php">
<center><b>Noticias (cada Enter es una nueva noticia):</b><br><textarea cols="30" rows="10" name="noticia"></textarea><br><br>
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
echo'<tr><td>'.$rs['id'].'</td><td><span id="edit-'.$rs['id'].'" onclick="javascript:cambiarInner(\'edit-'.$rs['id'].'\', \''.htmlentities($rs['noticia']).'\', \''.$rs['id'].'\');">'.$rs['noticia'].'</span> </td><td><img src="http://www.sitewizard.co.uk/images/cross_icon.png" onclick="javascript:del('.$rs['id'].');"></td></tr>';
}
}
?>
</table>
</body>
</html>