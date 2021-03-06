<?php

// What boards do we want to load?
$myboards = array(1, 2, 3);

// This is simple.. For each board, load the info and remove the junk.
foreach ($myboards as $board)
{
// With $board set as the current board this function will use it to load the board.
loadBoard();

// If we got nothing it must be an error.
if (empty($board_info))
die('Hey, ' . $board . ' is empty');

// Clean up and only use the stuff we want.
$context['boards'][$board] = array(
'id' => $board_info['id'],
'name' => $board_info['name'],
'description' => $board_info['description'],
'moderators' => array(),
);

// Moderators contain too much junk. We can fix this.
if (!empty($board_info['moderators']))
foreach ($board_info['moderators'] as $temp_mod)
$context['boards'][$board]['moderators'][] = $temp_mod['name'];
}

// Get rid of the unnecessary.
unset($myboards, $board_info);

// Header..
echo '
<html>
<head>
<title>Test Document</title>
</head>
<body>
<table border="1">';

// Now we output.
foreach ($context['boards'] as $b)
{
echo '
<tr>
<td colspan="3">', $b['name'], '</td>
</tr>
<tr>
<td></td>
<td>Desciption</td>
<td>', $b['description'], '</td>
</tr>
<tr>
<td></td>
<td>Moderators</td>
<td>', implode(', ', $b['moderators']), '</td>
</tr>';
}

// Echo footer.
echo '
</table>
</body>
</html>';

?>
