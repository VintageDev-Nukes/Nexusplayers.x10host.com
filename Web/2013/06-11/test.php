<?php

require("SSI.php");
include("limpiar.php");
//include("paginator.class.2.php");

require_once(dirname(__FILE__) . '/Settings.php');
mysql_connect ($db_server, $db_user, $db_passwd) or die ('Error: ' . mysql_error());
mysql_select_db ($db_name);
/*require_once(dirname(__FILE__) . '/db.php');
$Login = new database();
$Login->connect();*/
$id = (int)$_GET['id'];
$con = 0;

$UserId = $context['user']['id'];

$query = "SELECT * FROM comentarios WHERE id_juego='$id' and del='0'";
$result = mysql_query($query) or die(mysql_error());
$num_rows = mysql_num_rows($result);

/*if(empty($_GET['ipp'])){$_GET['ipp']=10;}

$pages = new Paginator;
$pages->items_total = $num_rows;
$pages->mid_range = 9; // Number of pages to display. Must be odd and > 3
$pages->paginate();

$idUserArrayQuery = mysql_query("SELECT DISTINCT userid FROM comentarios");
while ($row = mysql_fetch_array($idUserArrayQuery)) {
    loadMemberData($row[0]);
	loadMemberContext($row[0]);
}*/
mysql_query ("SET NAMES 'utf8'");
$sql = "SELECT * FROM juegos WHERE id=".$id." LIMIT 1";
$query = mysql_query($sql);
//$query = $Login->Query($sql);
if( !$query || mysql_num_rows($query) <= 0 ) {exit('No se encontraron resultados');}

$row = mysql_fetch_assoc($query);

$page="Game_".$_GET['id'];

include('visit.php');


//$cat2 = sanear_string(strtolower($row['categoria']));

/*function color_cat() {

	//if($cat2=="bestias") {return "#ff0000";}
	if($row['categoria']=="Bestias") return "#ff000";

}*/

/*function rand_string($length) {
	$str="";
        $chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"; //Aquí se define los caracteres que se van a mostrar	
 
	$size = strlen($chars); //Aquí se devuelve la longitud del string dado
	for($i = 0; $i < $length; $i++) { //Un ciclo For de toda la vida
		$str .= $chars[rand(0, $size - 1)]; //Aquí se muestra, el equivalente en mi función de VB.NET sería Dim idx As Integer = r.Next(0, 35); pero aquí no se necesita ningún sb.Append(...) :P
	}
 
	return $str; //Aquí se returna para luego mostrarla con un Echo
}*/

//validate 
if ($_POST) { 
//send confirmation email (or insert into database, etc...) 

/*if(isset($_POST['del_link'])) {

	$IdComen = $_POST['del_link'];

	$rowComen = mysql_fetch_array(mysql_query("SELECT * FROM comentarios WHERE id='$IdComen' and del='0' and id_juego='$id' LIMIT 1"));
	$Security[0]=$rowComen['rand'];

	if($Security[0] == $rowComen['rand']) {$Link = $rowComen['id'];}else{die('You are trying to hack. -.-');}


	if ($context['user']['is_admin'] || $context['user']['id'] == $rowComen['userid'])
	{
	$query = "UPDATE comentarios SET del = '1' WHERE id = '$Link'";
	mysql_query($query) or die ('Error: ' . mysql_error());
	}

}*/

}
// 


echo '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html xmlns="http://www.w3.org/1999/xhtml"> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>'.$row['nombre'].'</title>
<link rel="stylesheet" type="text/css" href="css/inicio.css">
<style>

</style>
<script src="js/tabs_old.js"></script>
<link href="css/tabs.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="comments/css/stylesheet.css"/>
<link href="/ratingfiles/ratings.css" rel="stylesheet" type="text/css" />
<script src="/ratingfiles/ratings.js" type="text/javascript"></script>
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

<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>

<script type="text/javascript" src="http://dev.jquery.com/view/trunk/plugins/validate/jquery.validate.js"></script> 

