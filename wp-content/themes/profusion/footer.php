<!-- footer section start -->
<div class="footer_section">
   <div class="location_bg">
      <div class="container">
         <div class="location_main">
            <ul>
               <li>
                  <a href="#carte"><img src="<?php echo get_template_directory_uri(); ?>/images/map-icon.png">
                     <span class="padding_15">Location</span></a>
               </li>
               <li>
                  <a href="tel:+011234567890"><img src="<?php echo get_template_directory_uri(); ?>/images/call-icon.png">
                     <span class="padding_15">Call +01 1234567890</span></a>
               </li>
               <li>
                  <a href="mailto:demo@gmail.com"><img src="<?php echo get_template_directory_uri(); ?>/images/mail-icon.png">
                     <span class="padding_15">demo@gmail.com</span></a>
               </li>
            </ul>
         </div>
      </div>
   </div>
   <div class="map_main" id="carte">
      <div class="map-responsive">
         <iframe src="https://www.google.com/maps/embed/v1/place?key=AIzaSyA0s1a7phLN0iaD6-UE7m4qP-z21pH0eSc&amp;q=Eiffel+Tower+Paris+France" width="600" height="400" frameborder="0" style="border:0; width: 100%;" allowfullscreen=""></iframe>
      </div>
   </div>
</div>
<!-- footer section end -->
<!-- copyright section start -->
<div class="copyright_section">
   <div class="container">
      <p class="copyright_text">© 2020 All Rights Reserved.Design by <a href="https://html.design">Free html Templates</a></p>
      <p class="copyright_text"><a href="<?php echo get_privacy_policy_url(); ?>">Politique de confidentialité</a></p>
   </div>
</div>
<!-- copyright section end -->

<?php wp_footer(); ?>
</body>

</html>