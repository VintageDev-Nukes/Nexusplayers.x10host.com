<?php

$root = "/home/vol12/eshost.es/eshos_12426320/ikillcraft.a0001.net/htdocs/";

require_once($root . '/Settings.php');
mysql_connect ($db_server, $db_user, $db_passwd) or die ('Error: ' . mysql_error());
mysql_select_db ($db_name);

$pass = "test";

if(isset($_REQUEST['pass']) && $_REQUEST['pass'] == $pass) {
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
	<title>Hit viewer</title>
	<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>

<?php

	include($root . 'paginator.class.2.php');
$query = "SELECT COUNT(*) FROM info";
$result = mysql_query($query) or die(mysql_error());
$num_rows = mysql_fetch_row($result);

$pages = new Paginator;
$pages->items_total = $num_rows[0];
$pages->mid_range = 9; // Number of pages to display. Must be odd and > 3 
$pages->paginate();

// ######################
// ### get total hits ###
// ######################
	
	$query = "SELECT SUM(count)  AS totalhits FROM hits"; 
	 
	$result = mysql_query($query) or die(mysql_error());

	
	while($row = mysql_fetch_array($result))
	{
		$totalhits = $row['totalhits']  ;
	}

// ####################
// ### Display hits ###
// ####################

	echo '<h3>Hits</h3>' ;

	$result = mysql_query("SELECT *, a.page, COUNT(b.app) AS AppCount
                        FROM hits a
                        LEFT OUTER JOIN info b
                        ON a.page = b.app
                        GROUP BY a.page");
	
	echo "<table width='100%' border='0'>";
	echo '	<tr>
		<td height="2" bgcolor="#1AC414" width="400">Page</td> 
		<td height="2" bgcolor="#1AC414" width="169"> Hits</td>
		<td height="2" bgcolor="#1AC414" width="169"> Hits &uacute;nicos</td>
		</tr>' ;

	// keeps getting the next row until there are no more to get
	while($row = mysql_fetch_array( $result )) 
	{
	// Print out the contents of each row into a table
	echo '<tr><td bgcolor="#75D169">'; 
	echo "Instalaciones de " . htmlentities($row['page'],ENT_QUOTES);
	echo '</td><td bgcolor="#75D169">'; 
	echo $row['count'];
	echo '</td>';
	    echo '<td bgcolor="#75D169">'; 
    echo $row['AppCount'];
    echo '</td></tr>';
	} 

$result=mysql_query("SELECT COUNT(app) FROM info");
while ($row = mysql_fetch_array($result, MYSQL_NUM)) 
{
$totalips = $row[0] ;  
}

	echo "<tr><td bgcolor=\"#1AC414\"> <strong> Total Hits </strong> </td><td bgcolor=\"#1AC414\"> <strong> $totalhits </strong> </td><td bgcolor=\"#1AC414\"> <strong> $totalips </strong> </td></tr>" ;
	echo "</table><br /> ";

// ############################
// ### get total unique IPs ###
// ############################

$result=mysql_query("SELECT COUNT(app) FROM info");
while ($row = mysql_fetch_array($result, MYSQL_NUM)) 
{
$totalips = $row[0] ;  
}


// ########################
// ### Display visitors ###
// ########################

echo '<h3> Visitors </h3>' ;

$result = mysql_query("SELECT * FROM info ORDER BY id DESC") 
or die(mysql_error());  

echo "<table width='100%' border='0'>";
echo '<tr> <td width="200" bgcolor="#1AC414">  IP </td> <td height="2" bgcolor="#1AC414" width="400">User agent</td> <td height="2" bgcolor="#1AC414" width="169"> Date &amp; Time</td> <td height="2" bgcolor="#1AC414" width="169"> Aplicaci&oacute;n</td></tr>';

// keeps getting the next row until there are no more to get
while($row = mysql_fetch_array( $result )) 
{
	// Print out the contents of each row into a table
	echo '<tr><td bgcolor="#75D169">'; 
	echo $row['ip_address'];
	echo '</td><td bgcolor="#75D169">'; 
	echo $row['user_agent'];
	echo '</td><td bgcolor="#75D169">'; 
	echo $row['datetime'];
	echo '</td><td bgcolor="#75D169">'; 
	echo htmlentities($row['app'],ENT_QUOTES);
	echo "</td></tr>"; 		
} 
	echo "<tr><td bgcolor=\"#1AC414\"> <strong> Total unique IP´s </strong> </td><td bgcolor=\"#1AC414\"> <strong> $totalips </strong> </td></tr>" ;
	echo "</table><br /> ";

$form_query = "SELECT DISTINCT app FROM info ORDER BY app DESC";
$form_result = mysql_query($form_query) or die(mysql_error());

echo $pages->display_pages();
echo "<span class=\"\">".$pages->display_jump_menu().$pages->display_items_per_page()."</span><br>";
?>
 <form method="get" action="<?php echo $_SERVER['PHP_SELF'];?>"> <select name="cat" onchange="this.form.submit()"> <option>Please select a continent</option>
<?
while($row = mysql_fetch_assoc($form_result))
 {
 	echo "<option value=$row[app]</option>";
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
