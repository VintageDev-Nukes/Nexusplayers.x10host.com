<?php

function template_main()
{

	// Make sure we have all the global variables we need
	global $txt, $user_info, $sourcedir, $modSettings, $context, $settings, $scripturl, $smcFunc;

include('paginator.class.2.php');
$query = "SELECT COUNT(*) FROM juegos";
$result = mysql_query($query) or die(mysql_error());
$num_rows = mysql_fetch_row($result);
$form_query = "SELECT DISTINCT categoria,cat2 FROM juegos ORDER BY categoria DESC";
$form_result = mysql_query($form_query) or die(mysql_error());

$pages = new Paginator;
$pages->items_total = $num_rows[0];
$pages->mid_range = 9; // Number of pages to display. Must be odd and > 3
$pages->paginate();

	echo '<style>.navigate_section {display:none;}
  #mainbar {display:none;}
  #content_section {margin-top:-40px;}</style>
  <table style="width:100%;"><tbody><tr><td style="width:176px;vertical-align:top;padding-top: 4px;">
  <div class="cat_bar" style="width: 100%; padding:0px!important;">
        <h3 class="catbg" style="width: 100%;margin-left: 9px;">Categor&iacute;as</h3>
  </div>
  <div class="windowbg2" style="width: 100%;">
        <span class="topslice"><span></span></span>
            <div class="content">
<ul><li><a href="?cat=Accion">Acci&oacute;n</a><br></li>
<li><a href="?cat=Animacion">Animaci&oacute;n</a><br></li>
<li><a href="?cat=Aventuras">Aventuras</a><br></li>
<li><a href="?cat=Bestias">Bestias</a><br></li>
<li><a href="?cat=Cartas">Cartas</a><br></li>
<li><a href="?cat=Chicas">Chicas</a><br></li>
<li><a href="?cat=Clasicos">Cl&aacute;sicos</a><br></li>
<li><a href="?cat=Coches">Coches</a><br></li>
<li><a href="?cat=Colorear">Colorear</a><br></li>
<li><a href="?cat=Curiosidades">Curiosidades</a><br></li>
<li><a href="?cat=Deportes">Deportes</a><br></li>
<li><a href="?cat=Estrategia">Estrategia</a><br></li>
<li><a href="?cat=Habilidad">Habilidad</a><br></li>
<li><a href="?cat=Lucha">Lucha</a><br></li>
<li><a href="?cat=Multijugador">Multijugador</a><br></li>
<li><a href="?cat=Musica">M&uacute;sica</a><br></li>
<li><a href="?cat=Naves">Naves</a><br></li>
<li><a href="?cat=Plataformas">Plataformas</a><br></li>
<li><a href="?cat=Puzzles">Puzzles</a><br></li>
<li><a href="?cat=Tiempo Real MMO">Tiempo Real MMO</a><br></li>
<li><a href="?cat=Tiros">Tiros</a><br></li></ul>
            </div>
        <span class="botslice"><span></span></span>
  </div></td>

  <td style="width: 50%;vertical-align:top;">  

  <table align="center" id="content" style="width:100%;"><tbody>
  <tr>

  <td><div class="cat_bar" style="width: 100%; padding:0px!important;">
   			<h3 class="catbg" style="width: 100%;margin-left: 9px;">&Uacute;ltimos juegos:</h3>
	</div>';

	// Windowbg2 Content
	echo '<div class="windowbg2" style="width: 100%;">
  			<span class="topslice"><span></span></span>
  		  		<div class="content">';

$query = "SELECT * FROM juegos WHERE cat2 = '$_GET[cat]' ORDER BY id DESC $pages->limit";
$result = mysql_query($query) or die(mysql_error());
$query2 = "SELECT * FROM juegos ORDER BY id DESC $pages->limit";
$result2 = mysql_query($query2) or die(mysql_error());

if(empty($_GET['cat'])) {
 while($rs2=mysql_fetch_array($result2))  {

    echo '
<tr><td class="txt_desc" bgcolor="#FFFFFF"><img src="'.$rs2['miniatura'].'" width="104" height="70" align="left"><span style="position:relative;left:10px;"><span class="titulos"><a href="http://ikillcraft.a0001.net/test.php?id='.$rs2['id'].'">'.$rs2['nombre'].'</a></span><br>'.$rs2['descripcion'].'</span></td></tr><tr><td><hr width="98%" color="#000000" size="2"></td></tr>'; 

}
} 

while($rs=mysql_fetch_array($result)) 
  { 

    echo '
<tr><td class="txt_desc" bgcolor="#FFFFFF"><img src="'.$rs['miniatura'].'" width="104" height="70" align="left"><span style="position:relative;left:10px;"><span class="titulos"><a href="http://ikillcraft.a0001.net/test.php?id='.$rs['id'].'">'.$rs['nombre'].'</a></span><br>'.$rs['descripcion'].'</span></td></tr><tr><td><hr width="98%" color="#000000" size="2"></td></tr>'; 
  }

echo '</tr><td>';

echo '<center>';
echo $pages->display_pages();
#echo "</center><br><span class=\"\">".$pages->display_jump_menu().$pages->display_items_per_page()."</span><br>";

#echo '<form method="get" action="'; echo $_SERVER['PHP_SELF']; echo '"> <select name="cat" onchange="this.form.submit()"> <option>Por favor, selecciona una categor&iacute;a</option>';

while($row = mysql_fetch_assoc($form_result))
 {
 	echo "<option value=$row[cat2]>$row[categoria]</option>";
 }

echo '</div>
  			<span class="botslice"><span></span></span>
	</div></td></tr></tbody></table></td>

  <td style="width: 30%;vertical-align:top;">

 <table align="center" id="content" style="width: 100%;"><tbody>
  <tr>

  <td><div class="cat_bar" style="width: 100%; padding:0px!important;">
        <h3 class="catbg" style="width: 100%;margin-left: 9px;">Buscador de juegos:</h3>
  </div>

<div class="windowbg2" style="width: 100%;">
        <span class="topslice"><span></span></span>
            <div class="content">

</div>
        <span class="botslice"><span></span></span>
  </div></td></tr>

  <tr>

  <td style="width: 30%;vertical-align:top;">

 <table align="center" id="content" style="width: 100%;"><tbody>
  <tr>

  <td><div class="cat_bar" style="width: 100%; padding:0px!important;">
        <h3 class="catbg" style="width: 100%;margin-left: 9px;">Top 5 de la semana:</h3>
  </div>

<div class="windowbg2" style="width: 100%;">
        <span class="topslice"><span></span></span>
            <div class="content">

</div>
        <span class="botslice"><span></span></span>
  </div></td></tr></tbody></table>
  </td></tr>

    <tr>

  <td style="width: 30%;vertical-align:top;">

 <table align="center" id="content" style="width: 100%;"><tbody>
  <tr>

  <td><div class="cat_bar" style="width: 100%; padding:0px!important;">
        <h3 class="catbg" style="width: 100%;margin-left: 9px;">Recomendamos:</h3>
  </div>

<div class="windowbg2" style="width: 100%;">
        <span class="topslice"><span></span></span>
            <div class="content">

</div>
        <span class="botslice"><span></span></span>
  </div></td></tr></tbody></table>
  </td></tr>

    <tr>

  <td style="width: 30%;vertical-align:top;">

 <table align="center" id="content" style="width: 100%;"><tbody>
  <tr>

  <td><div class="cat_bar" style="width: 100%; padding:0px!important;">
        <h3 class="catbg" style="width: 100%;margin-left: 9px;">Tags:</h3>
  </div>

<div class="windowbg2" style="width: 100%;">
        <span class="topslice"><span></span></span>
            <div class="content">

</div>
        <span class="botslice"><span></span></span>
  </div></td></tr></tbody></table>
  </td></tr>

    <tr>

  <td style="width: 30%;vertical-align:top;">

 <table align="center" id="content" style="width: 100%;"><tbody>
  <tr>

  <td><div class="cat_bar" style="width: 100%; padding:0px!important;">
        <h3 class="catbg" style="width: 100%;margin-left: 9px;">Webs interesantes:</h3>
  </div>

<div class="windowbg2" style="width: 100%;">
        <span class="topslice"><span></span></span>
            <div class="content">

</div>
        <span class="botslice"><span></span></span>
  </div></td></tr></tbody></table>
  </td></tr>

  </tbody></table>
  </td>

  </tr>

  </tbody></table>';

}

?>
