<?php
//Made by Syko ©2004 ! [ counter php file for php 3 or higher ]
//Reading the file
$file = fopen("count.txt", "r");
$count = fread($file, 1024);
fclose($file);
//Increasing the count
$count = explode("=", $count);
$count[1] = $count[1]+1;
//Writing to file
$file = fopen("count.txt", "w+");
fwrite($file, "count=".$count[1]);
fclose($file);
//Returning the count
print "count=".$count[1];
?>