<?php

echo '<link href="ratingfiles/ratings.css" rel="stylesheet" type="text/css" />
<script src="ratingfiles/ratings.js" type="text/javascript"></script>';

function addEstrella($id, $styles) {
	
	return '<div style="'.$styles.'" class="srtgs" id="rt_game'.$id.'"></div>';
}

?>