<!--- <script> 
$(document).ready(function() {
	$("#form1").validate({
		submitHandler: function() {
			$.post("'.$_SERVER['PHP_SELF'].'",
				$("#form1").serialize(), 
				function(data){
				  if (data == \'Sent\') {
				    $("#message").fadeIn();
				    $("#form1")[0].reset();
				}
			});
			return false;
		}
	});
});
</script> -->

<!--style the error message--> 
<style type="text/css"> 
.error { 
    display: block; 
    color: red; 
    font-style: italic; 
} 
#message { 
    display:none; 
    font-size:15px; 
    font-weight:bold; 
    color:#333333; 
} 
</style> 

<script type="text/javascript">
    //<![CDATA[
    function get_form( element )
    {
        while( element )
        {
            element = element.parentNode
            if( element.tagName.toLowerCase() == "form" )
            {
                //alert( element ) //debug/test
                return element
            }
        }
        return 0; //error: no form found in ancestors
    }
    //]]>
</script>';

if($row['tipo']=="unity") {

  echo '<script type="text/javascript" src="http://webplayer.unity3d.com/download_webplayer-3.x/3.0/uo/UnityObject.js"></script>';
  
}

echo '</head>
<body>
<div class="top"><a href="http://'.$_SERVER['SERVER_NAME'].'/index.php"><img src="http://'.$_SERVER['SERVER_NAME'].'/nexuslogo2.png" style="position:relative; padding:10px;" /></a><br><span style="font-size:24px;position:relative;left:15px;font-weight:bold;top:-5px;color:#fff;">'.$row['nombre'].'</span></div>
<div class="game" style="width:'.$row['ancho'].'px; height:'.$row['alto'].'px;">';

if($row['tipo']=="flash") {

  echo '<OBJECT classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0" WIDTH="'.$row['ancho'].'" HEIGHT="'.$row['alto'].'" id="Yourfilename" ALIGN="">
<PARAM NAME=movie VALUE="'.$row['linkjuego'].'"> <PARAM NAME=quality VALUE=high> <PARAM NAME=bgcolor VALUE=#333399> <EMBED src="'.$row['linkjuego'].'" quality=high bgcolor=#333399 WIDTH="'.$row['ancho'].'" HEIGHT="'.$row['alto'].'" NAME="Yourfilename" ALIGN="" TYPE="application/x-shockwave-flash" PLUGINSPAGE="http://www.macromedia.com/go/getflashplayer"></EMBED> </OBJECT>';

} elseif($row['tipo']=="java") {

  
  
} elseif($row['tipo']=="unity") {

  echo '    <script type="text/javascript">
    <!--
    function GetUnity() {
      if (typeof unityObject != "undefined") {
        return unityObject.getObjectById("unityPlayer");
      }
      return null;
    }
    if (typeof unityObject != "undefined") {
    
        var params = {
        backgroundcolor: "000000",
        bordercolor: "000000",
        textcolor: "FFFFFF",
        //logoimage: "MyLogo.png",
        //progressbarimage: "MyProgressBar.png",
        //progressframeimage: "MyProgressFrame.png"
        disableContextMenu: true
        };

      unityObject.embedUnity("unityPlayer", "'.$row['linkjuego'].'", '.$row['ancho'].', '.$row['alto'].',params);
      
    }
    -->
    </script>

    <embed type="application/vnd.unity" width="'.$row['ancho'].'" height="'.$row['alto'].'" tabindex="0" backgroundcolor="000000" bordercolor="000000" textcolor="FFFFFF" disablecontextmenu="true" firstframecallback="unityObject.firstFrameCallback();" src="'.$row['linkjuego'].'" style="display: block; width: 100%; height: 100%;">';
  
} elseif($row['tipo']=="iframe") {

  
  
} elseif($row['tipo']=="otro") {

  
  
}

echo '</div>
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

