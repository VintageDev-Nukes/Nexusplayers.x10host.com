<?php
require("SSI.php");
include("limpiar.php");
require_once(dirname(__FILE__) . '/Settings.php');
mysql_connect ($db_server, $db_user, $db_passwd) or die ('Error: ' . mysql_error());
mysql_select_db ($db_name);
/*require_once(dirname(__FILE__) . '/db.php');
$Login = new database();
$Login->connect();*/
$id = (int)$_GET['id'];
$_SESSION['id'] = $id;
$con = 0;
loadMemberData($user_info['id']);
loadMemberContext($user_info['id']);
mysql_query ("SET NAMES 'utf8'");
$sql = "SELECT * FROM juegos WHERE id=".$id." LIMIT 1";
$query = mysql_query($sql);
//$query = $Login->Query($sql);
if( !$query || mysql_num_rows($query) <= 0 )
  exit('No se encontraron resultados');

$row = mysql_fetch_assoc($query);

echo
'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>'.$row['nombre'].'</title>
<link rel="stylesheet" type="text/css" href="css/inicio.css">
<style>

</style>
<script src="js/tabs_old.js"></script>
<link href="css/tabs.css" rel="stylesheet" type="text/css">
<!--- <link rel="stylesheet" type="text/css" href="', $settings['theme_url'], '/css/index', $context['theme_variant'], '.css" /> -->
<script src="http://code.jquery.com/jquery-1.9.0.js"></script>
<script type="text/javascript">

