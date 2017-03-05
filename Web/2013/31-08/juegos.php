<?php 
include('paginator.class.2.php');
require_once(dirname(__FILE__) . '/Settings.php');
mysql_connect ($db_server, $db_user, $db_passwd) or die ('Error: ' . mysql_error());
mysql_select_db ($db_name);
$query = "SELECT COUNT(*) FROM juegos";
$result = mysql_query($query) or die(mysql_error());
$num_rows = mysql_fetch_row($result);
 $form_query = "SELECT DISTINCT categoria,cat2 FROM juegos ORDER BY categoria DESC";
 $form_result = mysql_query($form_query) or die(mysql_error());

$pages = new Paginator;
$pages->items_total = $num_rows[0];
$pages->mid_range = 9; // Number of pages to display. Must be odd and > 3
$pages->paginate();
?> 
<html><head>
<style type="text/css">
.paginate {
font-family: Arial, Helvetica, sans-serif;
font-size: .7em;
}
a.paginate {
border: 1px solid #000080;
padding: 2px 6px 2px 6px;
text-decoration: none;
color: #000080;
}
a.paginate:hover {
background-color: #000080;
color: #FFF;
text-decoration: underline;
}
a.current {
border: 1px solid #000080;
font: bold .7em Arial,Helvetica,sans-serif;
padding: 2px 6px 2px 6px;
cursor: default;
background:#000080;
color: #FFF;
text-decoration: none;
}
span.inactive {
border: 1px solid #999;
font-family: Arial, Helvetica, sans-serif;
font-size: .7em;
padding: 2px 6px 2px 6px;
color: #999;
cursor: default;
}
</style>
<title>Infijuegos! - Juega todo tipo de juegos</title><LINK REL="Shortcut Icon" HREF="http://files.softicons.com/download/system-icons/oxygen-icons-by-oxygen/png/32x32/devices/joystick.png"> <link rel="stylesheet" type="text/css" href="css/inicio.css"></head><body><div style="position:relative; top:-5px;"><table align="center" width="732">
<tbody><tr><td width="732"><div align="center" id="logo"><img style="position:relative; top:-3px;" src="css/images/bicho12.png" /><img src="css/images/logo.png" /></div></td></tr></tbody></table></div>
<table align="center" id="content"><tr>
<td>&Uacute;ltimos juegos:</td><br><br></tr><tr>
<? 

$query = "SELECT * FROM juegos WHERE cat2 = '$_GET[cat]' ORDER BY id DESC $pages->limit";
$result = mysql_query($query) or die(mysql_error());
$query2 = "SELECT * FROM juegos ORDER BY id DESC $pages->limit";
$result2 = mysql_query($query2) or die(mysql_error());

if(empty($_GET['cat'])) {
 while($rs2=mysql_fetch_array($result2))  {

    echo '
<tr><td class="txt_desc" bgcolor="#FFFFFF"><img src="'.$rs2['miniatura'].'" width="104" height="70" align="left"><span class="titulos"><a href="http://ikillcraft.a0001.net/test.php?id='.$rs2['id'].'">'.$rs2['nombre'].'</a></span><br>'.$rs2['descripcion'].'</tr><tr><td><hr width="98%" color="#000000" size="2"></td></tr>
<tr>'; 

}
} 

while($rs=mysql_fetch_array($result)) 
  { 

    echo '
<tr><td class="txt_desc" bgcolor="#FFFFFF"><img src="'.$rs['miniatura'].'" width="104" height="70" align="left"><span class="titulos"><a href="http://ikillcraft.a0001.net/test.php?id='.$rs['id'].'">'.$rs['nombre'].'</a></span><br>'.$rs['descripcion'].'</tr><tr><td><hr width="98%" color="#000000" size="2"></td></tr>
<tr>'; 
  }

?> 
</tr><tr><td>
<?
echo $pages->display_pages();
echo "<span class=\"\">".$pages->display_jump_menu().$pages->display_items_per_page()."</span><br>";
?>
 <form method="get" action="<?php echo $_SERVER['PHP_SELF'];?>"> <select name="cat" onchange="this.form.submit()"> <option>Please select a continent</option>
<?
while($row = mysql_fetch_assoc($form_result))
 {
 	echo "<option value=$row[cat2]>$row[categoria]</option>";
 }
?>
  </select> <noscript><input type="submit" value="Go" /></noscript></form> 
</td></tr></tbody></table><br><br><br><table align="center" class="footer"><tbody><tr><td><b>Copyright - Ikillnukes http://infijuegos.66ghz.com</b><br>2012 - 2012</td></tr></tbody></table></body></html>
