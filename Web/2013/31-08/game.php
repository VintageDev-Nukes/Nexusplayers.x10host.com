<?php require(dirname(__FILE__) . '/SSI.php'); ?>
<?php require_once(dirname(__FILE__) . '/ratings.php'); $rr = new RabidRatings(); ?>
<?php

global $user_info;

require_once(dirname(__FILE__) . '/Settings.php');
$link=mysql_connect($db_server, $db_user, $db_passwd); 
mysql_select_db($db_name,$link) OR DIE ("Error: Imposible Conectar");

$id = (int)$_GET['id'];
 
$sql = "SELECT * FROM juegos WHERE id=".$id." LIMIT 1";
$query = mysql_query($sql, $link) or exit(mysql_error());
 
if( !$query || mysql_num_rows($query) <= 0 )
  exit('No se encontraron resultados');
 
$row = mysql_fetch_assoc($query);

echo
'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>'.$row['nombre'].'</title>
<link rel="stylesheet" type="text/css" href="css/inicio.css">
<style>

</style>
<script type="text/javascript">

</script>
    <script type="text/javascript" src="mootools-1.2.4.js"></script>
    <script type="text/javascript" src="ratings.js"></script>
    <link rel="stylesheet" href="ratings.css" />
  <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
  <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
  <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
  <script>
  $(function() {
    $( "#tabs" ).tabs();
    $( "#tabs1" ).tabs();
  });
  </script>
</head>
<body><div class="top"><img src="http://ikillcraft.a0001.net/logoikill.png" style="width:199px; height:30px; position:relative; padding:10px;" /><br><span style="font-size:24px;position:relative;left:10px;font-weight:bold;">'.$row['nombre'].'</span></div>';
// Games go here

$query2 = "SELECT linkjuego,tipo,ancho,alto,code,id FROM juegos WHERE id=".$id." LIMIT 1";
$result2 = mysql_query($query2, $link) or die(mysql_error());

while($rs=mysql_fetch_assoc($result2)) {
$tipo_juego=$rs['tipo'];

// Comprobamos que tipo de juego es: 
if($tipo_juego==='unity'){
   echo '<div class="game" style="width:'.$rs['ancho'].'px; height:'.$rs['alto'].'px;">
   <object id="GameObject" classid="clsid:444785F1-DE89-4295-863A-D46C3A781394" width="100%" height="100%" codebase="http://webplayer.unity3d.com/download_webplayer-2.x/UnityWebPlayer.cab#version=2,0,0,0">
<param name="src" value="'.$rs['linkjuego'].'">
<param name="allowScriptAccess" value="true">
<embed allowscriptaccess="true" id="UnityEmbed" src="'.$rs['linkjuego'].'" width="100%" height="100%" type="application/vnd.unity" pluginspage="http://www.unity3d.com/unity-web-player-2.x">
</object></div>';
} elseif($tipo_juego==='flash'){
   echo '<div class="game" style="width:'.$rs['ancho'].'px; height:'.$rs['alto'].'px;">
<object id="GameObject"" wmode="direct" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="100%" height="100%">
<param name="allowFullScreen" value="true">
<param name="allowScriptAccess" value="true">
<param name="movie" value="'.$rs['linkjuego'].'">
<param name="wmode" value="direct">
<param name="quality" value="high">
<param name="flashvars" value="">
<embed allowscriptaccess="true" flashvars="" wmode="direct" src="http://www.minijuegosgratis.com/flash1234/no_hotlink/zombiewestthereandbackagain.swf" allowfullscreen="true" quality="high" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="100%" height="100%" class="FlashGame" id="FlashGame2">
</object></div>';
} elseif($tipo_juego==='iframe'){
   echo '<div class="game" style="width:'.$rs['ancho'].'px; height:'.$rs['alto'].'px;">
   <object id="GameObject" type="text/html" data="'.$rs['linkjuego'].'" style="width:100%; height:100%;">Tu navegador no soporta Object!</object></div>';
} elseif($tipo_juego==='java'){
   echo '<div class="game" style="width:'.$rs['ancho'].'px; height:'.$rs['alto'].'px;"><APPLET id="GameObject" CODE="'.$rs['linkjuego'].'" WIDTH="100%" HEIGHT="100%">
		</APPLET></div>';
} elseif($tipo_juego==='otro'){
   echo $rs['code'];
} else {
   echo '<div class="game" style="width:'.$rs['ancho'].'px; height:'.$rs['alto'].'px;">Tipo de juego desconocido. Link:'.$rs['linkjuego'].'</div>';
}

}

echo '<div class="infobox"><b style="font-size:16px;padding-left:10px;">Controles:</b>';

