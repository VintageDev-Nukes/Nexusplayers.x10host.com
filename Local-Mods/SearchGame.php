<?php

// First of all, we make sure we are accessing the source file via SMF so that people can not directly access the file. 
if (!defined('SMF'))
	die('Hack Attempt...');

function SearchGame()
{

	// Second, give ourselves access to all the global variables we will need for this action
	global $context, $scripturl, $txt, $smcFunc;

	// Third, Load the specialty template for this action.
	loadTemplate('SearchGame');

	//Fourth, Come up with a page title for the main page
	$context['page_title'] = $txt['youraction_PageTitle'];
	$context['page_title_html_safe'] = $smcFunc['htmlspecialchars'](un_htmlspecialchars($context['page_title']));


	//Fifth, define the navigational link tree to be shown at the top of the page.
	$context['linktree'][] = array(
  		'url' => $scripturl. '?action=searchgame',
 		'name' => $txt['searchgame'],
	);

	//Sixth, begin doing all the stuff that we want this action to display
	//    Store the results of this stuff in the $context array.  
	//    This action's template(s) will display the contents of $context.
	$context['youraction_Head'] = $txt['searchgame_Head'];
              
}

?>