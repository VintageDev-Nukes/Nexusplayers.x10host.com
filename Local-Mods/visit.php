<?php

require_once(dirname(__FILE__) . '/Settings.php');
mysql_connect ($db_server, $db_user, $db_passwd) or die ('Error: ' . mysql_error());
mysql_select_db ($db_name);

$dbtablehits= 'gamesplays';
$dbtableinfo= 'infogames';
$maxrows = 50; 

if(!$_COOKIE["Last_Activity"]) {

if(mysql_num_rows(mysql_query("SELECT page FROM $dbtablehits WHERE page = '$page'")))
	{
	//A counter for this page  already exsists. Now we have to update it.

		$updatecounter = mysql_query("UPDATE $dbtablehits SET count = count+1 WHERE page = '$page'");
		if (!$updatecounter) 
		{
		die ("Can't update the counter : " . mysql_error()); // remove ?
		}
	
	} 
	else
	{
	// This page did not exsist in the counter database. A new counter must be created for this page.

		$insert = mysql_query("INSERT INTO $dbtablehits (page, count)VALUES ('$page', '1')");
	
		if (!$insert) 
		{
    		die ("Can\'t insert into $dbtablehits : " . mysql_error()); // remove ?
		}
	}
	
// ####################################################
// ######### add IP and user-agent and time ###########
// ####################################################


// gather user data
$ip= $_SERVER["REMOTE_ADDR"]; 
$agent =$_SERVER["HTTP_USER_AGENT"];
$datetime =date("Y/m/d") . ' ' . date('H:i:s') ;


if(!mysql_num_rows(mysql_query("SELECT ip_address FROM info WHERE ip_address = '$ip'"))) // check if the IP is in database
{
	// if not , add it.	
	$adddata = mysql_query("INSERT INTO $dbtableinfo (ip_address, user_agent, datetime) VALUES('$ip' , '$agent','$datetime' ) ") ;
	if (!$adddata) 
	{
	    die('Could not add IP : ' . mysql_error()); // remove ?
	}
}

// ***************************************************************
// ** delete the first entry in $dbtableinfo if rows > $maxrows **
// ***************************************************************

$result = mysql_query("SELECT * FROM $dbtableinfo", $link);
$num_rows = mysql_num_rows($result);
$to_delete = $num_rows- $maxrows;
if($to_delete > 0)
{
	for ($i = 1; $i <= $to_delete; $i++) 
	{

		$delete = mysql_query("DELETE FROM $dbtableinfo ORDER BY id LIMIT 1") ;
		if (!$delete) 
		{
		    die('Could not delete : ' . mysql_error()); // remove ?
		}
	}
}	

mysql_close($link);

} 

}

setcookie("Last_Activity", "", time()+86400);


?>