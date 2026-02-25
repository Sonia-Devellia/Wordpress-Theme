<?php
/*
Template Name: ABOUT
*/
get_header(); ?>

<!-- about section start -->
<?php
$args = array(
   'post_type' => 'page',
   'pagename' => 'about',
   'posts_per_page' => 1
);
query_posts($args);
while (have_posts()) : the_post();
?>
   <div class="about_section layout_padding">
      <div class="container">
         <div class="about_main">
            <div class="row">
               <div class="col-sm-12">
                  <h1 class="about_taital"><?php echo get_field('about_title'); ?></h1>
                  <p class="about_text"><?php echo get_field('about_description'); ?></p>
                  <div class="about_img">
                     <?php
                     $about_img = get_field('about_image');
                     if ($about_img) : ?>
                        <img src="<?php echo $about_img['url']; ?>">
                     <?php endif; ?>
                  </div>
                  <p class="about_text_1"><?php echo get_field('about_content'); ?></p>
                  <div class="readmore_bt"><a href="<?php echo get_field('about_button_link'); ?>"><?php echo get_field('about_button_text'); ?></a></div>
               </div>
            </div>
         </div>
      </div>
   </div>
<?php
endwhile;
wp_reset_query();
?>
<!-- about section end -->
<?php get_footer(); ?>