<?php

if(empty(@$_GET['cat'])) {
 while($rs2=mysql_fetch_array($result2))  {

    echo '
<tr><td class="txt_desc" bgcolor="#FFFFFF"><img src="'.$rs2['miniatura'].'" width="104" height="70" align="left"><span class="titulos"><a href="http://ikillcraft.a0001.net/test.php?id='.$rs2['id'].'">'.$rs2['nombre'].'</a></span><br>'.$rs2['descripcion'].'</tr><tr><td><hr width="98%" color="#000000" size="2"></td></tr>
<tr>'; 

}
} elseif($rs=mysql_fetch_array($result)) 
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
</td></tr>