<table style="width:100%;"><tr><td rowspan="3"><img src="'.$row['miniatura'].'" style="max-height:75px;min-height:50px;height:auto;width:auto;"></td><td><a style="font-size:14px;" href="http://'.$_SERVER['SERVER_NAME'].'/'.$_SERVER['PHP_SELF'].'?id='.$row['id'].'">'.$row['nombre'].'</a></td><td style="text-align:right;"><div style="background:#000;color:#fff;font-weight:bold;border-radius:10px;border:1px #000 solid;display: inline-block; padding: 0 10px 0 10px;" align="center">'.$row['categoria'].'</div></td></tr><tr><td colspan="2"><font style="font-size:12px;">'.$row['descripcion'].'</font></td></tr><tr><td colspan="2"><div style="width:100%;height:25px;background:#f5f5f5;"><div class="srtgs" id="rt_game'.$row['id'].'"></div></div></td></tr></table>

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

<table><tr><td><div class="fb-like" data-href="http://'.$_SERVER['SERVER_NAME'].'/'.$_SERVER['PHP_SELF'].'?id='.$row['id'].'" data-width="100" data-height="30" data-colorscheme="light" data-layout="box_count" data-action="like" data-show-faces="false" data-send="false"></div>
</td>

<td>
    <a href="https://twitter.com/share" class="twitter-share-button" data-count="vertical" data-lang="es">Tweet</a>

</td>

<td>

<!--- <a href="http://www.tuenti.com/share" id="tuenti_share" class="tuenti-share-button"
icon-style="dark" language="es-ES"><img src="images/tuenti.png" /></a> -->

<a onclick="_gaq.push([\'_trackEvent\', \'SocialMedia\', \'Tuenti\', \'Tuenti\']); window.open(\'http://www.tuenti.com/share?url=http://'.$_SERVER['SERVER_NAME'].'/'.$_SERVER['PHP_SELF'].'?id='.$row['id'].'\', \'_blank\', \'height=375,width=600\'); return false;" href="http://www.tuenti.com/share?url=http://'.$_SERVER['SERVER_NAME'].'/'.$_SERVER['PHP_SELF'].'?id='.$row['id'].'"><img src="images/tuenti.png" /></a>

</td>

<td><!-- Inserta esta etiqueta donde quieras que aparezca Botón Compartir. -->
<div class="g-plus" data-action="share" data-annotation="vertical-bubble" data-height="60"></div>

</td></tr></table><br>

Si te gusta este juego compártelo en FaceBook, Twitter, Tuenti y Google+.

<br><br>

<b style="font-size:18px;">¿Y Nexusplayers.com?</b><br>

<div class="fb-like-box" data-href="http://www.facebook.com/groups/nexusplayers/" data-width="480" data-height="180" data-colorscheme="light" data-show-faces="true" data-header="true" data-stream="false" data-show-border="true"></div>

<a href="https://twitter.com/nexusplayers" class="twitter-follow-button" data-show-count="false" data-lang="es">Follow @nexusplayers</a>

<br>';

/*$pre_total1 = mysql_query("SELECT * FROM comentarios WHERE id_juego='$id' and del='0'");
$pre_total2 = mysql_query("SELECT * FROM comentarios WHERE id_juego='$id' and del='0' $pages->limit");
$total = mysql_num_rows($pre_total1);
$total2 = mysql_num_rows($pre_total2);*/

echo '<hr style="height:1px;border:none;color:#f5f5f5;background-color:#d0d0d0;">

  <div class="cat_bar" style="width: 100%; padding:0px!important;">
        <h3 class="catbg" style="width: 100%;margin-left: 9px;">Comentarios '; 

        //if($_GET['ipp']!="All"){echo '(Mostrando '.$total2.' de '.$total.' resultados)';}else{echo '(Mostrando '.$total.' resultados)';}

        echo ':</h3>
  </div>
<div class="windowbg2" style="width: 100%;">
        <span class="topslice"><span></span></span>
            <div class="content" id="comentarios">';

    //echo '<table style="width:100%;">'; 

