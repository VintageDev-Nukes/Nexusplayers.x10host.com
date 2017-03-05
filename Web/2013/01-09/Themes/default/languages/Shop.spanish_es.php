<?php
/**********************************************\
| SMFSHOP (Shop MOD for Simple Machines Forum) |
|         (c) 2006 DanSoft Australia           |
|       http://www.dansoftaustralia.net/       |
\**********************************************/
 
//File: Shop.spanish.php
//      Archiv&oacute; de lenguaje de la tienda
 
// VERSION: 2.3 (Build 11)
// Translation by pakri - http://www.daniel15.com/forum/index.php?action=profile;u=409
 
// If there's a '%s' anywhere in this file, it means that that is a changeable parameter. For
// example, it could be an amount of credits.
 
// Headings and stuff used in the admin panel
$txt['cannot_shop_admin'] = "Lo siento, no puedes tener acceso! Solo administradores lo tienen!";
$txt['shop_admin'] = "Administraci&oacute;n de la tienda";
$txt['shop_admin_general'] = "Configuraci&oacute;n General";
$txt['shop_admin_items'] = "Administraci&oacute;n de objetos";
$txt['shop_admin_items_add'] = "Agregar objeto";
$txt['shop_admin_items_edit'] = "Editar/borrar objeto";
$txt['shop_admin_items_addedit'] = "Agregar/editar/borrar Objeto";
$txt['shop_admin_restock'] = "Surtir Objetos";
$txt['shop_admin_usergroup'] = "Funciones de grupos de usuarios";
 
