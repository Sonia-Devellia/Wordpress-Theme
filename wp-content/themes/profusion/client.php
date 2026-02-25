<?php
/*
Template Name: CLIENT
*/
get_header(); ?>
<!-- client section start -->
<div class="client_sectiion">
   <div class="container">
      <div class="row">
         <div class="col-sm-12">
            <h1 class="client_taital">Testimonial</h1>
         </div>
      </div>
      <div id="custom_slider" class="carousel slide" data-ride="carousel">
         <ol class="carousel-indicators">
            <?php
            $args_count = array(
               'category_name' => 'testimonial',
               'posts_per_page' => -1
            );
            $count_query = new WP_Query($args_count);
            $total_slides = ceil($count_query->post_count / 2);
            wp_reset_postdata();
            for ($s = 0; $s < $total_slides; $s++) :
            ?>
               <li data-target="#custom_slider" data-slide-to="<?php echo $s; ?>" <?php if ($s == 0) echo 'class="active"'; ?>></li>
            <?php endfor; ?>
         </ol>
         <div class="carousel-inner">
            <?php
            $args = array(
               'category_name' => 'testimonial',
               'posts_per_page' => -1
            );
            query_posts($args);
            $count = 0;
            $posts_array = array();
            while (have_posts()) : the_post();
               $posts_array[] = array(
                  'title' => get_the_title(),
                  'content' => get_the_content(),
                  'image' => get_field('client_image'),
                  'subtitle' => get_field('client_subtitle')
               );
            endwhile;
            wp_reset_query();

            $total = count($posts_array);
            $slides = ceil($total / 2);

            for ($i = 0; $i < $total; $i += 2) :
               $active = ($i == 0) ? 'carousel-item active' : 'carousel-item';
            ?>
               <div class="<?php echo $active; ?>">
                  <div class="client_section_2">
                     <div class="client_main">
                        <div class="client_left">
                           <div class="client_img">
                              <?php if ($posts_array[$i]['image']) : ?>
                                 <img src="<?php echo $posts_array[$i]['image']['url']; ?>">
                              <?php endif; ?>
                           </div>
                        </div>
                        <div class="client_right">
                           <h3 class="name_text"><?php echo $posts_array[$i]['title']; ?> <span style="float: right;"><img src="<?php echo get_template_directory_uri(); ?>/images/quick-icon.png"></span></h3>
                           <p class="dolor_text"><?php echo $posts_array[$i]['subtitle']; ?></p>
                           <p class="lorem_text"><?php echo $posts_array[$i]['content']; ?></p>
                        </div>
                     </div>
                     <?php if (isset($posts_array[$i + 1])) : ?>
                        <div class="client_main_2">
                           <div class="client_right_2">
                              <h3 class="name_text"><?php echo $posts_array[$i + 1]['title']; ?> <span style="float: left;"><img src="<?php echo get_template_directory_uri(); ?>/images/quick-icon.png"></span></h3>
                              <p class="dolor_text"><?php echo $posts_array[$i + 1]['subtitle']; ?></p>
                              <p class="lorem_text"><?php echo $posts_array[$i + 1]['content']; ?></p>
                           </div>
                           <div class="client_left_2">
                              <div class="client_img">
                                 <?php if ($posts_array[$i + 1]['image']) : ?>
                                    <img src="<?php echo $posts_array[$i + 1]['image']['url']; ?>">
                                 <?php endif; ?>
                              </div>
                           </div>
                        </div>
                     <?php endif; ?>
                  </div>
               </div>
            <?php endfor; ?>
         </div>
      </div>
   </div>
</div>
<!-- client section end -->
<?php get_footer(); ?>