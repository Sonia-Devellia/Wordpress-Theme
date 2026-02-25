<?php
/*
Template Name: CONTACT US
*/
get_header(); ?>
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
<?php get_footer(); ?>