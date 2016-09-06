<?php
/**
 * The template for displaying the footer
 *
 * Contains footer content and the closing of the #main and #page div elements.
 *
 * @package WordPress
 * @subpackage Twenty_Fourteen
 * @since Twenty Fourteen 1.0
 */
?>
			<?php
				$args_my_query = array(
					'category__in' => array(9,10,11),
					'orderby' => 'ASC'
				);
				$my_query = new WP_Query( $args_my_query );
				
				if ( $my_query->have_posts()) :
					$mienBac = '';
					$mienTrung = '';
					$mienNam = '';
					while ( $my_query->have_posts() ) : $my_query->the_post();
						if(get_the_category()[0]->cat_ID == 9){
							$mienBac .= '<li><a href="'.get_permalink().'" title="'.get_the_title().'">'.get_the_title().'</a></li>';
						}
						if(get_the_category()[0]->cat_ID == 10){
							$mienTrung .= '<li><a href="'.get_permalink().'" title="'.get_the_title().'">'.get_the_title().'</a></li>';
						}
						if(get_the_category()[0]->cat_ID == 11){
							$mienNam .= '<li><a href="'.get_permalink().'" title="'.get_the_title().'">'.get_the_title().'</a></li>';
						}
					endwhile;
				endif;
			?>
			<div class="agency">
				<div class="block-daily">
					<div class="col-1">
						<div class="agency-block">
							<h3><span>Đại Lý Miền Bắc</span></h3>
							<div class="image-daily">
								<img src="<?php echo  wp_upload_dir('2016/09')['url']; ?>/daily1.png"  atl="Miền Bắc" width="100%"/>
							</div>
							
							<div class="list-agency">
								<ul>
									<?php echo $mienBac; ?>
								</ul>
							</div>
						</div>
					</div>	
					<div class="col-1">
						<div class="agency-block">
							<h3><span>Đại Lý Miền Trung</span></h3>
							<div class="image-daily">
								<img src="<?php echo  wp_upload_dir('2016/09')['url']; ?>/daily2.png"  atl="Miền Bắc" width="100%"/>
							</div>
							<div  class="list-agency">
								<ul>
									<?php echo $mienTrung; ?>
								</ul>
							</div>
						</div>
					</div>	
					<div class="col-1">
						<div class="agency-block">
							<h3><span>Đại Lý Miền Nam</span></h3>
							<div class="image-daily">
								<img src="<?php echo  wp_upload_dir('2016/09')['url']; ?>/daily3.png"  atl="Miền Bắc" width="100%" />
							</div>
							<div class="list-agency">
								<ul>
									<?php echo $mienNam; ?>
								</ul>
							</div>
						</div>
					</div>	
				</div>
			</div>
		</div><!-- #main -->

		<footer id="colophon" class="site-footer" role="contentinfo">
			<div class="footer-container">
				<div class="footer">
					<?php get_sidebar( 'footer' ); ?>
					<div class="info-company"> 
						<p class="name-company"><strong><span> Công ty TNHH Nông lâm sản Tiên Phước </span></strong></p>
						<p class="address"> Trụ sở : 158/149 Hồ Tùng Mậu - Nam Từ Liêm - TP.Hà Nội</p>
						<p class="address"> Xí nghiệp 1: Tiên Phước - Quảng Nam, Xí nghiệp 2: Mỹ Đình - Hà Nội</p>
						<p class="phone">ĐT : <span class="info-footer">04.3797.0138-0919.838</span></p>
						<p class="email">Email : <a title="Email" href="mailto:nonglamsantienphuoc@gmail.com"><span class="info-footer">nonglamsantienphuoc@gmail.com</span></a></p>
						<p class="website"> Website: <a target="_blank" title="Công ty TNHH Nông lâm sản Tiên Phước" href="http://nonglamsantienphuoc.com"><span class="info-footer">www.nonglamsantienphuoc.com</span></a></p>
					</div>
					<div class="conection"> 
						<div class="conect">
							<h3 class=""><span> Điều khoản sử dụng </span></h3>
							<a href="#" title="DMCA.com Protection Status"><img src="<?php echo get_template_directory_uri(); ?>/images/protected.png" alt="DMCA.com Protection Status" /></a>
							<h3 class="title-social"><span>Liên kết</span></h3>
							<ul class="social">
								<li><a href="#" title="face-book"><img src="<?php echo get_template_directory_uri(); ?>/images/face-book.png" alt="social" /></a></li>
								<li><a href="#" title="google"><img src="<?php echo get_template_directory_uri(); ?>/images/google.png" alt="social" /></a></li>
								<li><a href="#" title="twiceter"><img src="<?php echo get_template_directory_uri(); ?>/images/twiceter.png" alt="social" /></a></li>
								<li><a href="#" title="youtube"><img src="<?php echo get_template_directory_uri(); ?>/images/youtube.png" alt="social"/></a></li>
							</ul>
						</div>
						
						<div class="facebook-page">
							<div class="fb-page" 
							  data-href="https://www.facebook.com/namlimxanh"
							  data-small-header="true"
							  data-adapt-container-width="true"
							  data-hide-cover="false"
							  data-show-facepile="true" 
							  data-show-posts="false"></div>
						</div>
					</div>
					<!--<div class="site-info">
						<?php do_action( 'twentyfourteen_credits' ); ?>
						<a href="<?php echo esc_url( __( 'https://wordpress.org/', 'twentyfourteen' ) ); ?>"><?php printf( __( 'Proudly powered by %s', 'twentyfourteen' ), 'WordPress' ); ?></a>
					</div><-- .site-info -->
					<a href="#" id="back-to-top" title="Back to top">&uarr;</a>
				</div>
			</div>
			<div class="copyright"><p>Copyright -2016 Công ty TNHH Nông Lâm Sản Tiên Phước</p></div>
		</footer><!-- #colophon -->
	</div><!-- #page -->

	<?php wp_footer(); ?>
</body>
</html>