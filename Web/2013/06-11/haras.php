<?php

setcookie("haras", "456", time()+40);
if($_COOKIE['haras']=="123") {
echo "El valor de la Cookie haras: ".$_COOKIE["haras"];
} else {
	header('Location: http://google.com');
}

?>