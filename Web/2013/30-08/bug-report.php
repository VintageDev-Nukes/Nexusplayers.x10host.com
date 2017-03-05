<?php
$pass = "test";

if(isset($_REQUEST['pass']) && $_REQUEST['pass'] == $pass) {
?>

<!DOCTYPE html>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<head>

<style>
body {width:563px; height:300px;margin:0;font-family:arial;font-size:12px;}
</style>
</head>
<body>
<iframe id="JotFormIFrame" onload="window.parent.scrollTo(0,0)" allowtransparency="true" src="http://form.jotformeu.com/form/31793077686367" frameborder="0" style="width:100%; height:727px; border:none;" scrolling="no"></iframe>
<script type="text/javascript">window.handleIFrameMessage = function(e) {var args = e.data.split(":");var iframe = document.getElementById("JotFormIFrame");if (!iframe)return;switch (args[0]) {case "scrollIntoView":iframe.scrollIntoView();break;case "setHeight":iframe.style.height = args[1] + "px";break;}};if (window.addEventListener) {window.addEventListener("message", handleIFrameMessage, false);} else if (window.attachEvent) {window.attachEvent("onmessage", handleIFrameMessage);}</script>
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
