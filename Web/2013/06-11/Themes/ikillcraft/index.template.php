<?php
/**
 * Simple Machines Forum (SMF)
 *
 * @package SMF
 * @author Simple Machines
 * @copyright 2011 Simple Machines
 * @license http://www.simplemachines.org/about/smf/license.php BSD
 *
 * @version 2.0
 */

/*	This template is, perhaps, the most important template in the theme. It
	contains the main template layer that displays the header and footer of
	the forum, namely with main_above and main_below. It also contains the
	menu sub template, which appropriately displays the menu; the init sub
	template, which is there to set the theme up; (init can be missing.) and
	the linktree sub template, which sorts out the link tree.

	The init sub template should load any data and set any hardcoded options.

	The main_above sub template is what is shown above the main content, and
	should contain anything that should be shown up there.

	The main_below sub template, conversely, is shown after the main content.
	It should probably contain the copyright statement and some other things.

	The linktree sub template should display the link tree, using the data
	in the $context['linktree'] variable.

	The menu sub template should display all the relevant buttons the user
	wants and or needs.

	For more information on the templating system, please see the site at:
	http://www.simplemachines.org/
*/

/*$page="Index";

include($_SERVER['DOCUMENT_ROOT'] . '/visit.php');*/

// Initialize the template... mainly little settings.
function template_init()
{
	global $context, $settings, $options, $txt;

	/* Use images from default theme when using templates from the default theme?
		if this is 'always', images from the default theme will be used.
		if this is 'defaults', images from the default theme will only be used with default templates.
		if this is 'never' or isn't set at all, images from the default theme will not be used. */
	$settings['use_default_images'] = 'never';

	/* What document type definition is being used? (for font size and other issues.)
		'xhtml' for an XHTML 1.0 document type definition.
		'html' for an HTML 4.01 document type definition. */
	$settings['doctype'] = 'xhtml';

	/* The version this template/theme is for.
		This should probably be the version of SMF it was created for. */
	$settings['theme_version'] = '2.0';

	/* Set a setting that tells the theme that it can render the tabs. */
	$settings['use_tabs'] = true;

	/* Use plain buttons - as opposed to text buttons? */
	$settings['use_buttons'] = true;

	/* Show sticky and lock status separate from topic icons? */
	$settings['separate_sticky_lock'] = true;

	/* Does this theme use the strict doctype? */
	$settings['strict_doctype'] = false;

	/* Does this theme use post previews on the message index? */
	$settings['message_index_preview'] = false;

	/* Set the following variable to true if this theme requires the optional theme strings file to be loaded. */
	$settings['require_theme_strings'] = false;
}

