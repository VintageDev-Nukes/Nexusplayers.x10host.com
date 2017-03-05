<?php
$query = "SELECT COUNT(*) FROM juegos";
$result = mysql_query($query) or die(mysql_error());
$num_rows = mysql_fetch_row($result);
 $form_query = "SELECT DISTINCT categoria,cat2 FROM juegos ORDER BY categoria DESC";
 $form_result = mysql_query($form_query) or die(mysql_error());
$query = "SELECT * FROM juegos WHERE cat2 = '$_GET[cat]' ORDER BY id DESC $pages->limit";
$result = mysql_query($query) or die(mysql_error());
$query2 = "SELECT * FROM juegos ORDER BY id DESC $pages->limit";
$result2 = mysql_query($query2) or die(mysql_error());
?> 