/* Supongamos que la variable que tiene el resultado de la query se llama $row */
// Primero toca quitar el serialize a lo que hemos sacado. Para ello unserialize().
$teclas = unserialize($row['teclas']);
$acciones = unserialize($row['acciones']);
// Ahora ya tenemos metidos en un array las teclas y las acciones. Toca mostrarlos en una tabla
echo '<table style="padding-left:10px;"><tr>';
// Queremos tener el index, para obtener la accion que corresponde a la tecla.
foreach($teclas as $index=>$tecla){
   echo '<td>'.$tecla.'</td><td>'.$acciones[$index].'</td>';
}
// cerramos tabla y nos vamos :P
echo '</tr></table><br>'; 

$rr->showStars("myArticle$id");
$rr->showStars2("myArticle$id");

echo '
<br>
<table style="width:100%;"><tr><td style="width:50%;vertical-align: top;">
<div id="tabs" style="position:relative; top:0;">
  <ul>
    <li><a href="#tabs-1">Comenta</a></li>
    <li><a href="#tabs-2">Recomienda</a></li>
  </ul>
  <div id="tabs-1">
<TABLE CELLSPACING=1 CELLPADDING=1 WIDTH=300 BORDER=0 STYLE="border:1px solid black; width:100%;">
<TR>
<TD BGCOLOR="#FAFAFA">
<CENTER>
<SPAN STYLE="font-size:11px;font-family:Tahoma;color:black;font-weight:bold"><center>.Comentarios De Los Usuarios.</center>
</SPAN>
</CENTER>
</TD>
</TR>

<TR>
<TD HEIGHT=1 BGCOLOR=black>
</TD>
</TR>

<TR>
<TD BGCOLOR="#FEFEFE">
<SPAN STYLE="font-size:11px;font-family:Tahoma;color:black;">'; 

$resultComen = mysql_query("SELECT * FROM comentarios WHERE id_juego='$id' ORDER BY id ASC");
while($rowComen = mysql_fetch_array($resultComen))
{
echo '
<table style="width:100%;"><tr><td><FONT COLOR=RED>
<B><a class="user" href="http://ikillcraft.a0001.net/index.php?action=profile;u='. $rowComen["userid"] .'">'. $rowComen["nick"] .'</a></B></FONT></td><td style="text-align:right;"><b>'. $rowComen["fecha"] .'</b>
</td></tr></table><br><span style="position:relative;top:-10px;left:5px;">
'. $rowComen["comentario"] .'</span>
<hr style="width:98%;position:relative; top:-5px;">';
}
if( !$resultComen || mysql_num_rows($resultComen) <= 0 )
echo '<center>No hay ning&uacute;n comentario. :(</center>';

mysql_free_result($resultComen);

echo '</SPAN>
</TD>
</TR>
</TABLE>';

//Get the Users imformation
$id = $context['user']['id'];
loadMemberData($context['user']['id'], false, 'normal');
loadMemberData($id);
loadMemberContext($id);
$PersonalText = $memberContext[$id]['blurb'];
$Website = $memberContext[$id]['website']['url'];
$UserPosts = $user_info['posts'];
$UserAvatar = $context['user']['avatar']['href'];
$GroupColor = !empty($user_profile[$context['user']['id']]['member_group_color']) ? $user_profile[$context['user']['id']]['member_group_color'] : 
	(!empty($user_profile[$context['user']['id']]['post_group_color']) ? $user_profile[$context['user']['id']]['post_group_color'] : '');
$Group = !empty($user_profile[$context['user']['id']]['member_group']) ? $user_profile[$context['user']['id']]['member_group'] : 
	$user_profile[$context['user']['id']]['post_group']; 

echo '<span style="display:none;">';
	
echo($user_info['id']);
echo ("avatar:" .$UserAvatar); 
echo ($user_info['username']); 

echo '</span>';

if ($context['user']['is_logged'])

echo '
<h3><i>Deja tu comentario aqu&iacute;:</i></h3>
<FORM NAME="miFormu" ACTION="nuevoComentario.php" 
METHOD="post"> 
<INPUT TYPE="hidden" NAME="id" VALUE="'. $id .'"> 
<INPUT TYPE="hidden" NAME="userid" VALUE="'. $user_info['id'] .'">
<INPUT TYPE="hidden" NAME="avatar" VALUE="'. $UserAvatar .'">
<INPUT TYPE="hidden" NAME="nick" VALUE="'. $user_info['username'] .'">
Comentario: <br><textarea NAME="comentario" style="width:100%; height:100px;" MAXLENGTH=500></textarea>
<BR> 
<INPUT TYPE="submit" CLASS="boton" VALUE="Enviar Comentario"> 
</FORM>';

else

echo '<h3>Necesitas loguearte para enviar un mensaje.</h3>';

echo '</div>
  <div id="tabs-2">
Work In Progress!
  </div>
</div></td>

<td style="width:50%;vertical-align: top;">
<div id="tabs1">
  <ul>
    <li><a href="#tabs1-1">Juegos relacionados</a></li>
  </ul>
  <div id="tabs1-1">
EEEEEE!
  </div>
</div></td></tr></table>

</div>
<div style="width:1px;height:40px;"></div>';

echo '</body></html>';



exit; // o no, si deseas incluir más información

?>
