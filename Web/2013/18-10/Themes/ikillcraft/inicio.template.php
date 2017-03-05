<?php require_once("SSI.php"); ?>
<?php

if (!empty($_POST['action']) && $_POST['action'] == "checkdata") {
    if ($_SESSION['tmptxt'] == $_POST['tmptxt']) {
    $_SESSION['listo'] = true; // En caso de ser Iguales establecer la sesion "listo"
    header('Location: privada.php');
    exit;
} else // En caso de que la Pass no sea Correcta lanzamos un error con JavaScript.
{
echo '
<script type="text/javascript">
<!--
alert(\'El codigo es erroneo.\')
//-->
</script>';
}
}

function template_main()
{

	// Make sure we have all the global variables we need
	global $txt, $user_info, $sourcedir, $modSettings, $context, $settings, $scripturl;

echo '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Free Minecraft Premium Accounts!</title>
<style>
.navigate_section {display:none;}
#mainbar {display:none;}
#content_section {top:0px;}
.reset {top:10px!important;}
.all2 {margin-bottom:0px!important;}
.frame {padding-bottom:70px;!important}
</style>
<script src="http://code.jquery.com/jquery-1.9.0.js"></script>
<script type="text/javascript">
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

        slides = $(\'#my_slider\').children();
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
    $(\'.smart_gallery\').MySlider(60000);
});
</script>
</head>
<body>
<center>
<div class="example">
    <h3 style="position:relative;top:10px;">Publicidad:</h3><br><br>
    <ul id="my_slider">
      <li><a href="http://minecraftviewer.com/servers/2278772/view" target="_blank"><img src="http://cache.multiplayuk.com/b/1-2278772-560x95-6-FF5519-FFFFFF.png" alt="Server Banner" style="border:0;width:560px;height:95" /></a><br><b>|| GamesCraftSsM By DarkGalaxy360 || 15/7 || NO PREMIUM || NO HAMACHI || IP: 88.1.204.51:25565 ||</b></li>
      <li><a href="http://minecraftviewer.com/servers/2278802/view" target="_blank"><img src="http://cache.multiplayuk.com/b/1-2278802-560x95-6-FF5519-FFFFFF.png" alt="Server Banner" style="border:0;width:560px;height:95" /></a><br><b>|| Min3CoD By alvaromw || 24/7 || NO PREMIUM || NO HAMACHI || IP: 5.39.19.0:25785 ||</b></li>
    </ul>
La publicidad cambia cada minuto. <a href="#" onclick="show(\'content\');" title="Cuelga aqu&iacute; tu Servidor.">&#191;Quieres tener aqu&iacute; tu Servidor? Haz clic en este enlace.</a></div>

<div style="height:502px;position: relative;
left: 3px;">
<table style="
    position: relative;
    top: -2px;
"><tbody><tr><td><br><h2 style="padding-bottom:10px;">NexusPlayers! Chat:</h2><script id="sid0020000038158231817">(function() {function async_load(){s.id="cid0020000038158231817";s.src=\'http://st.chatango.com/js/gz/emb.js\';s.style.cssText="width:500px;height:500px;";s.async=true;s.text=\'{"handle":"nexusplayers","styles":{"a":"ffffff","b":100,"c":"000000","d":"000000","f":77,"i":77,"k":"000000","l":"ffffff","m":"a0a0a0","o":77,"q":"ffffff","r":100,"usricon":0}}\';var ss = document.getElementsByTagName(\'script\');for (var i=0, l=ss.length; i < l; i++){if (ss[i].id==\'sid0020000038158231817\'){ss[i].id +=\'_\';ss[i].parentNode.insertBefore(s, ss[i]);break;}}}var s=document.createElement(\'script\');if (s.async==undefined){if (window.addEventListener) {addEventListener(\'load\',async_load,false);}else if (window.attachEvent) {attachEvent(\'onload\',async_load);}}else {async_load();}})();</script>
</td><td style="position: relative; left: -6px;width:260px;padding-top:35px;"><div style="padding-left: 10px; -webkit-border-top-right-radius: 3px; -webkit-border-bottom-right-radius: 3px; -moz-border-radius-topright: 3px; -moz-border-radius-bottomright: 3px; border-top-right-radius: 3px; border-bottom-right-radius: 3px; height:498px!important; border:1px #fff solid; border-left:2px #fff solid;"><h3 style="
    padding-top: 5px;
"><i>Normas de la chat:</i></h3><br><span class="ShineStatus rojo"></span> No se permite el spam aqu&iacute;. A parte, todos los links est&aacute;n censurados, as&iacute; que no se la jueguen.<br>
<span class="ShineStatus rojo"></span> No insultar a los dem&aacute;s. Ni meterse con nadie. Ni ser racista.<br><span class="ShineStatus rojo"></span> No se permite el flood (env&iacute;o de mensajes masivos sin ning&uacute;n significado).<br><br><b>Todo aquel que no cumpla estas normas ser&aacute; sancionado. Ya depende de la gravedad, ser&aacute; m&aacute;s tiempo o menos, o por el contrario, indefinidamente, en caso de que sea muy grave la falta.</b><br><br><h3><i>Recomendaciones:</i></h3><br><span class="ShineStatus verde"></span> No pidas rango, como admin o mod, g&aacute;natelo.<br><span class="ShineStatus verde"></span> <a href="http://'.$_SERVER['SERVER_NAME'].'/index.php?action=register" title="Registro">Reg&iacute;strate</a> en el foro para disfrutar de toda su funcionalidad.</div></td></tr></tbody></table>
</div>
<br><br><br>
</center>
</body>
</html>';

}

?>		



