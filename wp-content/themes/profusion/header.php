<!DOCTYPE html>
<html <?php language_attributes(); ?>>

<head>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
   <!-- favicon -->
   <link rel="icon" href="<?php echo get_template_directory_uri(); ?>/images/fevicon.png" type="image/gif" />
   <?php wp_head(); ?>
</head>

<body>
   <div class="header_section">
      <div class="container-fluid">
         <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <?php if (has_custom_logo()) :
               the_custom_logo();
            else : ?>
               <a class="navbar-brand" href="<?php echo home_url(); ?>"><img src="<?php echo get_template_directory_uri(); ?>/images/logo.png"></a>
            <?php endif; ?>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
               <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
               <?php
               wp_nav_menu(array(
                  'theme_location' => 'menu-principal',
                  'container' => false,
                  'menu_class' => 'navbar-nav mr-auto',
                  'items_wrap' => '<ul class="%2$s">%3$s</ul>',
                  'li_class' => 'nav-item',
                  'link_class' => 'nav-link',
               ));
               ?>
               <form class="form-inline my-2 my-lg-0">
                  <div class="user_icon"><a href="<?php echo wp_login_url(); ?>"><i class="fa fa-user" aria-hidden="true"></i></a></div>
                  <div class="user_icon"><a href="<?php echo home_url('/?s='); ?>"><i class="fa fa-search" aria-hidden="true"></i></a></div>
               </form>
               <div class="call_btn"><a href="tel:+1234567890"><i class="fa fa-phone" aria-hidden="true"></i><span class="padding_left10">Call : +1234567890</span></a></div>
            </div>
         </nav>
      </div>
   </div>