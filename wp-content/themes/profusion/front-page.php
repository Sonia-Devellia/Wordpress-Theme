<?php get_header(); ?>

<!-- banner section start -->
<?php
$args = array(
   'post_type' => 'page',
   'pagename' => 'home',
   'posts_per_page' => 1
);
query_posts($args);
while (have_posts()) : the_post();
?>
   <div class="banner_section layout_padding">
      <div class="container">
         <img src="<?php echo get_field('banner_image')['url']; ?>" class="banner_img">
         <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
               <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
               <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
               <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
               <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
            </ol>
            <div class="carousel-inner">
               <?php for ($i = 0; $i < 4; $i++) : ?>
                  <div class="carousel-item <?php if ($i == 0) echo 'active'; ?>">
                     <div class="row">
                        <div class="col-sm-12">
                           <h1 class="banner_taital"><?php echo get_field('banner_title'); ?></h1>
                           <div class="contact_bt"><a href="<?php echo get_field('banner_button_link'); ?>"><?php echo get_field('banner_button_text'); ?></a></div>
                        </div>
                     </div>
                  </div>
               <?php endfor; ?>
            </div>
         </div>
      </div>
   </div>
   <!-- banner section end -->

   <!-- service section start -->
   <div class="service_section layout_padding">
      <div class="container">
         <h1 class="service_taital">Our Classes</h1>
         <div class="service_section_2 layout_padding">
            <div class="owl-carousel owl-theme">
               <?php
               $args_services = array(
                  'category_name' => 'services',
                  'posts_per_page' => -1,
                  'order' => 'ASC'
               );
               $services = new WP_Query($args_services);
               while ($services->have_posts()) : $services->the_post();
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
               wp_reset_postdata();
               ?>
            </div>
         </div>
      </div>
   </div>
   <!-- service section end -->

   <!-- about section start -->
   <div class="about_section layout_padding">
      <div class="container">
         <div class="about_main">
            <div class="row">
               <div class="col-sm-12">
                  <?php
                  $about_query = new WP_Query([
                     'post_type'      => 'page',
                     'title'          => 'ABOUT',
                     'posts_per_page' => 1,
                  ]);

                  if ($about_query->have_posts()) :
                     $about_query->the_post();
                     $about_id = get_the_ID();
                  ?>
                     <h1 class="about_taital"><?php echo get_field('about_title', $about_id); ?></h1>
                     <p class="about_text"><?php echo get_field('about_description', $about_id); ?></p>
                     <div class="about_img"><img src="<?php echo get_field('about_image', $about_id)['url']; ?>"></div>
                     <p class="about_text_1"><?php echo get_field('about_content', $about_id); ?></p>
                     <div class="readmore_bt"><a href="<?php echo get_permalink($about_id); ?>">Read More</a></div>
                  <?php
                     wp_reset_postdata();
                  endif;
                  ?>
               </div>
            </div>
         </div>
      </div>
   </div>
   <!-- about section end -->

   <!-- price section start -->
   <div class="price_section layout_padding">
      <div class="container">
         <div class="row">
            <div class="col-sm-12">
               <h1 class="price_taital"><?php echo get_field('price_title'); ?></h1>
            </div>
         </div>

         <div class="price_section_2">
            <div class="row">

               <?php
               $prices = [
                  [
                     'name'        => get_field('price_name'),
                     'amount'      => get_field('price_amount'),
                     'period'      => get_field('price_period'),
                     'description' => get_field('price_description'),
                  ],
                  [
                     'name'        => get_field('price_2_name'),
                     'amount'      => get_field('price_2_amount'),
                     'period'      => get_field('price_2_period'),
                     'description' => get_field('price_2_description'),
                  ],
               ];
               ?>

               <?php foreach ($prices as $price): ?>
                  <div class="col-md-6">
                     <h3 class="first_price_text"><?php echo $price['name']; ?></h3>
                     <div class="price_box">
                        <div class="taital_main">
                           <h4 class="rate_text"><span style="color: #f6815e;">$</span><?php echo $price['amount']; ?></h4>
                           <p class="month_text"><?php echo $price['period']; ?></p>
                        </div>
                        <p class="dummy_text"><?php echo $price['description']; ?></p>
                        <div class="readmore_bt"><a href="#">Join Now</a></div>
                     </div>
                  </div>
               <?php endforeach; ?>

            </div>
         </div>
      </div>
   </div>
   <!-- price section end -->

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
               <li data-target="#custom_slider" data-slide-to="0" class="active"></li>
               <li data-target="#custom_slider" data-slide-to="1"></li>
               <li data-target="#custom_slider" data-slide-to="2"></li>
               <li data-target="#custom_slider" data-slide-to="3"></li>
            </ol>
            <div class="carousel-inner">
               <?php
               $args_clients = array(
                  'category_name' => 'testimonial',
                  'posts_per_page' => 4
               );
               $clients = new WP_Query($args_clients);
               $count = 0;
               while ($clients->have_posts()) : $clients->the_post();
                  if ($count % 2 == 0) :
                     $class = ($count == 0) ? 'carousel-item active' : 'carousel-item';
               ?>
                     <div class="<?php echo $class; ?>">
                        <div class="client_section_2">
                           <div class="client_main">
                              <div class="client_left">
                                 <div class="client_img"><img src="<?php echo get_field('client_image')['url']; ?>"></div>
                              </div>
                              <div class="client_right">
                                 <h3 class="name_text"><?php the_title(); ?> <span style="float: right;"><img src="<?php echo get_template_directory_uri(); ?>/images/quick-icon.png"></span></h3>
                                 <p class="dolor_text"><?php echo get_field('client_subtitle'); ?></p>
                                 <p class="lorem_text"><?php the_content(); ?></p>
                              </div>
                           </div>
                        <?php
                     else :
                        ?>
                           <div class="client_main_2">
                              <div class="client_right_2">
                                 <h3 class="name_text"><?php the_title(); ?> <span style="float: left;"><img src="<?php echo get_template_directory_uri(); ?>/images/quick-icon.png"></span></h3>
                                 <p class="dolor_text"><?php echo get_field('client_subtitle'); ?></p>
                                 <p class="lorem_text"><?php the_content(); ?></p>
                              </div>
                              <div class="client_left_2">
                                 <div class="client_img"><img src="<?php echo get_field('client_image')['url']; ?>"></div>
                              </div>
                           </div>
                        </div>
                     </div>
               <?php
                     endif;
                     $count++;
                  endwhile;
                  wp_reset_postdata();
               ?>
            </div>
         </div>
      </div>
   </div>
   <!-- client section end -->

   <!-- contact section start -->
   <div class="contact_section layout_padding">
      <div class="container">
         <h1 class="contact_taital">Get In Touch</h1>
         <div class="contact_section_2">
            <div class="row">
               <div class="col-sm-12">
                  <div class="contact_main layout_padding">
                     <?php echo do_shortcode('[contact-form-7 id="623ef61" title="GET IN TOUCH"]'); ?>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
  <!-- contact section end -->

<?php
endwhile;
wp_reset_query();
?>

<script>
jQuery(document).ready(function($) {
    $('.owl-carousel').owlCarousel({
        loop: true,
        margin: 35,
        nav: true,
        center: true,
        responsive: {
            0: { items: 1, margin: 0 },
            575: { items: 1, margin: 0 },
            768: { items: 3, margin: 0 },
            1000: { items: 3 }
        }
    });
});
</script>

<?php get_footer(); ?>