<?
require("SSI.php");

if($_REQUEST["comentario"] != "")
{

$idJuego = $_POST['idJuego'];
$comentarioJuego = $_POST['comentario'];
$ip = $_POST['ip']; 
$fecha = $_POST['fecha']; 
$UserId = $user_info['user_id'];

/*loadMemberData($UserId);
loadMemberContext($UserId);

$Avatar = "algo"; //$memberContext[$UserId]['avatar']['href'];*/


require_once(dirname(__FILE__) . '/Settings.php');
mysql_connect ($db_server, $db_user, $db_passwd) or die ('Error: ' . mysql_error());
mysql_select_db ($db_name);
$query = "INSERT INTO comentarios (id_juego, comentario, fecha, ip, userid) VALUES ('$idJuego','$comentarioJuego', '$fecha', '$ip', '$UserId')";
mysql_query($query) or die ('Error: ' . mysql_error());
header("location:okay.html"); 
} else {
echo "Debe Introducir Un Comentario.";
}

?>
