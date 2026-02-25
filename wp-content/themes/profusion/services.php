<?php
/*
Template Name: SERVICES
*/
get_header(); ?>
<!-- service section start -->
<div class="service_section layout_padding">
   <div class="container">
      <h1 class="service_taital">Our Classes</h1>
      <div class="service_section_2 layout_padding">
         <div class="owl-carousel owl-theme">
            <?php
            $args = array(
               'category_name' => 'services',
               'posts_per_page' => -1,
               'order' => 'ASC'
            );
            query_posts($args);
            while (have_posts()) : the_post();
            ?>
               <div class="item">
                  <div class="image_box">
                     <img src="<?php echo get_field('service_image')['url']; ?>" alt="#" />
                  </div>
                  <h3 class="sound_text"><?php the_title(); ?></h3>
                  <div class="buy_bt"><a href="#">Read More</a></div>
               </div>
            <?php
            endwhile;
            wp_reset_query();
            ?>
         </div>
      </div>
   </div>
</div>
<!-- service section end -->
<?php get_footer(); ?>
<script>
   jQuery(document).ready(function($) {
      $('.owl-carousel').trigger('destroy.owl.carousel');
      $('.owl-carousel').owlCarousel({
         loop: true,
         margin: 35,
         nav: true,
         navText: ['&#10094;', '&#10095;'],
         center: true,
         responsive: {
            0: {
               items: 1,
               margin: 0
            },
            575: {
               items: 1,
               margin: 0
            },
            768: {
               items: 3,
               margin: 0
            },
            1000: {
               items: 3
            }
         }
      });
   });
</script>