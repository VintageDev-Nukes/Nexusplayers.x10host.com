<?php
$pass = "test";

if(isset($_REQUEST['pass']) && $_REQUEST['pass'] == $pass) {
?>

<html>
<head>

<style>
body {width:395px; height:300px;margin:0;font-family:arial;font-size:12px;overflow:none;}
#fondo {background-color: rgba(255, 255, 255, 0.6);width:325px;position:absolute;top:0px;margin-left:25px;height:100%;padding:10px;
-ms-filter: "progid:DXImageTransform.Microsoft.gradient(GradientType=1, StartColorStr='#99FFFFFF', EndColorStr='#99FFFFFF')";
filter: progid:DXImageTransform.Microsoft.Gradient(GradientType=1, StartColorStr='#99FFFFFF', EndColorStr='#99FFFFFF');
zoom: 1!important;}
#fondoimg {background:url('11_image.jpg') no-repeat left top; width:395px;height:100%; background-size:100%;
filter: progid:DXImageTransform.Microsoft.AlphaImageLoader( src='11_image.jpg', sizingMethod='scale');
    -ms-filter: "progid:DXImageTransform.Microsoft.AlphaImageLoader( src='11_image.jpg', sizingMethod='scale')";}
</style>
</head>
<body>
<div id="fondoimg">
  <div id="fondo"><marquee behavior="scroll" direction="up" onmouseover="this.stop();" onmouseout="this.start();" scrollamount="1"><center>
<h2><u>Cr&eacute;ditos</u></h2>

<h3>Creador:</h3>
<b>Ikillnukes</b><br>

<h3>Dise&ntilde;o gr&aacute;fico:</h3>
<b>Ikillnukes & Google</b><br>

<h3>Colaboradores:</h3>

<b>Elektro H@cker</b> - <i>Creador de algunas "funciones genericas" y solventador de algunos bugs.</i><br>
<b>Black M4ster (BM4)</b> - <i>Solventador de un bug.</i><br>
<b>OmarHack</b> - <i>Aconsejador.</i><br>
<b>Drvy | BSM</b> - <i>Creador del concurso de EHN.</i><br>
<b>Pipe01</b> - Por darme la idea inicial de hacer este Launcher.<br>

</center></marquee>
</div>
</div>
</body>
</html>

<?
}
else {
  if(isset($_REQUEST['pass']) && $_REQUEST['pass'] != $pass) {
    echo '<center style="position:relative; top:50%;"><b>Contrase&ntilde;a incorrecta. Intentelo de nuevo.</b><br>';
  }
?>
<center style="position:relative; top:50%;">
Por favor, indroduzca una contrase&ntilde;a:<br>
<form method="get">
<input type="password" name="pass" />
<input type="submit" value="Entrar" />
</form>
</center>
<?php
}
?>
