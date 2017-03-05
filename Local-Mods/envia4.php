<?php

require_once(dirname(__FILE__) . '/Settings.php');

$noticia = $_REQUEST['noticia'] ;

session_start(); 
if ($_POST["vercode"] != $_SESSION["vercode"] OR $_SESSION["vercode"]=='')  { 
echo "<script>alert('El c\u00f3digo es err\u00f3neo.');
window.history.back();</script>";
} else { 
    mysql_connect ($db_server, $db_user, $db_passwd) or die ('Error: ' . mysql_error());
    mysql_select_db ($db_name);
    mysql_query ("SET NAMES 'utf8'");
    $query="INSERT INTO news (noticia) VALUES ('$noticia')";
    mysql_query($query) or die ('Error: ' . mysql_error());
    header("location:okay.html");
}; 

?>
