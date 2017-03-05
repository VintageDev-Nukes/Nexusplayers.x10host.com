<?php
/*
* version: 1.1.0
* copyright (c) 2009 spyka Web Group
* license http://opensource.org/licenses/gpl-license.php GNU Public License
*/

$file = 'hits.txt';       // alter if you wish to change path or name of text file
$unique = 0;			  // set this to 1 if you wish for only unique hits to be counted


$is_unique = (bool) (isset($_COOKIE['swHitCounter'])) ? false : true;

$hits = (int) (file_exists($file)) ? intval(file_get_contents($file)) : 0;

if($is_unique || $unique == 0)
{
	if($unique == 1)
	{
		setcookie('swHitCounter', 'hit', time() + (60*20));
	}
	
	$hits = $hits + 1;
	
	$handle = fopen($file, 'w+');
	fputs($handle, $hits);
	fclose($handle);
}

$hits = number_format($hits, 0, ',', '.');
?>
