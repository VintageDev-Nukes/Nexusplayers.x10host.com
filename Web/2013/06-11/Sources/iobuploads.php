<?php
/*** Simple Upload for ImagesOnBoard mod  by Bulakbol */

if (!defined('SMF'))
	die('Hacking attempt...');

Function iobuploads()
{
	global $boardurl, $txt, $scripturl, $context;

	isAllowedTo('manage_boards');
		
	LoadTemplate('iobuploads');
	
	$context['page_title'] = $txt['upload_title'];
	$context['linktree'][] = array(
		'url' => $scripturl . '?action=iobuploads',
		'name' => $txt['upload_title']
	);
}

function ini_get_size($sName)
{
    $sSize = ini_get($sName);
    $sUnit = substr($sSize, -1);
    $iSize = (int) substr($sSize, 0, -1);
    switch (strtoupper($sUnit))
    {
        case 'Y' : $iSize *= 1024; // Yotta
        case 'Z' : $iSize *= 1024; // Zetta
        case 'E' : $iSize *= 1024; // Exa
        case 'P' : $iSize *= 1024; // Peta
        case 'T' : $iSize *= 1024; // Tera
        case 'G' : $iSize *= 1024; // Giga
        case 'M' : $iSize *= 1024; // Mega
        case 'K' : $iSize *= 1024; // kilo
    };
    return $iSize;
}

?>