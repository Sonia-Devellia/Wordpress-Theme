<?php
function mon_theme_scripts()
{
    // Styles
    wp_enqueue_style('bootstrap-css', get_template_directory_uri() . '/css/bootstrap.min.css', array(), null);
    wp_enqueue_style('style', get_template_directory_uri() . '/css/style.css', array(), null);
    wp_enqueue_style('responsive', get_template_directory_uri() . '/css/responsive.css', array(), null);
    wp_enqueue_style('mCustomScrollbar-css', get_template_directory_uri() . '/css/jquery.mCustomScrollbar.min.css', array(), null);
    wp_enqueue_style('font-awesome', 'https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css', array(), null);
    wp_enqueue_style('google-fonts', 'https://fonts.googleapis.com/css?family=Poppins:400,700|Roboto:400,700&display=swap', array(), null);
    wp_enqueue_style('owl-carousel-css', get_template_directory_uri() . '/css/owl.carousel.min.css', array(), null);
    wp_enqueue_style('owl-theme', get_template_directory_uri() . '/css/owl.theme.default.min.css', array(), null);
    wp_enqueue_style('fancybox', 'https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css', array(), null);
    wp_enqueue_style('profusion-style', get_stylesheet_uri(), array(), '1.1');
    
    // Scripts
    wp_enqueue_script('popper', get_template_directory_uri() . '/js/popper.min.js', array('jquery'), null, true);
    wp_enqueue_script('bootstrap', get_template_directory_uri() . '/js/bootstrap.bundle.min.js', array('jquery'), null, true);
    wp_enqueue_script('plugin', get_template_directory_uri() . '/js/plugin.js', array('jquery'), null, true);
    wp_enqueue_script('mCustomScrollbar', get_template_directory_uri() . '/js/jquery.mCustomScrollbar.concat.min.js', array('jquery'), null, true);
    wp_enqueue_script('custom', get_template_directory_uri() . '/js/custom.js', array('jquery'), null, true);
    wp_enqueue_script('owl-carousel', get_template_directory_uri() . '/js/owl.carousel.js', array('jquery'), null, true);
}
add_action('wp_enqueue_scripts', 'mon_theme_scripts');

// Support du thème
function profusion_theme_setup()
{
    add_theme_support('title-tag');
    add_theme_support('post-thumbnails');
    add_theme_support('custom-logo');
}
add_action('after_setup_theme', 'profusion_theme_setup');

// Support des menus
function profusion_register_menus()
{
    register_nav_menus(array(
        'menu-principal' => 'Menu Principal',
    ));
}
add_action('init', 'profusion_register_menus');

// Ajouter classe nav-item aux li du menu
function profusion_menu_li_class($classes, $item)
{
    $classes[] = 'nav-item';
    return $classes;
}
add_filter('nav_menu_css_class', 'profusion_menu_li_class', 10, 2);

// Ajouter classe nav-link aux liens du menu
function profusion_menu_link_class($atts)
{
    $atts['class'] = 'nav-link';
    return $atts;
}
add_filter('nav_menu_link_attributes', 'profusion_menu_link_class');

// Ajouter classe navbar-brand au logo
function profusion_custom_logo_class($html)
{
    $html = str_replace('custom-logo-link', 'custom-logo-link navbar-brand', $html);
    return $html;
}
add_filter('get_custom_logo', 'profusion_custom_logo_class');
