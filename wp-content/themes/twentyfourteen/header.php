<?php
/**
 * The Header for our theme
 *
 * Displays all of the <head> section and everything up till <div id="main">
 *
 * @package WordPress
 * @subpackage Twenty_Fourteen
 * @since Twenty Fourteen 1.0
 */
?><!DOCTYPE html>
<!--[if IE 7]>
<html class="ie ie7" <?php language_attributes(); ?>>
<![endif]-->
<!--[if IE 8]>
<html class="ie ie8" <?php language_attributes(); ?>>
<![endif]-->
<!--[if !(IE 7) & !(IE 8)]><!-->
<html <?php language_attributes(); ?>>
<!--<![endif]-->
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width">
	<title><?php wp_title( '|', true, 'right' ); ?></title>
	<link rel="profile" href="http://gmpg.org/xfn/11">
	<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">
	<!--[if lt IE 9]>
	<script src="<?php echo get_template_directory_uri(); ?>/js/html5.js"></script>
	<![endif]-->
	<?php wp_head(); ?>
	<div id="fb-root"></div>
	<script>(function(d, s, id) {
	  var js, fjs = d.getElementsByTagName(s)[0];
	  if (d.getElementById(id)) return;
	  js = d.createElement(s); js.id = id;
	  js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.7&appId=1430588073931924";
	  fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));
	</script>
</head>

<body <?php body_class(); ?>>
<div id="page" class="hfeed site">
	<?php if ( get_header_image() ) : ?>
	<div id="site-header">
		<a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home">
			<img src="<?php header_image(); ?>" width="<?php echo get_custom_header()->width; ?>" height="<?php echo get_custom_header()->height; ?>" alt="<?php echo esc_attr( get_bloginfo( 'name', 'display' ) ); ?>">
		</a>
	</div>
	<?php endif; ?>

	<header id="masthead" class="site-header" role="banner">
		<?php if ( is_front_page() && is_home() ) : ?>
			<h1 class="site-title"><a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home"><img src="<?php echo  wp_upload_dir('2016/09')['url']; ?>/logo-new.png"  atl="Nấm lim xanh" /></a></h1>
		<?php else : ?>
			<p class="site-title"><a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home"><img src="<?php echo  wp_upload_dir('2016/09')['url']; ?>/logo-new.png"  atl="Nấm lim xanh" /></a></p>
		<?php endif;?>
		
		<div class="header-main">
			<div class="slogan-site">
				<span class="slogan-name">Sản phẩm nấm lim xanh của công ty tnhh nông lâm sản tiên phước là thương hiệu độc quyền chính hãng</span>
				<span class="hotline">Hotline : 04.3797.0138</span>
				<div class="search-toggle">
					<a href="#search-container" class="screen-reader-text" aria-expanded="false" aria-controls="search-container"><?php _e( 'Search', 'twentyfourteen' ); ?></a>
				</div>
			</div>
			<div id="search-container" class="search-box-wrapper hide">
				<div class="search-box">
					<?php get_search_form(); ?>
				</div>
			</div>
		</div>
		<div class="header-slide">
			<?php echo do_shortcode('[wonderplugin_slider id=1]'); ?>
		</div>
		<nav id="primary-navigation" class="site-navigation primary-navigation" role="navigation">
			<button class="menu-toggle"><?php _e( 'Primary Menu', 'twentyfourteen' ); ?></button>
			<a class="screen-reader-text skip-link" href="#content"><?php _e( 'Skip to content', 'twentyfourteen' ); ?></a>
			<?php wp_nav_menu( array( 'theme_location' => 'primary', 'menu_class' => 'nav-menu', 'menu_id' => 'primary-menu' ) ); ?>
		</nav>
	</header><!-- #masthead -->

	<div id="main" class="site-main">
