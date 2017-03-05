<?php
/*******************************************************************************
* Code Highlighting © 2010-2012, Bugo										   *
********************************************************************************
* Subs-Highlight.php														   *
********************************************************************************
* License http://creativecommons.org/licenses/by-nc-nd/3.0/deed.ru CC BY-NC-ND *
* Support and updates for this software can be found at	http://dragomano.ru    *
*******************************************************************************/

if (!defined('SMF'))
	die('Hacking attempt...');

// Code tag	
function ch_code_tag(&$codes)
{
	global $modSettings, $txt;

	if (!empty($modSettings['ch_enable']))
	{
		foreach ($codes as $tag => $dump)
			if ($dump['tag'] == 'code') unset($codes[$tag]);

		$codes[] = 	array(
			'tag' => 'code',
			'type' => 'unparsed_content',
			'content' => '<div class="codeheader">' . $txt['code'] . ': <a href="javascript:void(0);" onclick="return smfSelectText(this);" class="codeoperation">' . $txt['code_select'] . '</a></div><div class="block_code" style="font-size: ' . $modSettings['ch_fontsize'] . '"><pre><code>$1</code></pre></div>',
			'block_level' => true,
		);
		$codes[] = array(
			'tag' => 'code',
			'type' => 'unparsed_equals_content',
			'validate' => isset($disabled['code']) ? null : create_function('&$tag, &$data, $disabled', '
				global $txt, $modSettings;
				$tag[\'content\'] = "<div class=\"codeheader\">" . $txt[\'code\'] . ": " . $data[1] . " <a href=\"javascript:void(0);\" onclick=\"return smfSelectText(this);\" class=\"codeoperation\">" . $txt[\'code_select\'] . "</a></div><div class=\"block_code\" style=\"font-size: " . $modSettings[\'ch_fontsize\'] . "\"><pre><code class=\"" . $data[1] . "\">" . $data[0] . "</code></pre></div>";
			'),
		);
	}
	
	// Copyright Info
	if (isset($context['current_action']) && $context['current_action'] == 'credits')
		$context['copyrights']['mods'][] = '<a href="http://dragomano.ru/page/code-highlighting" target="_blank">Code Highlighting</a> &copy; 2010&ndash;2012, Bugo';
}

// Code Highlighting
function ch_load_theme()
{
	global $txt, $modSettings, $context, $settings;
	
	loadLanguage('Highlight');
	
	if (!isset($modSettings['ch_enable'])) updateSettings(array('ch_enable' => '1'));
	if (!isset($modSettings['ch_style'])) updateSettings(array('ch_style' => 'default'));
	if (!isset($modSettings['ch_tab'])) updateSettings(array('ch_tab' => '4'));
	if (!isset($modSettings['ch_fontsize'])) updateSettings(array('ch_fontsize' => 'x-small'));
	
	// Highlight
	if (!empty($modSettings['ch_enable']))
	{
		$i = 0;
		$tab = '';
		if (!empty($modSettings['ch_tab'])) {
			while ($i < $modSettings['ch_tab']) {
				$tab .= ' ';
				$i++;
			}
		}
	
		$context['html_headers'] .= '
	<link rel="stylesheet" type="text/css" href="' . $settings['default_theme_url'] . '/css/highlight/' . $modSettings['ch_style'] . '.css" />
	<link rel="stylesheet" type="text/css" href="' . $settings['default_theme_url'] . '/css/highlight/highlight.css" />';
	
		if (isset($_REQUEST['sa']) && $_REQUEST['sa'] == 'showoperations') return;
	
		if (!WIRELESS && !in_array($context['current_action'], array('helpadmin', 'printpage')))
			$context['insert_after_template'] .= '
		<script type="text/javascript" src="' . $settings['default_theme_url'] . '/scripts/highlight.pack.js"></script>
		<script type="text/javascript">hljs.tabReplace = "' . $tab . '"; hljs.initHighlightingOnLoad();</script>';
				
	}
		
	// Preview
	if (!empty($modSettings['ch_enable']) && in_array($context['current_action'], array('post', 'post2')))
		$context['insert_after_template'] .= '
			<script type="text/javascript">
				var previewPost = function()
				{
					if (document.forms.postmodify.elements["message"].value.lastIndexOf(\'[/code]\') != -1)
					{
						return submitThisOnce(document.forms.postmodify);
					}
				}
			</script>';

}

function ch_buffer(&$buffer)
{
	global $modSettings, $txt, $settings;
	
	$search = $replace = '';
	
	if (!empty($modSettings['ch_enable']) && isset($txt['operation_title']))
	{
		$css = "\n\t\t" . '<link rel="stylesheet" type="text/css" href="' . $settings['default_theme_url'] . '/css/highlight/' . $modSettings['ch_style'] . '.css" />
		<link rel="stylesheet" type="text/css" href="' . $settings['default_theme_url'] . '/css/highlight/highlight.css" />';
		$js = "\n\t\t" . '<script type="text/javascript" src="' . $settings['default_theme_url'] . '/scripts/highlight.pack.js"></script>
		<script type="text/javascript">hljs.initHighlightingOnLoad();</script>';
		$search = '<title>' . $txt['operation_title'] . '</title>';
		$replace = $search . $css . $js;
	}
	
	return (isset($_REQUEST['xml']) ? $buffer : str_replace($search, $replace, $buffer));
}

function ch_admin_areas(&$admin_areas)
{
	global $txt;
	
	loadLanguage('Highlight');
	
	$admin_areas['config']['areas']['modsettings']['subsections']['highlight'] = array($txt['ch_title']);
}

function ch_modifications(&$subActions)
{
	$subActions['highlight'] = 'ch_settings';
}

// Modification settings
function ch_settings()
{
	global $txt, $context, $scripturl, $modSettings;
	
	loadLanguage('Highlight');
	
	$context['page_title'] = $txt['ch_title'];
	$context['settings_title'] = $txt['ch_settings'];
	$context['post_url'] = $scripturl . '?action=admin;area=modsettings;save;sa=highlight';
	$context[$context['admin_menu_name']]['tab_data']['tabs']['highlight'] = array('description' => $txt['ch_desc']);
	
	$config_vars = array(
		array('check', 'ch_enable'),
		array('select', 'ch_style', $txt['ch_style_set']),
		array('int', 'ch_tab'),
		array('select', 'ch_fontsize', array('xx-small' => 'xx-small', 'x-small' => 'x-small', 'small' => 'small', 'medium' => 'medium'))
	);	
	
	if (!empty($modSettings['ch_enable']) && function_exists('file_get_contents')) $config_vars[] = array('callback', 'ch_example');
	
	// Saving?
	if (isset($_GET['save']))
	{
		checkSession();
		saveDBSettings($config_vars);
		redirectexit('action=admin;area=modsettings;sa=highlight');
	}
	
	prepareDBSettingContext($config_vars);
}

// Example template
function template_callback_ch_example()
{
	global $txt, $context, $settings;
	
	loadLanguage('Highlight');
	
	if (file_exists($settings['default_theme_dir'] . '/css/admin.css'))
	{
		$file = @file_get_contents($settings['default_theme_dir'] . '/css/admin.css');
		$file = parse_bbc('[code]' . $file . '[/code]');
		echo '</dl><strong>' . $txt['ch_example'] . '</strong>' . $file . '<dl><dt></dt><dd></dd>';
	}
}

?>