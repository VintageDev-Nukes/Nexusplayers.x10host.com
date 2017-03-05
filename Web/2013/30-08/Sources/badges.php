<?php

// First of all, we make sure we are accessing the source file via SMF so that people can not directly access the file. 
if (!defined('SMF'))
	die('Hack Attempt...');

function Check_Badges()
{

	// Second, give ourselves access to all the global variables we will need for this action
	global $context, $scripturl, $txt, $smcFunc, $user_info;

		$user_id = $user_info['id'];
		$post_count = $user_info['posts'];
		$posts_created_count = $context['num_topics'];
		$comment_count = $context['num_posts'];
		$karma_count = $context['member']['karma']['good'] - $context['member']['karma']['bad'];
		//$good_karma = $context['member']['karma']['good'];
		//$bad_karma = $context['member']['karma']['bad'];
		$karma_per_day = $karma_count / days_del_foro();
		$online_time = $context['time_logged_in'] / 86400;
		//$consecutive_days = ;
		$member_for = (time() - $context['member']['registered']) / 86400;
		$money = $context['user']['money'];
		$bank_money = $context['user']['moneyBank'];
		$polls_made = $context['num_polls'];
		$votes_made = $context['num_votes'];
		//$so = ;
		//$time_between_two_posts = ;
		//$awards_in_a_day = ;
		//$posts_in_a_day = ;
		//$total_awards = ;
		//$posts_per_day = ; //Durante x meses $context['member']['posts_per_day']
		$posts_in_a_board = $context['board_activity']['posts'];
		//$messages_in_offtopic = ;
		//$registered_user = ;
		//$first_log = ;
		//$log_times = ;
		$friends_number = count($user_info['buddies']);
		//$first_friend = ;
		$ignored_number = count($user_info['ignoredusers']);
		//$first_ignored = ;

		//Badges por hacer:
		//webmaster, firma, buscar, buscar_x_veces, invisible, avatar, cumple, localizacion, género, full_pm_board, completar perfil, comprar algo en la tienda, usar x items de la tienda, login_times, logout_times, premium_account, like_facebook_page, follow_owner_twitter, play_minecraft_severs, come_from_minecraft_servers, posts_con_tu_nombre, nocturno (entre las 2am y las 5am)
		//[Karma]: Applaud, smite; [Games]: Voted, played, visited, visit_a_game_x_times, downloaded, searched, sended; [Comentarios]: (Recibidos y dados): Negativos, positivos, top_scored; [Web]: Páginas vistas, visitas hechas, por recibir un rango especial, + personal badges (por eventos y demás); [Foro]: (embbedar en un topic): imagenes, urls y vídeos, que te bloqueen un tema, que te manden un tema a la papelera, que te bloqueen, que te agreguen como amigo, que siga gente, y que tu sigas gente, visitas recibidas en topic, topic sin respuestas x dias, ser baneado y luego readmitidos, baneado indefinidamente, escribir una palabrota censurada, escribir una palabra oculta, etc

		//Badges Starts

		//Posts Number
		
		//if($post_count >= 1) {darInsignia($user_id, "1")} elseif($post_count >= 10) {darInsignia($user_id, "1")} elseif($post_count >= 50) {darInsignia($user_id, "1")} elseif($post_count >= 100) {darInsignia($user_id, "1")} elseif($post_count >= 500) {darInsignia($user_id, "1")} elseif($post_count >= 1000) {darInsignia($user_id, "1")} elseif($post_count >= 2500) {darInsignia($user_id, "1")} elseif($post_count >= 5000) {darInsignia($user_id, "1")} elseif($post_count >= 10000) {darInsignia($user_id, "1")} elseif($post_count >= 15000) {darInsignia($user_id, "1")} elseif($post_count >= 25000) {darInsignia($user_id, "1")} elseif($post_count >= 50000) {darInsignia($user_id, "1")} elseif($post_count >= 100000) {darInsignia($user_id, "1")}

		switch ($post_count) {

			case ($post_count >= 1):
				darInsignia($user_id, "1");
				break;

			case ($post_count >= 10):
				darInsignia($user_id, "2");
				break;

			case ($post_count >= 25):
				darInsignia($user_id, "3");
				break;

			case ($post_count >= 50):
				darInsignia($user_id, "4");
				break;

			case ($post_count >= 100):
				darInsignia($user_id, "5");
				break;

			case ($post_count >= 250):
				darInsignia($user_id, "6");
				break;

			case ($post_count >= 500):
				darInsignia($user_id, "7");
				break;

			case ($post_count >= 1000):
				darInsignia($user_id, "8");
				break;

			case ($post_count >= 2500):
				darInsignia($user_id, "9");
				break;

			case ($post_count >= 5000):
				darInsignia($user_id, "10");
				break;

			case ($post_count >= 10000):
				darInsignia($user_id, "11");
				break;

			case ($post_count >= 15000):
				darInsignia($user_id, "12");
				break;

			case ($post_count >= 25000):
				darInsignia($user_id, "13");
				break;

			case ($post_count >= 50000):
				darInsignia($user_id, "14");
				break;

			case ($post_count >= 100000):
				darInsignia($user_id, "15");
				break;


		}

		//Posts Created

		//if($posts_created_count >= 1) {darInsignia($user_id, "1")} elseif($posts_created_count >= 10) {darInsignia($user_id, "1")} elseif($posts_created_count >= 50) {darInsignia($user_id, "1")} elseif($posts_created_count >= 100) {darInsignia($user_id, "1")} elseif($posts_created_count >= 500) {darInsignia($user_id, "1")} elseif($posts_created_count >= 1000) {darInsignia($user_id, "1")} elseif($posts_created_count >= 2500) {darInsignia($user_id, "1")} elseif($posts_created_count >= 5000) {darInsignia($user_id, "1")} elseif($posts_created_count >= 10000) {darInsignia($user_id, "1")} elseif($posts_created_count >= 15000) {darInsignia($user_id, "1")} elseif($posts_created_count >= 25000) {darInsignia($user_id, "1")} elseif($posts_created_count >= 50000) {darInsignia($user_id, "1")} elseif($posts_created_count >= 100000) {darInsignia($user_id, "1")}

		switch ($posts_created_count) {

			case ($posts_created_count >= 1):
				darInsignia($user_id, "16");
				break;

			case ($posts_created_count >= 10):
				darInsignia($user_id, "17");
				break;
		
			case ($posts_created_count >= 25):
				darInsignia($user_id, "18");
				break;

			case ($posts_created_count >= 50):
				darInsignia($user_id, "19");
				break;
		
			case ($posts_created_count >= 100):
				darInsignia($user_id, "20");
				break;
		
			case ($posts_created_count >= 250):
				darInsignia($user_id, "21");
				break;
		
			case ($posts_created_count >= 500):
				darInsignia($user_id, "22");
				break;
		
			case ($posts_created_count >= 1000):
				darInsignia($user_id, "23");
				break;
		
			case ($posts_created_count >= 2500):
				darInsignia($user_id, "24");
				break;
		
			case ($posts_created_count >= 5000):
				darInsignia($user_id, "25");
				break;
		
			case ($posts_created_count >= 10000):
				darInsignia($user_id, "26");
				break;
		
			case ($posts_created_count >= 15000):
				darInsignia($user_id, "27");
				break;
		
			case ($posts_created_count >= 25000):
				darInsignia($user_id, "28");
				break;
		
			case ($posts_created_count >= 50000):
				darInsignia($user_id, "29");
				break;
		
			case ($posts_created_count >= 100000):
				darInsignia($user_id, "30");
				break;
			
		}

		//Comments Count

		//if($comment_count >= 1) {darInsignia($user_id, "1")} elseif($comment_count >= 10) {darInsignia($user_id, "1")} elseif($comment_count >= 50) {darInsignia($user_id, "1")} elseif($comment_count >= 100) {darInsignia($user_id, "1")} elseif($comment_count >= 500) {darInsignia($user_id, "1")} elseif($comment_count >= 1000) {darInsignia($user_id, "1")} elseif($comment_count >= 2500) {darInsignia($user_id, "1")} elseif($comment_count >= 5000) {darInsignia($user_id, "1")} elseif($comment_count >= 10000) {darInsignia($user_id, "1")} elseif($comment_count >= 15000) {darInsignia($user_id, "1")} elseif($comment_count >= 25000) {darInsignia($user_id, "1")} elseif($comment_count >= 50000) {darInsignia($user_id, "1")} elseif($comment_count >= 100000) {darInsignia($user_id, "1")}

		switch ($comment_count) {

			case ($comment_count >= 1):
				darInsignia($user_id, "31");
				break;
		
			case ($comment_count >= 10):
				darInsignia($user_id, "32");
				break;
		
			case ($comment_count >= 25):
				darInsignia($user_id, "33");
				break;

			case ($comment_count >= 50):
				darInsignia($user_id, "34");
				break;
		
			case ($comment_count >= 100):
				darInsignia($user_id, "35");
				break;
		
			case ($comment_count >= 250):
				darInsignia($user_id, "36");
				break;
		
			case ($comment_count >= 500):
				darInsignia($user_id, "37");
				break;
		
			case ($comment_count >= 1000):
				darInsignia($user_id, "38");
				break;
		
			case ($comment_count >= 2500):
				darInsignia($user_id, "39");
				break;
		
			case ($comment_count >= 5000):
				darInsignia($user_id, "40");
				break;
		
			case ($comment_count >= 10000):
				darInsignia($user_id, "41");
				break;
		
			case ($comment_count >= 15000):
				darInsignia($user_id, "42");
				break;
		
			case ($comment_count >= 25000):
				darInsignia($user_id, "43");
				break;
		
			case ($comment_count >= 50000):
				darInsignia($user_id, "44");
				break;
		
			case ($comment_count >= 100000):
				darInsignia($user_id, "45");
				break;
			
		}

		//Karma Count

		
		//if($karma_count >= 1) {darInsignia($user_id, "1")} elseif($karma_count >= 5) {darInsignia($user_id, "1")} elseif($karma_count >= 10) {darInsignia($user_id, "1")} elseif($karma_count >= 25) {darInsignia($user_id, "1")} elseif($karma_count >= 50) {darInsignia($user_id, "1")} elseif($karma_count >= 100) {darInsignia($user_id, "1")} elseif($karma_count >= 250) {darInsignia($user_id, "1")} elseif($karma_count >= 500) {darInsignia($user_id, "1")} elseif($karma_count >= 1000) {darInsignia($user_id, "1")}

		//elseif($karma_count >= -1) {darInsignia($user_id, "1")} elseif($karma_count >= -5) {darInsignia($user_id, "1")} elseif($karma_count >= -10) {darInsignia($user_id, "1")} elseif($karma_count >= -25) {darInsignia($user_id, "1")} elseif($karma_count >= -50) {darInsignia($user_id, "1")} elseif($karma_count >= -100) {darInsignia($user_id, "1")} elseif($karma_count >= -250) {darInsignia($user_id, "1")} elseif($karma_count >= -500) {darInsignia($user_id, "1")} elseif($karma_count >= -1000) {darInsignia($user_id, "1")}


		switch ($karma_count) {

		//[Good]
			case ($karma_count >= 1):
				darInsignia($user_id, "46");
				break;
		
			case ($karma_count >= 5):
				darInsignia($user_id, "47");
				break;
		
			case ($karma_count >= 10):
				darInsignia($user_id, "48");
				break;
		
			case ($karma_count >= 25):
				darInsignia($user_id, "130");
				break;

			case ($karma_count >= 50):
				darInsignia($user_id, "49");
				break;
		
			case ($karma_count >= 100):
				darInsignia($user_id, "50");
				break;
		
			case ($karma_count >= 250):
				darInsignia($user_id, "51");
				break;
		
			case ($karma_count >= 500):
				darInsignia($user_id, "52");
				break;
		
			case ($karma_count >= 1000):
				darInsignia($user_id, "53");
				break;

			//[Bad]

			case ($karma_count >= -1):
				darInsignia($user_id, "54");
				break;
		
			case ($karma_count >= -5):
				darInsignia($user_id, "55");
				break;
		
			case ($karma_count >= -10):
				darInsignia($user_id, "56");
				break;

			case ($karma_count >= -25):
				darInsignia($user_id, "131");
				break;				
		
			case ($karma_count >= -50):
				darInsignia($user_id, "57");
				break;
		
			case ($karma_count >= -100):
				darInsignia($user_id, "58");
				break;
		
			case ($karma_count >= -250):
				darInsignia($user_id, "59");
				break;
		
			case ($karma_count >= -500):
				darInsignia($user_id, "60");
				break;
		
			case ($karma_count >= -1000):
				darInsignia($user_id, "61");
				break;
		}

		
		//Karma Per Day

		//if($karma_per_day >= 0.01) {darInsignia($user_id, "1")} elseif($karma_per_day >= 0.5) {darInsignia($user_id, "1")} elseif($karma_per_day >= 1) {darInsignia($user_id, "1")} elseif($karma_per_day >= 2.5) {darInsignia($user_id, "1")} elseif($karma_per_day >= 5) {darInsignia($user_id, "1")} elseif($karma_per_day >= 10) {darInsignia($user_id, "1")}

		//elseif($karma_per_day >= -0.01) {darInsignia($user_id, "1")} elseif($karma_per_day >= -0.5) {darInsignia($user_id, "1")} elseif($karma_per_day >= -1) {darInsignia($user_id, "1")} elseif($karma_per_day >= -2.5) {darInsignia($user_id, "1")} elseif($karma_per_day >= -5) {darInsignia($user_id, "1")} elseif($karma_per_day >= -10) {darInsignia($user_id, "1")}

		switch ($karma_per_day) {

		//[Good]
			case ($karma_per_day >= 0.01):
				darInsignia($user_id, "62");
				break;
		
			case ($karma_per_day >= 0.5):
				darInsignia($user_id, "63");
				break;
		
			case ($karma_per_day >= 1):
				darInsignia($user_id, "64");
				break;
		
			case ($karma_per_day >= 2.5):
				darInsignia($user_id, "65");
				break;
		
			case ($karma_per_day >= 5):
				darInsignia($user_id, "66");
				break;
		
			case ($karma_per_day >= 10):
				darInsignia($user_id, "67");
				break;

			//[Bad]

			case ($karma_per_day >= -0.01):
				darInsignia($user_id, "68");
				break;
		
			case ($karma_per_day >= -0.5):
				darInsignia($user_id, "69");
				break;
		
			case ($karma_per_day >= -1):
				darInsignia($user_id, "70");
				break;
		
			case ($karma_per_day >= -2.5):
				darInsignia($user_id, "71");
				break;
		
			case ($karma_per_day >= -5):
				darInsignia($user_id, "72");
				break;
		
			case ($karma_per_day >= -10):
				darInsignia($user_id, "73");
				break;
		
		}

		//Online Time

		//if($online_time >= 1) {darInsignia($user_id, "1")} elseif($online_time >= 7) {darInsignia($user_id, "1")} elseif($online_time >= 15) {darInsignia($user_id, "1")} elseif($online_time >= 30) {darInsignia($user_id, "1")} elseif($online_time >= 90) {darInsignia($user_id, "1")} elseif($online_time >= 180) {darInsignia($user_id, "1")} elseif($online_time >= 365) {darInsignia($user_id, "1")}

		switch ($online_time) {

			case ($online_time >= 1):
				darInsignia($user_id, "74");
				break;
		
			case ($online_time >= 7):
				darInsignia($user_id, "75");
				break;
		
			case ($online_time >= 15):
				darInsignia($user_id, "76");
				break;
		
			case ($online_time >= 30):
				darInsignia($user_id, "77");
				break;
		
			case ($online_time >= 90):
				darInsignia($user_id, "78");
				break;
		
			case ($online_time >= 180):
				darInsignia($user_id, "79");
				break;
		
			case ($online_time >= 365):
				darInsignia($user_id, "80");
				break;
			
		}

		//Member For

		//if($member_for >= 1) {darInsignia($user_id, "1")} elseif($member_for >= 7) {darInsignia($user_id, "1")} elseif($member_for >= 15) {darInsignia($user_id, "1")} elseif($member_for >= 30) {darInsignia($user_id, "1")} elseif($member_for >= 90) {darInsignia($user_id, "1")} elseif($member_for >= 180) {darInsignia($user_id, "1")} elseif($member_for >= 365) {darInsignia($user_id, "1")} elseif($member_for >= 730) {darInsignia($user_id, "1")} elseif($member_for >= 1095) {darInsignia($user_id, "1")} elseif($member_for >= 1460) {darInsignia($user_id, "1")} elseif($member_for >= 1825) {darInsignia($user_id, "1")} elseif($member_for >= 2190) {darInsignia($user_id, "1")} elseif($member_for >= 2555) {darInsignia($user_id, "1")} elseif($member_for >= 2920) {darInsignia($user_id, "1")} elseif($member_for >= 3285) {darInsignia($user_id, "1")} elseif($member_for >= 3650) {darInsignia($user_id, "1")}

		switch ($member_for) {

			case ($member_for >= 1):
				darInsignia($user_id, "81");
				break;
		
			case ($member_for >= 7):
				darInsignia($user_id, "82");
				break;
		
			case ($member_for >= 15):
				darInsignia($user_id, "83");
				break;
		
			case ($member_for >= 30):
				darInsignia($user_id, "84");
				break;
		
			case ($member_for >= 90):
				darInsignia($user_id, "85");
				break;
		
			case ($member_for >= 180):
				darInsignia($user_id, "86");
				break;
		
			case ($member_for >= 365):
				darInsignia($user_id, "87");
				break;

			case ($member_for >= 730):
				darInsignia($user_id, "88");
				break;

			case ($member_for >= 1095):
				darInsignia($user_id, "89");
				break;

			case ($member_for >= 1460):
				darInsignia($user_id, "90");
				break;

			case ($member_for >= 1825):
				darInsignia($user_id, "91");
				break;

			case ($member_for >= 2190):
				darInsignia($user_id, "92");
				break;

			case ($member_for >= 2555):
				darInsignia($user_id, "93");
				break;

			case ($member_for >= 2920):
				darInsignia($user_id, "94");
				break;

			case ($member_for >= 3285):
				darInsignia($user_id, "95");
				break;

			case ($member_for >= 3650):
				darInsignia($user_id, "96");
				break;

		}

		//Money

		//if($money >= 1) {darInsignia($user_id, "1")} elseif($money >= 500) {darInsignia($user_id, "1")} elseif($money >= 1000) {darInsignia($user_id, "1")} elseif($money >= 10000) {darInsignia($user_id, "1")} elseif($money >= 100000) {darInsignia($user_id, "1")}  elseif($money >= 500000) {darInsignia($user_id, "1")} elseif($money >= 1000000) {darInsignia($user_id, "1")} elseif($money >= 2000000) {darInsignia($user_id, "1")} elseif($money >= 10000000) {darInsignia($user_id, "1")} elseif($money >= 25000000) {darInsignia($user_id, "1")} elseif($money >= 50000000) {darInsignia($user_id, "1")} elseif($money >= 100000000) {darInsignia($user_id, "1")} elseif($money >= 250000000) {darInsignia($user_id, "1")} elseif($money >= 500000000) {darInsignia($user_id, "1")} elseif($money >= 1000000000) {darInsignia($user_id, "1")}

		switch ($money) {

			case ($money >= 1):
				darInsignia($user_id, "97");
				break;
		
			case ($money >= 500):
				darInsignia($user_id, "98");
				break;
		
			case ($money >= 1000):
				darInsignia($user_id, "99");
				break;
		
			case ($money >= 10000):
				darInsignia($user_id, "100");
				break;
		
			case ($money >= 100000):
				darInsignia($user_id, "101");
				break;
		
			case ($money >= 500000):
				darInsignia($user_id, "102");
				break;
		
			case ($money >= 1000000):
				darInsignia($user_id, "103");
				break;
		
			case ($money >= 2500000):
				darInsignia($user_id, "104");
				break;
		
			case ($money >= 5000000):
				darInsignia($user_id, "105");
				break;
		
			case ($money >= 10000000):
				darInsignia($user_id, "106");
				break;
		
			case ($money >= 25000000):
				darInsignia($user_id, "107");
				break;
		
			case ($money >= 50000000):
				darInsignia($user_id, "108");
				break;
		
			case ($money >= 100000000):
				darInsignia($user_id, "109");
				break;
		
			case ($money >= 250000000):
				darInsignia($user_id, "110");
				break;

			case ($money >= 500000000):
				darInsignia($user_id, "111");
				break;

			case ($money >= 1000000000):
				darInsignia($user_id, "112");
				break;
			
		}

		//Money in the Bank

		//if($bank_money >= 1) {darInsignia($user_id, "1")} elseif($bank_money >= 500) {darInsignia($user_id, "1")} elseif($bank_money >= 1000) {darInsignia($user_id, "1")} elseif($bank_money >= 10000) {darInsignia($user_id, "1")} elseif($bank_money >= 100000) {darInsignia($user_id, "1")}  elseif($bank_money >= 500000) {darInsignia($user_id, "1")} elseif($bank_money >= 1000000) {darInsignia($user_id, "1")} elseif($bank_money >= 2000000) {darInsignia($user_id, "1")} elseif($bank_money >= 10000000) {darInsignia($user_id, "1")} elseif($bank_money >= 25000000) {darInsignia($user_id, "1")} elseif($bank_money >= 50000000) {darInsignia($user_id, "1")} elseif($bank_money >= 100000000) {darInsignia($user_id, "1")} elseif($bank_money >= 250000000) {darInsignia($user_id, "1")} elseif($bank_money >= 500000000) {darInsignia($user_id, "1")} elseif($bank_money >= 1000000000) {darInsignia($user_id, "1")}

		switch ($bank_money) {

			case ($bank_money >= 1):
				darInsignia($user_id, "113");
				break;
		
			case ($bank_money >= 500):
				darInsignia($user_id, "114");
				break;
		
			case ($bank_money >= 1000):
				darInsignia($user_id, "115");
				break;
		
			case ($bank_money >= 10000):
				darInsignia($user_id, "116");
				break;
		
			case ($bank_money >= 100000):
				darInsignia($user_id, "117");
				break;
		
			case ($bank_money >= 500000):
				darInsignia($user_id, "118");
				break;
		
			case ($bank_money >= 1000000):
				darInsignia($user_id, "119");
				break;
		
			case ($bank_money >= 2500000):
				darInsignia($user_id, "120");
				break;
		
			case ($bank_money >= 5000000):
				darInsignia($user_id, "121");
				break;
		
			case ($bank_money >= 10000000):
				darInsignia($user_id, "122");
				break;
		
			case ($bank_money >= 25000000):
				darInsignia($user_id, "123");
				break;
		
			case ($bank_money >= 50000000):
				darInsignia($user_id, "124");
				break;
		
			case ($bank_money >= 100000000):
				darInsignia($user_id, "125");
				break;
		
			case ($bank_money >= 250000000):
				darInsignia($user_id, "126");
				break;

			case ($bank_money >= 500000000):
				darInsignia($user_id, "127");
				break;

			case ($bank_money >= 1000000000):
				darInsignia($user_id, "128");
				break;
			
		}

}

function days_del_foro() {

	return floor(abs((time() - 1376827601) / (60 * 60 * 24)));

}

function darInsignia($id_del_usuario, $id_de_la_insignia) {

	if(!mysql_fetch_array(mysql_query('SELECT * FROM badges WHERE users='.(int)$id_del_usuario))) {
	if(is_array(mysql_fetch_array(mysql_query('SELECT users FROM badges WHERE id='.(int)$id_de_la_insignia)))) {
		$id_user_fetcheada = mysql_query('SELECT users FROM badges');
		$id_new = unserialize($id_user_fetcheada);
		$id_new[]=$id_del_usuario;
		$id_user = serialize($id_new);
	} else {
		$id_array = array('user_id' => $id_del_usuario);
		$id_user = serialize($id_array);
	}
	require_once($_SERVER['DOCUMENT_ROOT'] . '/Settings.php');
	mysql_connect ($db_server, $db_user, $db_passwd) or die ('Error: ' . mysql_error());
    mysql_select_db ($db_name);
    mysql_query ("SET NAMES 'utf8'");
    $query="INSERT INTO badges (users) VALUES ('$id_user') WHERE id = '$id_de_la_insignia'";
    mysql_query($query) or die ('Error: ' . mysql_error());
	}

}

?>