/*$resultComen = mysql_query("SELECT * FROM comentarios WHERE id_juego='$id' and del='0' ORDER BY id DESC $pages->limit");
while($rowComen = mysql_fetch_array($resultComen))
{
$con++;
echo '<tr><td rowspan="2"><img src="'.$memberContext[$rowComen["userid"]]['avatar']['href'].'" style="max-width: 75px;max-height: 75px;height: auto;width: auto;" /></td><td><a href="http://'.$_SERVER['SERVER_NAME'].'/index.php?action=profile;u='.$rowComen["userid"].'"><FONT COLOR=RED><B>'. $memberContext[$rowComen["userid"]]['username'] .'</B></FONT></a> escribi&oacute; el '.gmdate("d-m-Y\ \a\ \l\a\s\ H:i", $rowComen["fecha"]).'</td><td style="text-align:right;">';

if ($context['user']['is_admin'] || $context['user']['id'] == $rowComen['userid'])
{
echo '<form name="del" method="post"><input type="hidden" name="del_link" value="'.$rowComen['id'].'" /><a href="#" onclick="get_form(this).submit(); return false;"><img src="http://www.sitewizard.co.uk/images/cross_icon.png" /></a></form>';
}

echo '</td></tr><tr><td colspan="2">'. $rowComen["comentario"] .'</td></tr>';
if($con<$total2){echo '<tr><td colspan="3"><hr style="height:1px;border:none;color:#000;background-color:#000;"></td></tr>';}
}
if( mysql_num_rows($resultComen) == 0 ) {
echo '<tr><td><center>No hay ning&uacute;n comentario. Se el primero!</center></td></tr>';
}

//echo '<tr><td colspan="2"><hr color="#000000" style="margin-top:12px;"></td></tr>';
echo '</table>';

echo '<hr style="height:1px;border:none;color:#f5f5f5;background-color:#d0d0d0;">';

echo '<center>';
echo $pages->display_pages();
echo '</center>';

echo '<hr style="height:1px;border:none;color:#f5f5f5;background-color:#d0d0d0;">';

if ($context['user']['is_logged'])
{

echo '<h3>Inserta tu comentario:</h3>';

if($_POST) {

if(isset($_POST['comentario'])) {

$idJuego = $id;
$comentarioJuego = nl2br($_POST['comentario']);
$ip = $_SERVER['REMOTE_ADDR']; 
$fecha = time(); 
$Rand_String = rand_string(8);

	$Last_Activity = mysql_fetch_array(mysql_query("SELECT * FROM comentarios WHERE userid='".$context['user']['id']."' and del='0' ORDER BY fecha DESC LIMIT 1"));
	
	$Ultima = $Last_Activity['fecha'];
	//echo $Ultima; //For Debug

	if($Ultima < time() + 15) {
		$query = "INSERT INTO comentarios (id_juego, comentario, fecha, ip, userid, rand) VALUES ('$idJuego','$comentarioJuego', '$fecha', '$ip', '$UserId', '$Rand_String')";
		mysql_query($query) or die ('Error: ' . mysql_error());
		echo 'El mensaje se ha enviado correctamente.';
	} else {
		echo 'No puedes realizar tantas acciones en tan poco tiempo. Tienes que esperar al menos '.time()-($Ultima+15).' segundos.';
	}

}

}

echo '<form method="post" name="form1">

Comentario: <br><TEXTAREA MAXLENGTH=250 rows="4" style="width:100%;" name="comentario" id="comentario"></TEXTAREA><BR> 
<INPUT TYPE="submit" CLASS="boton" VALUE="Enviar Comentario"> 
</form><br>';

} else {

	echo '<center><h3 style="color:#ff0000;">[S&oacute;lo los usuarios registrados, pueden enviar comentarios. <a href="http://'.$_SERVER['SERVER_NAME'].'/index.php?action=register"><u>Reg&iacute;strate</u></a> o <a href="http://'.$_SERVER['SERVER_NAME'].'/index.php?action=login"><u>inicia sesi&oacute;n</u></a> para enviar uno.]</h3></center>';

}*/

$cmtx_parameters = 'id';
$cmtx_identifier = 'cmtx_url';
$cmtx_reference = $row['nombre'];
$cmtx_path = 'comments/';
define('IN_COMMENTICS', 'true'); //no need to edit this line
require $cmtx_path . 'includes/commentics.php'; //no need to edit this line


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