// Short text strings 
$txt['shop'] = "Tienda";
$txt['shop_action'] = "Acci&oacute;n";
$txt['shop_add'] = "Agregar";
$txt['shop_add_another'] = "Agregar otro objeto";
$txt['shop_add_item'] = "Agregar un objeto";
$txt['shop_added_item'] = "Agregar ID del objeto";
$txt['shop_amount'] = "Cantidad";
$txt['shop_amount_to_send'] = "Cantidad a enviar";
$txt['shop_asc'] = "Ascenso";
$txt['shop_back'] = "&lt; atr&aacute;s";
$txt['shop_bank'] = "Banco";
$txt['shop_bank_deposit'] = "Deposito";
$txt['shop_bank_withdraw'] = "Retirarse";
$txt['shop_bought_for'] = "Comprar para %s"; //%s = el precio, eg. Comprando para $100
$txt['shop_buy'] = "Comprar";
$txt['shop_buynow'] = "Comprar ahora!";
$txt['shop_currency_prefix'] = "prefijo de la moneda";
$txt['shop_currency_suffix'] = "Sufijo de la moneda ";
$txt['shop_database_version'] = "Versi&oacute;n de la Base de datos";
$txt['shop_delete'] = "Borrar";
$txt['shop_deleted'] = "Borrar objeto!";
//Don't get confused here. shop_description means Description, and shop_desc means Descending
$txt['shop_description'] = "Descripci&oacute;n";
$txt['shop_desc'] = "Descender";
$txt['shop_edit'] = "editar";
$txt['shop_edit_item'] = "Editar Objeto";
$txt['shop_editing_item'] = "Editar ID del objeto";
$txt['shop_image'] = "Imagen";
$txt['shop_interest'] = "Inter&eacute;s";
$txt['shop_inventory'] = "Inventario";
$txt['shop_item_configure'] = "Por favor configurar el objeto de abajo:";
$txt['shop_item_to_send'] = "Objeto a enviar";
$txt['shop_itemsperpage'] = "objetos mostrados por pag";
$txt['shop_membergroup'] = "grupo de usuarios";
$txt['shop_member_name'] = "nombre de usuario";
$txt['shop_member_id'] = "Usuario ID";
$txt['shop_name'] = "Nombre";
$txt['shop_need'] = "Usted necesita %s";
$txt['shop_next'] = "siguiente --&gt;";
$txt['shop_next2'] = "siguiente &gt;";
$txt['shop_noway'] = "NO, volver atr&aacute;s!";
$txt['shop_owners'] = "Quien tienen este objeto?";
$txt['shop_per_new_post'] = "por nuevo Respuesta";
$txt['shop_per_new_topic'] = "por nuevo Tema";
$txt['shop_pocket'] = "Bolsillo";
$txt['shop_price'] = "Precio";
$txt['shop_restock_lessthan'] = "Surtir todo objeto que este menor";
$txt['shop_restock_amount'] = "Cantidad a agregar al stock";
$txt['shop_saved'] = "Guardar Cambios!";
$txt['shop_save_changes'] = "Guardar Cambios";
$txt['shop_send_item'] = "Enviar un objeto";
$txt['shop_senditem'] = "Enviar objeto";
$txt['shop_send_message_to_give'] = "Mensaje a dar a miembro";
$txt['shop_send_money'] = "Enviar dinero";
$txt['shop_settings_general'] = "Configuraci&oacute;n General ";
$txt['shop_settings_currency'] = "Pr&oacute;xima Configuraci&oacute;n";
$txt['shop_soldout'] = "Vendido todo!";
$txt['shop_stock'] = "Stock";
$txt['shop_stoptrade'] = "Para el negocio";
$txt['shop_subtract'] = "Restar";
$txt['shop_sure_delete'] = "Seguro que deseas suprimir los puntos siguientes:";
$txt['shop_trade'] = "Centro Comercial";
$txt['shop_tradeitem'] = "Vender objeto";
$txt['shop_trade_saleby'] = "Se vende por %s";
$txt['shop_trading'] = "Se comercia por %s";
$txt['shop_transfer_success'] = "Objeto transferido con &eacute;xito!";
$txt['shop_unusable'] = "Inutilizable!";
$txt['shop_use'] = "Usar Objeto";
$txt['shop_users_own_item'] = "%s usuarios que poseen este objeto '%s':";
$txt['shop_view_all'] = "Ver todos los miembros...";
$txt['shop_version_info_header'] = "versi&oacute;n de la Informaci&oacute;n";
$txt['shop_version_number'] = "Numero de la versi&oacute;n";
$txt['shop_version_reldate'] = "Fecha de lanzamiento";
 
 
// These are also short strings, but require some of the strings above.
// This is so if you change the name of the shop or bank (for example), you only need to change it once
$txt['shop_admin_inventory'] = "Miembros' {$txt['shop_inventory']}";
$txt['shop_back2admin'] = "Atr&aacute;s a {$txt['shop_admin']}";
$txt['shop_back2bank'] = "Atr&aacute;s al {$txt['shop_bank']}";
$txt['shop_back2inv'] = "Atr&aacute;s a tu {$txt['shop_inventory']}";
$txt['shop_bankinterest'] = "{$txt['shop_bank']} {$txt['shop_interest']}";
$txt['shop_bank_minDeposit'] = "M&iacute;nimo {$txt['shop_bank_deposit']}";
$txt['shop_bank_minWithdraw'] = "M&iacute;nimo {$txt['shop_bank_withdraw']}";
$txt['shop_bank_welcome'] = "&iexcl;Bienvenido al {$txt['shop_bank']} de la {$txt['shop']}!";
$txt['shop_count_points'] = "Cuenta {$txt['shop']} puntos";
$txt['shop_deleted_item'] = "borrar {$txt['shop_inventory']} objeto #%s";
$txt['shop_edit_inventory'] = "Editar a un miembro del {$txt['shop_inventory']}";
$txt['shop_image_width'] = "{$txt['shop_image']} Anchura";
$txt['shop_image_height'] = "{$txt['shop_image']} Altura";
$txt['shop_edit_member'] = "Editar ID de miembro %s (%s)'s {$txt['shop_inventory']}:";
$txt['shop_invother'] = "Ver el {$txt['shop_inventory']} de otro miembro";
$txt['shop_money_in_bank'] = "Dinero en {$txt['shop_bank']}";
$txt['shop_money_in_pocket'] = "Dinero en {$txt['shop_pocket']}";
$txt['shop_please_delete'] = "Si, por favor {$txt['shop_delete']} el";
$txt['shop_reg_bonus'] = "Cantidad por el registro";
$txt['shop_richest_bank'] = "10 mas ricos ({$txt['shop_bank']})";
$txt['shop_richest_pocket'] = "10 mas ricos ({$txt['shop_pocket']})";
$txt['shop_trade_enable'] = "{$txt['shop_trade']} permitido";
$txt['shop_trade_welcome'] = "&iexcl;Bienvenido al {$txt['shop']} {$txt['shop_trade']}!";
$txt['shop_welcome'] = "&iexcl;Bienvenido a la {$txt['shop']}!";
$txt['shop_view_all2'] = "ver todos los miembros ({$txt['shop_bank']})";
$txt['shop_viewing_inv'] = "Ver {$txt['shop_inventory']} de miembro ID %s (%s)";
$txt['shop_yourinv'] = "Tu {$txt['shop_inventory']}";
 
