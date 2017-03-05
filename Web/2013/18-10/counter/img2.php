<?php 
// Create the image 
$im = imagecreatetruecolor(499, 330); 

// Create some colors 
$white = imagecolorallocate($im, 255, 255, 255); 
$black = imagecolorallocate($im, 0, 0, 0); 
imagefilledrectangle($im, 0, 0, 499, 329, $white); 

// The text to draw 

$text ="Muhammad Sarfraz"; 
$text ="Khurram Faraz"; 
$text ="Mohammad Imran"; 
$text ="Zulfiqar Ahmed Khan"; 
$text="Najam ul Hasnain Shah"; 
$text="Abdul Rehman Daniyal"; 
$text="Yasir Siddiqui"; 
$text="Sohail ur Rehman"; 
$text="Hamad Aziz Sheikh"; 
$text="Nauman Khalid"; 
$text="Saad Ahmed"; 
$text="Nasir Mehmood Butt"; 
$text="Mohammad Aqeel Mirza"; 

// Replace path by your own font path 
$font = 'arial.ttf'; // Place this file in your code directory or if font is in font directory set its path with font name as $font=$path.'arial.ttf'; 

// Add the text 
$x=10; 
$y=120; 
$font_size=40; 
$angle=0; 
$total_width=0; 
$counter=0; 

for($i=0; $i<strlen($text); $i++) 
{ 
    //$text_to_write=urldecode(substr($text,$i,1)."%0D_"); 
    $dimensions = imagettfbbox($font_size, $angle, $font, substr($text,$i,1)); 
    $total_width+=($dimensions[2]); 
    
    
    
} 
echo "<pre>"; 
$dimensions = imagettfbbox($font_size, $angle, $font, $text); 
echo "Dimension of full string=".$dimensions[2]."<br/>"; 

echo "Total width calcuated by algorithm=".$total_width."<br/>"; 
$difference=$dimensions[2]-$total_width; 

echo "Difference=".$difference; 
imagettftext($im, $font_size, $angle, $x+1, $y+1, $black, $font, $text); 
imagettftext($im, $font_size, $angle, $x, $y, $black, $font, $text); 

$x2=$x+$total_width+$difference+2; 
//echo $total_width; 
echo "<pre/>"; 
//imageline( $im , $x , $y+4 , $x2 , $y+4 , $black ); 
imageBoldLine($im, $x, $y+4, $x2, $y+4, $black, $BoldNess=4, $func='imageLine'); 

// Using imagepng() results in clearer text compared with imagejpeg() 
imagepng($im,"underline.png"); 
echo "<img src='underline.png'/>"; 
imagedestroy($im); 
?>