</script>
<!-- Inserta esta etiqueta después de la última etiqueta de compartir. -->
<script type="text/javascript">
  window.___gcfg = {lang: \'es\'};

  (function() {
    var po = document.createElement(\'script\'); po.type = \'text/javascript\'; po.async = true;
    po.src = \'https://apis.google.com/js/plusone.js\';
    var s = document.getElementsByTagName(\'script\')[0]; s.parentNode.insertBefore(po, s);
  })();
</script>

    <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="https://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>

<script type="text/javascript" src="http://widgets.tuenti.com/widgets.js"></script>

</head>
<body>
<div class="top"><a href="http://'.$_SERVER['SERVER_NAME'].'/index.php"><img src="http://'.$_SERVER['SERVER_NAME'].'/nexuslogo2.png" style="position:relative; padding:10px;" /></a><br><span style="font-size:24px;position:relative;left:15px;font-weight:bold;top:-5px;color:#fff;">'.$row['nombre'].'</span></div>
<div class="game"></div>
<div class="infobox" style="overflow: auto;">';

echo '<!--- <table style="max-width:100%;"><tr><td colspan="2">hola</td></tr><tr><td style="vertical-align:top;width:40%;"> -->
<div id="tabContainer" style="width:57%;float:left; padding: 4px;">
    <div id="tabs">
      <ul>
        <li id="tabHeader_1">Minijuego</li>
        <li id="tabHeader_2">Enviar a un amigo</li>
        <li id="tabHeader_3">Compartir juego</li>
      </ul>
    </div>
    <div id="tabscontent">
      <div class="tabpage" id="tabpage_1">';

/* Supongamos que la variable que tiene el resultado de la query se llama $row */
// Primero toca quitar el serialize a lo que hemos sacado. Para ello unserialize().
$teclas = unserialize($row['teclas']);
$acciones = unserialize($row['acciones']);
// Ahora ya tenemos metidos en un array las teclas y las acciones. Toca mostrarlos en una tabla
echo '<table><tr>';
// Queremos tener el index, para obtener la accion que corresponde a la tecla.
foreach($teclas as $index=>$tecla){
   echo '<td>'.$tecla.'</td><td>'.$acciones[$index].'</td>';
}
// cerramos tabla y nos vamos :P
echo '</tr></table><hr style="height:1px;border:none;color:#f5f5f5;background-color:#d0d0d0;">

<table style="width:100%;"><tr><td rowspan="3"><img src="'.$row['miniatura'].'" style="max-height:75px;min-height:50px;height:auto;width:auto;"></td><td><a style="font-size:14px;" href="http://'.$_SERVER['SERVER_NAME'].'/test.php?id='.$row['id'].'">'.$row['nombre'].'</a></td><td style="width:auto;max-width:100px;min-width:50px;"><div style="border-radius:5px;border:1px #000 solid;"><center>'.$row['categoria'].'</center></div></td></tr><tr><td colspan="2"><font style="font-size:12px;">'.$row['descripcion'].'</font></td></tr><tr><td colspan="2"><div style="width:100%;height:25px;background:#f5f5f5;"></div></td></tr></table>

<hr style="height:1px;border:none;color:#f5f5f5;background-color:#d0d0d0;">

<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/es_ES/all.js#xfbml=1";
  fjs.parentNode.insertBefore(js, fjs);
}(document, \'script\', \'facebook-jssdk\'));</script>

<b style="font-size:18px;">¿Te gusta '.$row['nombre'].'? ¡Comp&aacute;rtelo!</b><br><br>

<table><tr><td><div class="fb-like" data-href="http://'.$_SERVER['SERVER_NAME'].'/test.php?id='.$row['id'].'" data-width="100" data-height="30" data-colorscheme="light" data-layout="box_count" data-action="like" data-show-faces="false" data-send="false"></div>
</td>

<td>
    <a href="https://twitter.com/share" class="twitter-share-button" data-count="vertical" data-lang="es">Tweet</a>

</td>

<td>

<!--- <a href="http://www.tuenti.com/share" id="tuenti_share" class="tuenti-share-button"
icon-style="dark" language="es-ES"><img src="images/tuenti.png" /></a> -->

<a onclick="_gaq.push([\'_trackEvent\', \'SocialMedia\', \'Tuenti\', \'Tuenti\']); window.open(\'http://www.tuenti.com/share?url=http://'.$_SERVER['SERVER_NAME'].'/test.php?id='.$row['id'].'\', \'_blank\', \'height=375,width=600\'); return false;" href="http://www.tuenti.com/share?url=http://'.$_SERVER['SERVER_NAME'].'/test.php?id='.$row['id'].'"><img src="images/tuenti.png" /></a>

</td>

<td><!-- Inserta esta etiqueta donde quieras que aparezca Botón Compartir. -->
<div class="g-plus" data-action="share" data-annotation="vertical-bubble" data-height="60"></div>

</td></tr></table><br>

Si te gusta este juego compártelo en FaceBook, Twitter, Tuenti y Google+.

<br><br>

<b style="font-size:18px;">¿Y Nexusplayers.com?</b><br>

<div class="fb-like-box" data-href="http://www.facebook.com/groups/nexusplayers/" data-width="480" data-height="180" data-colorscheme="light" data-show-faces="true" data-header="true" data-stream="false" data-show-border="true"></div>

<a href="https://twitter.com/nexusplayers" class="twitter-follow-button" data-show-count="false" data-lang="es">Follow @nexusplayers</a>

<br>

<hr style="height:1px;border:none;color:#f5f5f5;background-color:#d0d0d0;">

  <div class="cat_bar" style="width: 100%; padding:0px!important;">
        <h3 class="catbg" style="width: 100%;margin-left: 9px;">Comentarios:</h3>
  </div>
<div class="windowbg2" style="width: 100%;">
        <span class="topslice"><span></span></span>
            <div class="content"><table style="width:100%;">'; 

$resultComen = mysql_query("SELECT * FROM comentarios WHERE id_juego='$id' and del='0' ORDER BY id ASC");
$total = mysql_num_rows($resultComen);
while($rowComen = mysql_fetch_array($resultComen))
{
$con++;
echo '<tr><td><img src="'.$memberContext[$rowComen["userid"]]['avatar']['href'].'" style="max-width: 75px;max-height: 75px;height: auto;width: auto;" /></td><td><a href="http://'.$_SERVER['SERVER_NAME'].'/index.php?action=profile;u='.$rowComen["userid"].'"><FONT COLOR=RED><B>'. $memberContext[$rowComen["userid"]]['username'] .'</B></FONT></a> escribi&oacute; el '.gmdate("d-m-Y\ \a\ \l\a\s\ H:i", $rowComen["fecha"]).'<br>'. $rowComen["comentario"] .'</td></tr>';
if($con<$total){echo '<tr><td colspan="2"><hr style="height:1px;border:none;color:#000;background-color:#000;"></td></tr>';}
}
if( mysql_num_rows($resultComen) == 0 ) {
echo '<tr><td><center>No hay ning&uacute;n comentario. Se el primero!</center></td></tr>';
}

//echo '<tr><td colspan="2"><hr color="#000000" style="margin-top:12px;"></td></tr>';
echo '</table>';

if ($context['user']['is_logged'])
{

echo '<h3>Inserta tu comentario:</h3>

<FORM NAME="miFormu" ACTION="nuevoComentario.php" METHOD="post"> 
Comentario: <br><TEXTAREA MAXLENGTH=250 rows="4" style="width:100%;" name="comentario"></TEXTAREA><BR> 
<INPUT TYPE="submit" CLASS="boton" VALUE="Enviar Comentario"> 
</FORM><br>';

} else {

	echo '<center><h3 style="color:#ff0000;">[S&oacute;lo los usuarios registrados, pueden enviar comentarios. <a href="http://'.$_SERVER['SERVER_NAME'].'/index.php?action=register"><u>Reg&iacute;strate</u></a> o <a href="http://'.$_SERVER['SERVER_NAME'].'/index.php?action=login"><u>inicia sesi&oacute;n</u></a> para enviar uno.]</h3></center>';

}

echo '</div>
        <span class="botslice"><span></span></span>
  </div>';

echo '</div>
      <div class="tabpage" id="tabpage_2">
        <h2>Page 2</h2>
        <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. 
          Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. </p>
        <p>Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus 
        lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. </p>
        <p> Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, 
        accumsan porttitor, facilisis luctus, metus. </p>
      </div>
      <div class="tabpage" id="tabpage_3">
        <h2>Page 3</h2>
        <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. </p>
        <p>Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris 
        placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, 
        elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui.</p>
        <p>Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam 
        erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus. </p>
      </div>
    </div>
 </div>

<!--- </td><td style="vertical-align:top;width:30%;"> -->


<div id="tabContainer" style="width:40%;float:right;padding: 4px;">
    <div id="tabs">
      <ul>
        <li id="tabHeader_1">Juegos relacionados</li>
      </ul>
    </div>
    <div id="tabscontent">
      <div class="tabpage" id="tabpage_1">
        <h2>Page 1</h2>
        <p>Pellentesque habitant morbi tristique senectus...</p>
      </div>
    </div>
 </div>
<!--- </td></tr></table> -->';

echo '</div><div style="height:100px;width:20px;"></div></body></html>';

exit; // o no, si deseas incluir más información

?>