//text that requires text, that requires text (in other words, text that requires text
//in the section above
$txt['shop_changed_money'] = "Cambiar usuario ID %s's {$txt['shop_money_in_pocket']} a %s y {$txt['shop_money_in_bank']} a %s!";
 
// Longer phrases
$txt['shop_add_item_message'] = " Para agregar un nuevo objeto a tu tienda, utilizar por favor la forma abajo. Elige el objeto que deseas agregar a tu {$txt['shop']}, y haz click '{$txt['shop_next']}':";
$txt['shop_add_item_message2'] = "<i>Tu puedes agregar el objeto '%s' a tu tienda. Para la ayuda con este objeto, por favor email del autor: %s &lt;<a href='mailto:%3\$s?subject=%1\$s item'>%3\$s</a>&gt;, o visita la web <a href='%4\$s'>%4\$s</a></i>";
$txt['shop_bank_welcome_full'] = "{$txt['shop_bank_welcome']} Aqu&iacute;, puedes almacenar con seguridad tus cr&eacute;ditos y ganar el inter&eacute;s para ellos!";
$txt['shop_bank_disableMin'] = " Para permitir que el usuario deposite o retire cualquier cantidad, introducir por favor â0â como el m&iacute;nimo ";
$txt['shop_bought_item'] = " Compraste con &eacute;xito un '%s'. Para usarlo, click en el '{$txt['shop_yourinv']}' link de la derecha.";
$txt['shop_cannot_open_items'] = "ERROR: No puedes abrir Sources//shop/item dir!";
$txt['shop_cannot_open_images'] = "ERROR: No puedes abrir Sources/shop/item_images dir!";
$txt['shop_count_points_msg'] = "Los miembros reciben {$txt['shop']} creditos por mensaje en este foro.";
$txt['shop_current_bank'] = "Tienes actualmente %s en el {$txt['shop_bank']} y %s en tu {$txt['shop_pocket']}. A usted le gustas {$txt['shop_bank_deposit']} o {$txt['shop_bank_withdraw']} dinero?";
$txt['shop_deposit'] = "{$txt['shop_bank_deposit']} procesando! Ahora usted tiene %s en el {$txt['shop_bank']} y %s en su {$txt['shop_pocket']}.";
$txt['shop_deposit_small'] = "ERROR: &iexcl;Debes depositar por lo menos %s!";
$txt['shop_dont_have_much'] = "ERROR: &iexcl;No tienes tanto dinero!";
$txt['shop_dont_have_much2'] = "ERROR: &iexcl;No tienes tanto dinero en el {$txt['shop_bank']}!";
$txt['shop_edit_message'] = "Abajo parecen el listado de objetos en tu {$txt['shop']}. Para editar, presiona '{$txt['shop_edit']}' link al lado. Para borrar objeto, click en la caja al lado del objeto, y presiona el '{$txt['shop_delete']}' bot&oacute;n en el fondo de la pagina.";
$txt['shop_edit_member_inventory'] = "Por favor escribir nombre del usuario que desea editar {$txt['shop_inventory']} de, y hacer click '{$txt['shop_next']}':";
$txt['shop_give_negative'] = "Intenta de nuevo, Pero como puedes poner una cantidad negativa...? Intentabas robar, no es asi? ;)";
//Please keep the link to DanSoft Australia here...
global $modSettings; 
$txt['shop_guest_message'] = "Lo siento, los invitados no pueden tener acceso a la tienda!<br />por favor registrate en el foro para poder tenerlo<br /><br />Powered by SMFShop version {$modSettings['shopVersion']} (Build {$modSettings['shopBuild']}) &copy; 2005, 2006 <a href='http://www.dansoftaustralia.net/'>DanSoft Australia</a><br /><br /><a href='http://www.hatix.col.nu/'>Traducido al espaÃ±ol</a><br /><br />";
$txt['shop_input'] = "Este objeto requiere una entrada adicional. Por favor complete el cuadro de abajo, y presione '{$txt['shop_use']}'";
$txt['shop_invalid_send_amount'] = "ERROR: por favor entre una cantidad valida!";
$txt['shop_invother_message'] = "Por favor entre el nombre o ID del mienbro que desea ver {$txt['shop_inventory']} de, y presione '{$txt['shop_invother']}'";
$txt['shop_item_delete_error'] = "ERROR: Por favor elija algo para borrar!";
$txt['shop_item_error'] = "ERROR: no se puede crear en este caso  '%s' objeto!<br />";
$txt['shop_item_notice'] = "las imagenes que se almacenan en Sources/shop/item_images/. sientese libre de agregar mas imagenes!";
$txt['shop_member_no_exist'] = "ERROR: el miembro que buscas: ('%s') no existe!";
$txt['shop_membergroup_desc'] = "Aqu&iacute;, puede agregar o quitar dinero de los miembros, dependiendo del grupo en el que se encuentren. Por favor llena los campos y presiona  '{$txt['shop_next']}' el boton.";
$txt['shop_name_desc_match'] = "Cerciorese de los ambios arriba para que reflejen abajo.";
$txt['shop_not_enough_money'] = "ERROR: No tiene suficiente dienero para este objeto (necesita %s mas)";
$txt['shop_no_negative'] = "ERROR: Tu no puedes {$txt['shop_bank_withdraw']} o {$txt['shop_bank_deposit']} un valor negativo";
$txt['shop_no_sale'] = "ERROR: el objeto no esta para el comercio!";
$txt['shop_pre-suf_confuse'] = "Algunas persona consideran confusa. Basicamente, Prefijo se esta mostrado <u>Antes</u> el numero, y sufijo se esta mostrando <u>despues</u> del numero. Eg. Prefijo de '$' y sufijo de ' creditos' significaria '$100 creditos'";
$txt['shop_send_items_message'] = "Puedes dar un objeto a alguien, sin que ellos tengan que pagar el. Si desea vender el objeto, Por favor utilizar el centro comercial. Nota ningun objeto que se encuentre en el centro comercial no se enumerado aqu&iacute;.";
$txt['shop_send_money_message'] = "Cuando quieras dar dinero a alguien, el recibira un e-mail mensinando que le mandaste un poco de dinero. Si desea unir un mensaje al e-mail, por favor escribelo 'Mensaje para miembro que recibe' en el cuadro de abajo.";
$txt['shop_soldout_full'] = "ERROR: Este objeto esta agotado!";
$txt['shop_sort'] = "<i>Clasificado actualmente %s, %s</i>.&nbsp;&nbsp; <b>cerca:</b>";
$txt['shop_successfull_send'] = "%s enviado con exito %s";
$txt['shop_trade_bought_item'] = "Compraste con exito '%s' por %s. para usar has click en '{$txt['shop_yourinv']}'.";
$txt['shop_trade_cancelled'] = "Tu objeto se enumera no mas {$txt['shop_trade']}.";
$txt['shop_trade_list'] = "Los objetos enumerado en esta lista esta actualmente en el comercio.";
$txt['shop_trade_message'] = "Por favor escriba la cantida por la que desea negociar este objeto. Haz click una vez '{$txt['shop_next']}', tu articulo esta enumerado {$txt['shop_trade']}, y otros miembros podran comprar este objeto<br /><br /><b>NOTA: </b>Mientras tu objeto se enumera{$txt['shop_trade']}, usted <b>no</b> puede utilizarlo!";
$txt['shop_trade_negative'] = "ERROR: No puedes negociar una objeto con una catidad negativa!";
$txt['shop_trade_success'] = "Tu peticion es aceptada. Tu objeto aparecera en la lista como {$txt['shop_trade']}, y otro miembros podran comprar tu articulo.";
$txt['shop_trade_welcome_full'] = "{$txt['shop_trade_welcome']} Ãste es un lugar en donde puedes comprar objetos de diversos miembros, y los objetos de la venta que tienes actualmente.";
$txt['shop_unable_connect'] = "&iexcl;No se puede conectar con DanSoft Australia website para comprovar nueva version!";
$txt['shop_use_others_item'] = "&iquest;Qu&eacute; est&aacute;s haciendo? &iexcl;&iexcl;&iexcl;Esto NO es tuyo!!! Para de robar, en SMFShop es mas elegante ;)";
$txt['shop_use_others_item2'] = "&iquest;Qu&eacute; est&aacute;s haciendo? &iexcl;&iexcl;&iexcl;Esto NO es tuyo!!! And you even went to inv3!! Bien, puede ser que intentes otra vezâ¦ Para de robar, en SMFShop es mas elegante ;)";
$txt['shop_wanna_trade'] = "&iquest;Desear negociar tus objetos? Haz click '{$txt['shop_yourinv']}'en el lado izquierdo de la pantalla, y click '{$txt['shop_tradeitem']}' link en el siguiente objeto. El objeto aparecera aqu&iacute;, y los usuarios podran comprar tu objeto. Recibiaras una notificacion cuando alguien compre tu objeto.";
$txt['shop_welcome_full'] = "&iexcl;Bienvenido a la {$txt['shop']}! Aqu&iacute; puede 'comprar' objetos con los creditos que ha conseguido por participar en el foro.";
$txt['shop_withdraw'] = "{$txt['shop_bank_withdraw']} Procesado! Usted ahora tiene %s en su {$txt['shop_pocket']} y %s en el {$txt['shop_bank']}.";
$txt['shop_withdraw_small'] = "ERROR: Debes retirar por lo menos %s!";
 
// Instant Messages, email and stuff like that
$txt['shop_im_sendmoney_subject'] = "%s enviado a ti %s";
$txt['shop_im_sendmoney_message'] = "%s enviado a ti %s. cualquier cosa puede haber un mensaje explicando por que:\r\n\r\n %s\r\n que tengas un buen d&iacute;a,\r\n -- Equipo del Foro";
$txt['shop_im_senditem_subject'] = "has enviado un objeto!";
$txt['shop_im_senditem_message'] = "%s te a enviado %s. cualquier cosa puede haber un mensaje explicando por que :\r\n\r\n %s\r\n que tengas un buen d&iacute;a,\r\n âEquipo del Foro";
 
$txt['shop_im_trade_subject'] = "Comercio su %s objeto";
$txt['shop_im_trade_message'] = "Felicidades! [url={$scripturl}?action=profile;u=%s]%s[/url] has comprado %s de %s.\r\n\r\n Que tengas un buen d&iacute;a,\r\n -- Equipo del Foro";
?> 