// The main sub template above the content.
function template_html_above()
{
	global $context, $settings, $options, $scripturl, $txt, $modSettings;

$dbtablehits= 'hits';
$dbtableinfo= 'info';
$maxrows = 50; 
$page="Index";

//if(!isset($_COOKIE["Last_Activity"])) {

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


	//if($context['user']['is_logged']) {include $_SERVER['DOCUMENT_ROOT'] . '/Sources/badges.php'; Check_Badges();}

	// Show right to left and the character set for ease of translating.
	echo '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"', $context['right_to_left'] ? ' dir="rtl"' : '', '>
<head>';

	// The ?fin20 part of this link is just here to make sure browsers don't cache it wrongly.
	echo '
	<link rel="stylesheet" type="text/css" href="', $settings['theme_url'], '/css/index', $context['theme_variant'], '.css?fin20" />';

	echo '<link rel="stylesheet" href="', $settings['theme_url'], '/web.css" />';

	// Some browsers need an extra stylesheet due to bugs/compatibility issues.
	foreach (array('ie7', 'ie6', 'webkit') as $cssfix)
		if ($context['browser']['is_' . $cssfix])
			echo '
	<link rel="stylesheet" type="text/css" href="', $settings['default_theme_url'], '/css/', $cssfix, '.css" />';

	// RTL languages require an additional stylesheet.
	if ($context['right_to_left'])
		echo '
	<link rel="stylesheet" type="text/css" href="', $settings['theme_url'], '/css/rtl.css" />';

	// Web Favicon!
	echo '<link rel="icon" 
      type="image/png" 
      href="http://'.$_SERVER['SERVER_NAME'].'/1376851524_8798.ico">';

    //JQuery comes here:
    echo '<script src="http://code.jquery.com/jquery-1.9.0.js"></script>';

    //Slider:
    echo '<script type="text/javascript">
(function($){
    $.fn.MySlider = function(interval) {
        var slides;
        var cnt;
        var amount;
        var i;

        function run() {
            // hiding previous image and showing next
            $(slides[i]).fadeOut(1000);
            i++;
            if (i >= amount) i = 0;
            $(slides[i]).fadeIn(1000);

            // updating counter
            cnt.text(i+1+\' / \'+amount);

            // loop
            setTimeout(run, interval);
        }

        slides = $(\'#menubar_slider\').children();
        cnt = $(\'#counter\');
        amount = slides.length;
        i=0;

        // updating counter
        cnt.text(i+1+\' / \'+amount);

        setTimeout(run, interval);
    };
})(jQuery);

// custom initialization
jQuery(window).load(function() {
    $(\'.smart_gallery\').MySlider(15000);
});
</script>';

    //Google Analytics
    echo '<script>
  (function(i,s,o,g,r,a,m){i[\'GoogleAnalyticsObject\']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,\'script\',\'//www.google-analytics.com/analytics.js\',\'ga\');

  ga(\'create\', \'UA-43416116-1\', \'x10host.com\');
  ga(\'send\', \'pageview\');

</script>';

//Url-Block
echo '<script type="text/javascript">
// Don\'t show links to guests
// Script by Celebrus (http://vikhyat.net/)
function logged_in() {
   return $(\'#userStatus\').val() == \'User\' ? true : false;
 }
$(document).ready(function() {
  if(!logged_in()) {
    $(\'#url-lock\').html(\'<span style="color:red;font-weight:bold;">'. $txt['only_registered_users_can_see_that_content_start'] .'<a href="' . $scripturl . '?action=register">'. $txt['register_mod'] .'</a>'. $txt['or_mod_lang'] .'<a href="' . $scripturl . '?action=login">'. $txt['login_mod'] .'</a>'. $txt['only_registered_users_can_see_that_content_end'] .'</span>\');
  }
});
</script>';

	// Here comes the JavaScript bits!
	echo '
	<script type="text/javascript" src="', $settings['default_theme_url'], '/scripts/script.js?fin20"></script>
	<script type="text/javascript" src="', $settings['theme_url'], '/scripts/theme.js?fin20"></script>
	<script type="text/javascript"><!-- // --><![CDATA[
		var smf_theme_url = "', $settings['theme_url'], '";
		var smf_default_theme_url = "', $settings['default_theme_url'], '";
		var smf_images_url = "', $settings['images_url'], '";
		var smf_scripturl = "', $scripturl, '";
		var smf_iso_case_folding = ', $context['server']['iso_case_folding'] ? 'true' : 'false', ';
		var smf_charset = "', $context['character_set'], '";', $context['show_pm_popup'] ? '
		var fPmPopup = function ()
		{
			if (confirm("' . $txt['show_personal_messages'] . '"))
				window.open(smf_prepareScriptUrl(smf_scripturl) + "action=pm");
		}
		addLoadEvent(fPmPopup);' : '', '
		var ajax_notification_text = "', $txt['ajax_in_progress'], '";
		var ajax_notification_cancel_text = "', $txt['modify_cancel'], '";
	// ]]></script>
<script>

function muestra_oculta(id){
if (document.getElementById){ //se obtiene el id
var el = document.getElementById(id); //se define la variable "el" igual a nuestro div
el.style.display = (el.style.display == \'block\') ? \'none\' : \'block\'; //damos un atributo display:none que oculta el div
}
}
window.onload = function(){/*hace que se cargue la funciÃ³n lo que predetermina que div estarÃ¡ oculto hasta llamar a la funciÃ³n nuevamente*/
muestra_oculta(\'contenido_a_mostrar\');/* "contenido_a_mostrar" es el nombre de la etiqueta DIV que deseamos mostrar */
}
function muestra(id){
div = document.getElementById(id);
div.style.display=\'block\';
}
function ocultar(id){
div2 = document.getElementById(id);
div2.style.display=\'none\';
}
</script>
<script type="text/javascript">
<!--
    function toggle_visibility() {
       var e = document.getElementById(\'repro\');
       if(e.style.visibility == \'visible\') {
          e.style.visibility = \'hidden\';
      document.getElementById("groove").style.visibility = "hidden";
	  document.getElementById("repro2").style.marginLeft = "0px"
	  document.getElementById("repro3").innerHTML = "&raquo;"
	  document.getElementById("repro55").style.zIndex = "0" }
       else {
          e.style.visibility = \'visible\';
      document.getElementById("groove").style.visibility = "visible";
	  document.getElementById("repro2").style.marginLeft = "201px"
	  document.getElementById("repro3").innerHTML = "&laquo;"
	  document.getElementById("repro55").style.zIndex = "30" }
    }
//-->
</script>';

	echo '
	<meta http-equiv="Content-Type" content="text/html; charset=', $context['character_set'], '" />
	<meta name="description" content="', $context['page_title_html_safe'], '" />', !empty($context['meta_keywords']) ? '
	<meta name="keywords" content="' . $context['meta_keywords'] . '" />' : '', '
	<title>', $context['page_title_html_safe'], '</title>';

	// Please don't index these Mr Robot.
	if (!empty($context['robot_no_index']))
		echo '
	<meta name="robots" content="noindex" />';

	// Present a canonical url for search engines to prevent duplicate content in their indices.
	if (!empty($context['canonical_url']))
		echo '
	<link rel="canonical" href="'.$context['canonical_url'].'" />';

	// Show all the relative links, such as help, search, contents, and the like.
	echo '
	<link rel="help" href="', $scripturl, '?action=help" />
	<link rel="search" href="', $scripturl, '?action=search" />
	<link rel="contents" href="', $scripturl, '" />';

	// If RSS feeds are enabled, advertise the presence of one.
	if (!empty($modSettings['xmlnews_enable']) && (!empty($modSettings['allow_guestAccess']) || $context['user']['is_logged']))
		echo '
	<link rel="alternate" type="application/rss+xml" title="', $context['forum_name_html_safe'], ' - ', $txt['rss'], '" href="', $scripturl, '?type=rss;action=.xml" />';

	// If we're viewing a topic, these should be the previous and next topics, respectively.
	if (!empty($context['current_topic']))
		echo '
	<link rel="prev" href="', $scripturl, '?topic=', $context['current_topic'], '.0;prev_next=prev" />
	<link rel="next" href="', $scripturl, '?topic=', $context['current_topic'], '.0;prev_next=next" />';

	// If we're in a board, or a topic for that matter, the index will be the board's index.
	if (!empty($context['current_board']))
		echo '
	<link rel="index" href="', $scripturl, '?board=', $context['current_board'], '.0" />';

	// Output any remaining HTML headers. (from mods, maybe?)
	echo $context['html_headers'];

	echo '<style>#refcop {display:none;}</style>
</head>
<body>

<script id="_wauwg5">var _wau = _wau || [];
_wau.push(["tab", "g8uf59vjsudl", "wg5", "right-middle"]);
(function() {var s=document.createElement("script"); s.async=true;
s.src="http://widgets.amung.us/tab.js";
document.getElementsByTagName("head")[0].appendChild(s);
})();</script>

<script type="text/javascript">
    function show(id) {
      document.getElementById(id).style.display = \'block\';
    }
    function hide(id) {
      document.getElementById(id).style.display = \'none\';
    }
  </script>

<style>.br2:hover {cursor:pointer;}</style>

<div id="content" style="background-image: url(http://i.imgur.com/nLMS5.png); width: 100%; height: 100%; position: fixed; margin: 0px; z-index: 40; display: none; background-position: 0px 0px; background-repeat: repeat repeat;" onclick="hide(\'content\')">

<table style="z-index:50; position: absolute; width: 70%; height: 90%;top:0;bottom: 0;left: 0;right: 0;margin:auto;">
<tbody>
<tr>
<td style="position:relative; margin-left: -6px; top: 8px; z-index:60;line-height:48px; width:100%; height:48px; background:#B45F04 url(\'http://i.imgur.com/ZrsUn.png\') repeat;" class="title4">
<center><h1 style="font-size:20px;" class="ccool4">Pide la publicidad de tu Servidor de Minecraft para IkillCraft aqu&iacute;</h1></center>
</td>
</tr>
<tr>
<td style="overflow-y:scroll; background: #fff; width:100%; height:100%; border: 6px #000 solid;">
<script type="text/javascript" src="http://form.jotformeu.com/jsform/30877038380357"></script>
</td>
</tr>
<tr>
<td class="close4" style="position:relative; width:100%; top: -8px; margin-left: -6px; height:48px; background:#1E65A7 url(\'http://i.imgur.com/iteW5.png\') repeat;">
<center><a onclick="hide(\'content\')" href="#" class="cerrar" style="position:relative;">Cerrar</a></center>
</td>
</tr>
</tbody>
</table>

</div>

<div id="repro55" style="float: left; position: fixed;top:50%;margin-top:-125px;width:250px; height:250px;z-index:0;">
<div id="repro" style="width: 200px; height: 250px; background-color: rgb(255, 255, 255); border: 3px solid rgb(0, 0, 0); visibility: hidden; top: 4px; left: -4px;position: relative;"><object id="groove" style="visibility:hidden;" width="200" height="250" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" id="gsPlaylist8363415719" name="gsPlaylist8363415719"><param name="movie" value="http://grooveshark.com/widget.swf"><param name="wmode" value="window"><param name="allowScriptAccess" value="always"><param name="flashvars" value="hostname=grooveshark.com&amp;playlistID=83634157&amp;p=0&amp;bbg=000000&amp;bth=000000&amp;pfg=000000&amp;lfg=000000&amp;bt=FFFFFF&amp;pbg=FFFFFF&amp;pfgh=FFFFFF&amp;si=FFFFFF&amp;lbg=FFFFFF&amp;lfgh=FFFFFF&amp;sb=FFFFFF&amp;bfg=666666&amp;pbgh=666666&amp;lbgh=666666&amp;sbh=666666"><object type="application/x-shockwave-flash" data="http://grooveshark.com/widget.swf" width="200" height="250"><param name="wmode" value="window"><param name="allowScriptAccess" value="always"><param name="flashvars" value="hostname=grooveshark.com&amp;playlistID=83634157&amp;p=0&amp;bbg=000000&amp;bth=000000&amp;pfg=000000&amp;lfg=000000&amp;bt=FFFFFF&amp;pbg=FFFFFF&amp;pfgh=FFFFFF&amp;si=FFFFFF&amp;lbg=FFFFFF&amp;lfgh=FFFFFF&amp;sb=FFFFFF&amp;bfg=666666&amp;pbgh=666666&amp;lbgh=666666&amp;sbh=666666"><span><a href="http://grooveshark.com/search/playlist?q=IkillCraft%20Ikillnukes" title="IkillCraft by Ikillnukes on Grooveshark">IkillCraft by Ikillnukes on Grooveshark</a></span></object></object></div>
<div id="repro2" style="width:50px;height:250px;position:relative;top: -252px;left:-4px;" class="sh2" onclick="toggle_visibility();"><div class="br3" style="width:100%;line-height:250px;font-weight:bold;color:#fff;"><span class="br" style="width:100%; font-size:12px; text-align:center; top:12px; left:-15px; position:relative;"><style>
.br {
    display: block;
    line-height:15px;
}
</style>', $txt['MP3'] ,'</span><center class="br2" style="font-size:60px; position:relative; top:-230px; left:7px; height:0px;" id="repro3">&raquo;</center></div></div>
</div>';
}

function template_body_above()
{
	global $context, $settings, $options, $scripturl, $txt, $modSettings, $user_info;

	if(isset($_GET['theme'])){
	if(empty($_GET['sesc']) OR $_GET['sesc']!=$context['session_id']){die('Hacking Attempt...');}
}

	echo !empty($settings['forum_width']) ? '
<div class="all2" style="margin: 0 auto;margin-bottom: 40px; width:' . $settings['forum_width'] . ';">' : '', '
	<div class="top">
<a href="http://'.$_SERVER['SERVER_NAME'].'/index.php?action=forum"><img src="http://'.$_SERVER['SERVER_NAME'].'/NexusLogo.png" style="position:relative; top:50%; margin-top:-47px; left:20px;" /></a>

		</div>
<div id="menubar" style="position: relative;margin-top: -12px;">

<center><ul id="menubar_slider">';

$query = "SELECT * FROM news ORDER BY id";
$result = mysql_query($query) or die(mysql_error());
while($rs=mysql_fetch_array($result)) 
  { 
echo'<li>'.$rs['noticia'].'</li>';
}

echo '</ul></center>

</div>

<div id="body">
		
<div id="fops">

<table style="color:#000; font-size:12px; font-family:Arial Black;top: 0px;position: relative;" id="table">
<tbody><tr>
<td><div id="options" style="position: relative;top: -1px;" class="index" onclick="location.href=\'index.php\';">' ,$txt['inicio'], '</div></td>
<td style="position:relative;left:-3px;top: -1px;"><div id="options" class="foro" onclick="location.href=\'index.php?action=forum\';">' ,$txt['foro'], '</div></td>
</tr>
</tbody></table>';

if ($context['user']['is_logged'])
	{

echo '<div id="header-ide">

<table style="color:#000; font-size:12px; font-family:Arial Black; margin:5px;" id="table">
<tbody><tr>
<td>

<li id="header-user"><span id="header-user-avatar" title="Cambia tu avatar" onclick="location.href=\'?action=profile;area=forumprofile\';"><span style="
    position: relative;
    left: -60px;cursor:pointer;
">', $context['user']['avatar']['image'], '</span></span><span id="header-user-nom" class="" onclick="location.href=\'?action=profile\';" style="cursor:pointer;" title="Tu perfil">', $context['user']['name'], '</span><span id="header-user-dropdown" class="ic-arrow-dropdown" title="M&aacute;s opciones" style="cursor:pointer;" onclick="muestra_oculta(\'header-user-menu\');">&#9660;</span><div id="header-user-menu" style="display:none;">

<ul class="listano menu-gris"><li onclick="location.href=\'?action=profile;area=account\';"><span class="usme" id="fim" title="' ,$txt['profileEdit2'], '">' ,$txt['profileEdit2'], '</span></li><li onclick="location.href=\'?action=unread\';"><span class="usme">' ,$txt['unread_since_visit'], '</span></li><li onclick="location.href=\'?action=unreadreplies\';"><span class="usme">' ,$txt['show_unread_replies'], '</span></li><li onclick="location.href=\''.$scripturl,'?action=logout;'.$context['session_var'].'='.$context['session_id'].'\';"><span class="usme" id="lastm" title="Cerrar la sesi&oacute;n">Salir</span></li> </ul>

</div></li>

</td><td style="position:relative;left:10px;">
<form action="" method="get" name="jump"><select name="language" onchange="this.form.submit()" style="height:42px;width: 200px;">
            <option selected="selected" disabled="disabled">', $txt['lenguaje'] ,'</option>
            <option disabled="disabled">-----</option>
            <option disabled="disabled"></option>
<option value="spanish_es">Espa&ntilde;ol</option>
<option value="english">English</option>
          </select><noscript><input type="submit" value="Go" /></noscript></form>
</td></tr></tbody></table></div>
<div id="mainbar">
<table style="position:relative;left:10px;"><tbody><tr><td>
<div id="menop" onclick="location.href=\'?action=search\';">', $txt['help'] ,'</div>
</td><td style="position:relative; left:10px;">
<div id="menop" onclick="location.href=\'?action=help\';">', $txt['search'] ,'</div>
</td><td style="position:relative; left:20px;">
<div id="menop" onmouseover="muestra(\'header-messages-menu\');" onmouseout="ocultar(\'header-messages-menu\');" onclick="location.href=\'?action=pm\';">', $txt['pm_short'];
if(!$user_info['unread_messages'] == 0) {echo ' ['.$user_info['unread_messages'].']';}

echo '</div>

<div id="header-messages-menu" class="header-menu" onmouseover="muestra(\'header-messages-menu\');" onmouseout="ocultar(\'header-messages-menu\');" style="display:none;">

<ul class="listano menu-gris"><li onclick="location.href=\'?action=pm\';"><span class="usme" id="fim">' ,$txt['pm_menu_read'], '</span></li><li onclick="location.href=\'?action=pm;sa=send\';"><span class="usme" id="lastm">' ,$txt['pm_menu_send'], '</span></li></ul>

</div>

</td><td style="position:relative; left:30px;">
<div id="menop" onmouseover="muestra(\'header-users-menu\');" onmouseout="ocultar(\'header-users-menu\');" onclick="location.href=\'?action=mlist\';">', $txt['members'] ,'</div>

<div id="header-users-menu" class="header-menu" onmouseover="muestra(\'header-users-menu\');" onmouseout="ocultar(\'header-users-menu\');" style="display:none;">

<ul class="listano menu-gris"><li onclick="location.href=\'?action=mlist\';"><span class="usme" id="fim">' ,$txt['mlist_menu_view'], '</span></li><li onclick="location.href=\'?action=mlist;sa=search\';"><span class="usme" id="lastm">' ,$txt['mlist_search'], '</span></li></ul>

</div>

</td>
<input type="hidden" id="userStatus" value="User" />';

		if ($context['user']['is_admin'])
			echo '
<td style="position:relative; left:40px;">
<div id="menop" onmouseover="muestra(\'header-admin-menu\');" onmouseout="ocultar(\'header-admin-menu\');" onclick="location.href=\'?action=admin\';">', $txt['admin'] ,'</div>

<div id="header-admin-menu" class="header-menu" onmouseover="muestra(\'header-admin-menu\');" onmouseout="ocultar(\'header-admin-menu\');" style="display:none;">

<ul class="listano menu-gris"><li onclick="location.href=\'?action=admin;area=featuresettings\';"><span class="usme" id="fim">' ,$txt['modSettings_title'], '</span></li><li onclick="location.href=\'?action=admin;area=packages\';"><span class="usme">' ,$txt['package'], '</span></li><li onclick="location.href=\'?action=admin;area=logs;sa=errorlog;desc\';"><span class="usme">' ,$txt['errlog'], '</span></li><li onclick="location.href=\'?action=admin;area=permissions\';"><span class="usme" id="lastm">' ,$txt['edit_permissions'], '</span></li> </ul>

</div>

</td><td style="position:relative; left:50px;">
<div id="menop" onmouseover="muestra(\'header-mod-menu\');" onmouseout="ocultar(\'header-mod-menu\');" onclick="location.href=\'?action=moderate\';">', $txt['moderate'] ,'</div>

<div id="header-mod-menu" class="header-menu" onmouseover="muestra(\'header-mod-menu\');" onmouseout="ocultar(\'header-mod-menu\');" style="display:none;">

<ul class="listano menu-gris"><li onclick="location.href=\'?action=moderate;area=reports\';"><span class="usme" id="mix2">' ,$txt['mc_reported_posts'], '</span></li></ul>

</div>

</td>';

echo '</tr></tbody></table>
</div>'; }

	elseif (!empty($context['show_login_bar']))
	{ echo '
	<div id="header-ide">

<table style="color:#000; font-size:12px; font-family:Arial Black; margin:5px;" id="table">
<tbody><tr>
<td><div  title="', $txt['inises2'] ,'" id="options" onclick="muestra_oculta(\'header-login-balloon\');">', $txt['inises'], ' &#9660;</div><div id="header-login-balloon" class="globoC" style="display: none;"><img src="pico.png" style="position:relative;top: -27px;left: 144px;">

<div style="position:relative;top:-8px;">
<script type="text/javascript" src="', $settings['default_theme_url'], '/scripts/sha1.js"></script>
				<form id="guest_form" action="', $scripturl, '?action=login2" method="post" accept-charset="', $context['character_set'], '" ', empty($context['disable_login_hashing']) ? ' onsubmit="hashLoginPassword(this, \'' . $context['session_id'] . '\');"' : '', '>
					<input type="text" name="user" size="10" class="input_text2" placeholder="', $txt['cuser'] ,'" title="', $txt['cuser2'] ,'" id="userballoon-login" value="" size="15" maxlength="254" /><br><br>
					<input type="password" name="passwrd" size="10" class="input_password2" placeholder="', $txt['cpass'] ,'" title="', $txt['cpass2'] ,'" id="passballoon-login" value="" size="15" maxlength="254" />
					<div class="info">', $txt['duracion'] ,'</div>
					<select name="cookielength" class="duration">
						<option value="60">', $txt['one_hour'], '</option>
						<option value="1440">', $txt['one_day'], '</option>
						<option value="10080">', $txt['one_week'], '</option>
						<option value="43200">', $txt['one_month'], '</option>
						<option value="-1" selected="selected">', $txt['forever'], '</option>
					</select><br><br>
					<div class="sulog">
					<input style="line-height: 0;" type="submit" value="', $txt['login'], '" class="boton2 verde" id="header-login-button" /></div><br />
					</form></div>

</div></td>
<td style="position:relative;left:5px;top: -3px;"><div id="header-register-button" class="boton2 verde" title="', $txt['reg2'] ,'" onclick="location.href=\'?action=register\';">', $txt['reg'] ,'</div></td><td style="position:relative;left:10px;"><form action="" method="get" name="jump"><select name="language" onchange="this.form.submit()" style="height:42px;width: 200px;">
            <option selected="selected" disabled="disabled">', $txt['lenguaje'] ,'</option>
            <option disabled="disabled">-----</option>
            <option disabled="disabled"></option>
<option value="spanish_es">Espa&ntilde;ol</option>
<option value="english">English</option>
          </select><noscript><input type="submit" value="Go" /></noscript></form></td></tr></tbody></table></div>
<div id="mainbar">
<table style="position:relative;left:10px;"><tbody><tr><td>
<div id="menop" onclick="location.href=\'?action=search\';">', $txt['help'] ,'</div>
</td><td style="position:relative; left:10px;">
<div id="menop" onclick="location.href=\'?action=help\';">', $txt['search'] ,'</div>
</td></tr></tbody></table>
</div>'; }

echo '</div>';

	// The main content should go here.
	echo '
	<div id="content_section"><div class="frame">
		<div id="main_content_section">';

	// Custom banners and shoutboxes should be placed here, before the linktree.

	// Show the navigation tree.
	theme_linktree();

		$pass = "ok";

	if(isset($_REQUEST['state']) && $_REQUEST['state'] == $pass) {
		echo "<script>alert(\"\u00A1Gracias por instalar IkillLauncher!\");
		window.location=\"http://ikillcraft.a0001.net/index.php\";</script>";
	}

}

function template_body_below()
{
	global $context, $settings, $options, $scripturl, $txt, $modSettings;

	echo '
		</div></div>
<div id="pt">

<br>Esta p&aacute;gina ha obtenido ';

//$fp = fopen("id.txt","r");  
//Se abre el archivo contador.txt, la r de read 

//$visitas = intval(fgets($fp));  
// Se lee las visitas y se indica con intval para que se devuela un valor entero 

//$visitas++;  
//Se agregan las visitas 

//fclose($fp);  
// Se cierra el archivo 

//$fp = fopen("id2.txt","w");  
// Se abre en modo de escritura 

//fputs($fp,$visitas);  
// Se escriben las visitas 

/*include('hits.php');
echo $hits;*/

// ######################
// ### get total hits ###
// ######################
	
	$query = "SELECT SUM(count)  AS totalhits FROM hits WHERE page='Index'"; 
	 
	$result = mysql_query($query) or die(mysql_error());

	
	while($row = mysql_fetch_array($result))
	{
		$totalhits = $row['totalhits']  ;
	}

	echo number_format($totalhits, 0, ',', '.');

//echo number_format($visitas);  
// Se muestran las visitas 
echo ' visitas.<br>|| P&aacute;gina hecha por Ikillnukes. || (Skype: <h3 style="display: inline;">ikillnukes</h3>) ||<br><font color="000000">||</font> <a href="hack.php">T&eacute;rminos legales</a> <font color="000000">||</font><br><br>

	</div>';

	// Show the "Powered by" and "Valid" logos, as well as the copyright. Remember, the copyright must be somewhere!
echo'</div>
		<div id="footer_section"><ul class="reset" style="position:relative;top:50px;color:#fff;">
			<li class="copyright">', theme_copyright(), '</li>
			<li><a id="button_xhtml" href="http://validator.w3.org/check?uri=referer" target="_blank" class="new_win" title="', $txt['valid_xhtml'], '"><span>', $txt['xhtml'], '</span></a></li>
			', !empty($modSettings['xmlnews_enable']) && (!empty($modSettings['allow_guestAccess']) || $context['user']['is_logged']) ? '<li><a id="button_rss" href="' . $scripturl . '?action=.xml;type=rss" class="new_win"><span>' . $txt['rss'] . '</span></a></li>' : '', '
			<li class="last"><a id="button_wap2" href="', $scripturl , '?wap2" class="new_win"><span>', $txt['wap2'], '</span></a></li>
		</ul></div>';

	// Show the load time?
	if ($context['show_load_time'])
		echo '
		<p>', $txt['page_created'], $context['load_time'], $txt['seconds_with'], $context['load_queries'], $txt['queries'], '</p>';

	echo '
	</div></div>', !empty($settings['forum_width']) ? '
</div></div>' : '';
}

function template_html_below()
{
	global $context, $settings, $options, $scripturl, $txt, $modSettings;

	echo '
</body></html>';
}

// Show a linktree. This is that thing that shows "My Community | General Category | General Discussion"..
function theme_linktree($force_show = false)
{
	global $context, $settings, $options, $shown_linktree;

	// If linktree is empty, just return - also allow an override.
	if (empty($context['linktree']) || (!empty($context['dont_default_linktree']) && !$force_show))
		return;

	echo '
	<div class="navigate_section">
		';

	// Each tree item has a URL and name. Some may have extra_before and extra_after.
	foreach ($context['linktree'] as $link_num => $tree)
	{
		echo '
			<li style="list-style-type: none; display:inline-block;" ', ($link_num == count($context['linktree']) - 1) ? ' class="last"' : '', '>';

		// Show something before the link?
		if (isset($tree['extra_before']))
			echo $tree['extra_before'];

		// Show the link, including a URL if it should have one.
		echo $settings['linktree_link'] && isset($tree['url']) ? '
				<a href="' . $tree['url'] . '"><span>' . $tree['name'] . '</span></a>' : '<span>' . $tree['name'] . '</span>';

		// Show something after the link...?
		if (isset($tree['extra_after']))
			echo $tree['extra_after'];

		// Don't show a separator for the last one.
		if ($link_num != count($context['linktree']) - 1)
			echo ' &#187;';

		echo '
			</li>';
	}
	echo '
		
	</div>';

	$shown_linktree = true;
}

// Show the menu up top. Something like [home] [help] [profile] [logout]...
function template_menu()
{
	global $context, $settings, $options, $scripturl, $txt;

	echo '
		<div id="main_menu">
			<ul class="dropmenu" id="menu_nav">';

	foreach ($context['menu_buttons'] as $act => $button)
	{
		echo '
				<li id="button_', $act, '">
					<a class="', $button['active_button'] ? 'active ' : '', 'firstlevel" href="', $button['href'], '"', isset($button['target']) ? ' target="' . $button['target'] . '"' : '', '>
						<span class="', isset($button['is_last']) ? 'last ' : '', 'firstlevel">', $button['title'], '</span>
					</a>';
		if (!empty($button['sub_buttons']))
		{
			echo '
					<ul>';

			foreach ($button['sub_buttons'] as $childbutton)
			{
				echo '
						<li>
							<a href="', $childbutton['href'], '"', isset($childbutton['target']) ? ' target="' . $childbutton['target'] . '"' : '', '>
								<span', isset($childbutton['is_last']) ? ' class="last"' : '', '>', $childbutton['title'], !empty($childbutton['sub_buttons']) ? '...' : '', '</span>
							</a>';
				// 3rd level menus :)
				if (!empty($childbutton['sub_buttons']))
				{
					echo '
							<ul>';

					foreach ($childbutton['sub_buttons'] as $grandchildbutton)
						echo '
								<li>
									<a href="', $grandchildbutton['href'], '"', isset($grandchildbutton['target']) ? ' target="' . $grandchildbutton['target'] . '"' : '', '>
										<span', isset($grandchildbutton['is_last']) ? ' class="last"' : '', '>', $grandchildbutton['title'], '</span>
									</a>
								</li>';

					echo '
							</ul>';
				}

				echo '
						</li>';
			}
				echo '
					</ul>';
		}
		echo '
				</li>';
	}

	echo '
			</ul>
		</div>';
}

// Generate a strip of buttons.
function template_button_strip($button_strip, $direction = 'top', $strip_options = array())
{
	global $settings, $context, $txt, $scripturl;

	if (!is_array($strip_options))
		$strip_options = array();

	// List the buttons in reverse order for RTL languages.
	if ($context['right_to_left'])
		$button_strip = array_reverse($button_strip, true);

	// Create the buttons...
	$buttons = array();
	foreach ($button_strip as $key => $value)
	{
		if (!isset($value['test']) || !empty($context[$value['test']]))
			$buttons[] = '
				<li><a' . (isset($value['id']) ? ' id="button_strip_' . $value['id'] . '"' : '') . ' class="button_strip_' . $key . (isset($value['active']) ? ' active' : '') . '" href="' . $value['url'] . '"' . (isset($value['custom']) ? ' ' . $value['custom'] : '') . '><span>' . $txt[$value['text']] . '</span></a></li>';
	}

	// No buttons? No button strip either.
	if (empty($buttons))
		return;

	// Make the last one, as easy as possible.
	$buttons[count($buttons) - 1] = str_replace('<span>', '<span class="last">', $buttons[count($buttons) - 1]);

	echo '
		<div class="buttonlist', !empty($direction) ? ' float' . $direction : '', '"', (empty($buttons) ? ' style="display: none;"' : ''), (!empty($strip_options['id']) ? ' id="' . $strip_options['id'] . '"': ''), '>
			<ul>',
				implode('', $buttons), '
			</ul>
		</div>';
}

?>
