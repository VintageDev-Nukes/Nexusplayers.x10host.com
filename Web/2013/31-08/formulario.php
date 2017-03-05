<?php
$pass = "test";

if(isset($_REQUEST['pass']) && $_REQUEST['pass'] == $pass) {
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Inserta tu juego aquí</title>
<script type="text/javascript" src="funciones.js"></script>
<script src="http://code.jquery.com/jquery-1.9.0.js"></script>
<script>
var orden=1;
function clonarNodos()
{
  var id=document.getElementById("teclas2");
  var nuevos=id.cloneNode(true);
  nuevos.style.id='enlaces'+orden;
  orden++;
  id=document.getElementById("teclas");
  id.appendChild(nuevos);
}
</script>
<script>
    $(document).ready(function () {
    $('#select').change(function() {
      $('#ikill1, #ikill2').hide();
      $('#ikill' + $(this).find('option:selected').attr('id')).show();
    })
    });
</script>
<script type="text/javascript">
var add_tecla = function(){
   /* Obtener DIV de teclas */
   var div = document.getElementById("teclas");
   /* Agregar otra columna */
   div.innerHTML += '<i>Tecla: </i><input type="text" name="tecla[]" /> - <i>Acci&oacute;n:</i><input type="text" name="accion[]" /><br>';
   /* Finalizar */
   return true;
}
</script>
 <script type="text/javascript">
    function OnDropDownChange(dropDown) {
        var selectedValue = dropDown.options[dropDown.selectedIndex].value;
        document.getElementById("trat").value = selectedValue;
    }
 </script>
<link rel="stylesheet" type="text/css" href="style.css" />

<body>
<form id="form1" name="form1" method="post" action="envia.php">
  <b>Nombre del juego:</b>
    <input type="text" name="nombre" id="nombre" />
<div class="form">
        	<label for="message" style="font-weight:bold;display: block;">Descripci&oacute;n del juego:</label>
        	<textarea rows="5" onkeyup="contar(this);" cols="100" name="descripcion" id="descripcion" MAXLENGTH=500></textarea><span id="letras"  class="letras">500 caracteres</span>
        </div>

   <select name="tipo_de_juego" id="select">
      <!-- disabled="disabled" no permite seleccionar ese elemento -->
      <option value="" selected="selected" disabled="disabled">Selecciona el tipo de Juego</option>
      <option value="" disabled="disabled">---</option>
      <option value="" disabled="disabled"></option>
      <!-- Agregamos el tipo de juego -->
      <option id="1" value="flash">Flash</option>
      <option id="1" value="java">Java</option>
      <option id="1" value="unity">Unity3D</option>
      <option id="1" value="iframe">iFrame</option>
      <option id="2" value="otro">C&oacute;digo propio</option>
   </select>
<span id="ikill1"><br>  <b>Link del juego:</b>
   <input type="text" value="" name="link_juego" />
<br><b>Ancho:</b> <input type="text" name="ancho" id="ancho" MAXLENGTH=4 SIZE=1 /> px.
<br><b>Alto:</b> <input type="text" name="alto" id="alto" MAXLENGTH=4 SIZE=1 /> px.
<br></span>
<span id="ikill2"><br><br>
<b><u><i>A&ntilde;ade tu c&oacute;digo personalizado aquí:</b></u></i><br>
<textarea rows="5" cols="100" name="code" id="code" MAXLENGTH=5000 onkeyup="contar2(this);"></textarea><br>
<b><i>* Recuerda de poner el Ancho y alto, el embed correctamente, y link del juego. ;)<br>PD: El m&aacute;ximo de caracteres permitidos es 5000. A ti te quedan <span id="letras2">5000 caracteres</span>.</i></b>
<br></span>
<br>
  <b>Miniatura:</b>
    <input type="text" name="miniatura" id="miniatura" /><br>
<b>Categor&iacute;a:</b>
<select name="cat">
      <option value="" selected="selected" disabled="disabled">Selecciona la categor&iacute;a</option>
      <option value="" disabled="disabled">---</option>
      <option value="" disabled="disabled"></option>
<option value="Acción">Acci&oacute;n</option>
<option value="Animacion">Animaci&oacute;n</option>
<option value="Aventuras">Aventuras</option>
<option value="Bestias">Bestias</option>
<option value="Cartas">Cartas</option>
<option value="Chicas">Chicas</option>
<option value="Clásicos">Cl&aacute;sicos</option>
<option value="Coches">Coches</option>
<option value="Colorear">Colorear</option>
<option value="Curiosidades">Curiosidades</option>
<option value="Deportes">Deportes</option>
<option value="Estrategia">Estrategia</option>
<option value="Habilidad">Habilidad</option>
<option value="Lucha">Lucha</option>
<option value="Multijugador">Multijugador</option>
<option value="Música">M&uacute;sica</option>
<option value="Naves">Naves</option>
<option value="Plataformas">Plataformas</option>
<option value="Puzzles">Puzzles</option>
<option value="Tiempo Real MMO">Tiempo Real MMO</option>
<option value="Tiros">Tiros</option>
          </select><br>
<div class="form">
        	<label for="message" style="font-weight:bold;display: block;">Reglas del juego:</label>
        	<textarea rows="5" onkeyup="contar3(this);" cols="100" name="reglas"  id="descripcion"></textarea><span id="letras3" class="letras">500 caracteres</span>
        </div>
<b>Controles:</b><br>
<input type="button" value="A&ntilde;adir tecla" onclick="clonarNodos();" />
   <div style="display:none;"><div id="teclas2">
      <i>Tecla: </i><input type="text" name="tecla[]" /> - <i>Acci&oacute;n:</i><input type="text" name="accion[]" /><br>
   </div></div>
<table style="vertical-align: top;"><tbody><tr><td>
   <div id="teclas">
      <i>Tecla: </i><input type="text" name="tecla[]" /> - <i>Acci&oacute;n:</i><input type="text" name="accion[]" /><br>
   </div></td><td><b><u>Teclas especiales:</u></b><br><br>Espacio (espacio) = <img src="ico/espacio.png" /><br>Click derecho (der) = <img src="ico/der.png" /><br>Click izquierdo (izq) = <img src="ico/izq.png" /><br>Mover rat&oacute;n (mover) = <img src="ico/mover.png" /><br>Shift = <img src="ico/shift.png" /><br>Alt = <img src="ico/alt.png" /><br>Control (ctrl) = <img src="ico/ctrl.png" /></td><td>Flechas de movimiento (flechas) = <img src="ico/flechas.png" /><br>Enter = <img src="ico/enter.png" /><br>Letras = <img src="ico/letras.png" /><br>Letras y flechas (letrasflechas) = <img src="ico/letrasflechas.png" /></td></tr></tbody></table>
<br><br>
<font size="3px">Captcha:</font><br>
<img src="captcha.php"/><br>
<input type="text" name="vercode" /><br><br>
<input type="submit" value="Enviar" />
</form>
</body>
</html>
<?
} else {
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

