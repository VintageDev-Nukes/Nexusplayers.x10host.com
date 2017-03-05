<?

if(empty($_POST["id"]) && empty($_POST["comentario"])) {
if($_POST["comentario"] != "")
{
$resultCom2 = mysql_query("SELECT id FROM comentarios ORDER BY id DESC LIMIT 0,1");
$rowCom2 = mysql_fetch_array($resultCom2);
$con = $rowCom2["id"];
mysql_free_result($resultCom2);

$con++;
$idJuego = $_POST["id"];
$comentarioJuego = $_POST["comentario"];
$ip = $_SERVER['REMOTE_ADDR']; 
$fecha = date( 'd-m-Y H:i:s'); 

$Nick = $_REQUEST['nick'];
$UserId = $_REQUEST['userid'];
$Avatar = $_REQUEST['avatar'];


require_once(dirname(__FILE__) . '/Settings.php');
mysql_connect ($db_server, $db_user, $db_passwd) or die ('Error: ' . mysql_error());
mysql_select_db ($db_name);
$query = mysql_query("INSERT INTO comentarios (id, id_juego, comentario, fecha, ip, nick, avatar, userid) VALUES
('$con','$idJuego','$comentarioJuego', '$fecha', '$ip', '$Nick', '$Avatar', '$UserId')");
mysql_query($query) or die ('Error: ' . mysql_error());
header("location:okay.html"); 
} else
{
echo "Debe Introducir Un Comentario.";
}
}
?>
