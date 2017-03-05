<?php
// Simple Upload for ImagesOnBoard mod by Bulakbol

/************ Warning:
* Permitting users to upload files to your system exposes us to a whole new range of security problems. 
* We can reduce most of them by allowing trusted registered members only.
*************/

function template_main()
{
	global $context,  $txt, $user_info;
	
	$num_of_uploads = 5;
	//  $maximum file size(1024 * 1024 = 1mb); (2048 * 1024 = 2mb); (3072 * 1024 = 3mb); (4096 * 1024 = 4mb);
	$max_file_size = 1024 * 1024;
	// reject other file extensions
	$file_types = array('jpg', 'gif', 'png', 'jpeg', 'pjpeg');
	$form = '';
		
		echo  '
	<table width="100%" cellpadding="0" cellspacing="0">
		<tr>
			<td valign="bottom">', theme_linktree(), '</td>
		</tr>
	</table>
	<div class="tborder">
    	<table border="0" width="100%" cellspacing="1" cellpadding="4">
    		<tr>
    			<td width="100%" class="catbg">
    				', $txt['upload_title'], ' - Welcome ', $context['user']['username'], '
    			</td>
    		</tr>
    	</table>
    </div>
	<table width="100%" class="bordercolor" border="0" cellspacing="1" cellpadding="0">
		<tr align="center" valign="middle">
			<td width="50%" class="windowbg2"><br />';
				printf($txt['maximum_allowed'], number_format(ini_get_size('post_max_size') / 1024), 
					round((ini_get_size('post_max_size') / 1048576), 0));
	
				printf($txt['maximum_upload'], number_format($max_file_size / 1024),
					round(($max_file_size / 1048576), 0)); 
  
	echo '		<form action="" method="post" enctype="multipart/form-data">
					<input type="hidden" name="submitted" value="true" />
					<input type="hidden" name="MAX_FILE_SIZE" value="', $max_file_size, '" />';

					for ($x = 0; $x < $num_of_uploads; $x++)
						$form .= $txt['select_files'] . ': <input type="file" name="file[]" size="40" /><br />';
			
					$form .= '<input type="submit" value="' . $txt['upload_title'] . '" /><br /><br />
 						' . $txt['valid_file_types'] . ': <strong>';
   			
					for ($x = 0; $x < count($file_types); $x++)
					{
						if ($x < count($file_types) - 1)
							$form .= $file_types[$x] . ', ';
						else
							$form .= $file_types[$x] . '</strong>';
					}
	echo 			$form, '
				</form><br />
			</td>
			<td width="50%" align="left" valign="top" class="windowbg2" style="padding-left: 8px;"><br />'; 
			
				if (isset($_POST['submitted']))
					uploadImages($num_of_uploads, $file_types, $max_file_size);

	echo '	</td>
		</tr>
	</table>';

	// footer
	echo '
	<div class="tborder">
    	<table border="0" width="100%" cellspacing="1" cellpadding="4">
    		<tr>
    			<td width="100%" class="catbg" align="right"><span class="smalltext">Simple Upload for ImagesOnBoard by Bulakbol</span>&nbsp;</td>
    		</tr>
    	</table>
    </div>';
}

function uploadImages($num_of_uploads, $file_types, $max_file_size)
{
	global $txt;
	
  	$uploaddir = 'Themes/default/images/ImagesOnBoard/';

  	foreach ($_FILES['file']['error'] as $key => $value)
  	{	
	  	// no spaces and invalid characters allowed
	  	$_FILES['file']['name'][$key] = strtr($_FILES['file']['name'][$key], 'ŠŽšžŸÀÁÂÃÄÅÇÈÉÊËÌÍÎÏÑÒÓÔÕÖØÙÚÛÜÝàáâãäåçèéêëìíîïñòóôõöøùúûüýÿ', 'SZszYAAAAAACEEEEIIIINOOOOOOUUUUYaaaaaaceeeeiiiinoooooouuuuyy');
	  	$_FILES['file']['name'][$key] = strtr($_FILES['file']['name'][$key], array('Þ' => 'TH', 'þ' => 'th', 'Ð' => 'DH', 'ð' => 'dh', 'ß' => 'ss', 'Œ' => 'OE', 'œ' => 'oe', 'Æ' => 'AE', 'æ' => 'ae', 'µ' => 'u'));
	  	$_FILES['file']['name'][$key] = preg_replace(array('/\s/', '/[^\w_\.\-]/'), array('_', ''), $_FILES['file']['name'][$key]);
		$_FILES['file']['name'][$key] = preg_replace('~\.[\.]+~', '.', $_FILES['file']['name'][$key]);
	  	
		if ($_FILES['file']['name'][$key] != '') 
     	{
	    	$orig_filename = $_FILES['file']['name'][$key];
     
       	   	$ext = strtolower(pathinfo($_FILES['file']['name'][$key], PATHINFO_EXTENSION));   
			$file_ext_allow = FALSE;
         	
         	// check file types
         	for($x = 0; $x < count($file_types); $x++)
	     		if ($ext == $file_types[$x])
          	   	{ 
					$file_ext_allow = TRUE; 
					break; 
				}

           	// is file extension ok?
         	if ($file_ext_allow)
         	{
				if ($value == UPLOAD_ERR_OK)	
				{
					if ($_FILES['file']['size'][$key] < $max_file_size)
					{
						// reject if file exist
						if (file_exists($uploaddir . $orig_filename))
							printf($txt['file_exists'], '<a href="' . $uploaddir . $orig_filename . '" target="_blank"><span style="color: #FF0000;">' . $orig_filename . '</span></a>');
						else
						{ 					 					
							if (move_uploaded_file($_FILES['file']['tmp_name'][$key], $uploaddir . $orig_filename))
								printf($txt['upload_successful'], '<a href="' . $uploaddir . $orig_filename . '" target="_blank"><span style="color: #FF0000;">' . $orig_filename . '</span></a>');
							else 
								printf($txt['file_cannot_move'], $orig_filename);
						}
					}
					else  
						printf($txt['file_too_big'], $orig_filename);
				}
				else
					echo $txt['upload_failed'];
         	}
         	else 
				printf($txt['invalid_file_extension'], $orig_filename);          	  
       	}
   	}
}

?> 
