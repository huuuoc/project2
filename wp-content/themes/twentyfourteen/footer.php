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
				<div class="col-1">
					<div class="agency-block">
						<h3><span>Miền Bắc</span> <span class="f-right show-agency"> > </span></h3>
						<img src="<?php echo  wp_upload_dir('2016/08')['url']; ?>/2.TayBacBo.png"  atl="Miền Bắc" width="100%"/>
						<div class="list-agency">
							<ul>
								<?php echo $mienBac; ?>
							</ul>
						</div>
					</div>
				</div>	
				<div class="col-1">
					<div class="agency-block">
						<h3><span>Miền Trung</span> <span class="f-right show-agency"> > </span></h3>
						<img src="<?php echo  wp_upload_dir('2016/08')['url']; ?>/2.TayBacBo.png"  atl="Miền Bắc" width="100%"/>
						<div  class="list-agency">
							<ul>
								<?php echo $mienTrung; ?>
							</ul>
						</div>
					</div>
				</div>	
				<div class="col-1">
					<div class="agency-block">
						<h3><span>Miền Nam</span> <span class="f-right show-agency"> > </span></h3>
						<img src="<?php echo  wp_upload_dir('2016/08')['url']; ?>/2.TayBacBo.png"  atl="Miền Bắc" width="100%" />
						<div class="list-agency">
							<ul>
								<?php echo $mienNam; ?>
							</ul>
						</div>
					</div>
				</div>	
			</div>
		</div><!-- #main -->

		<footer id="colophon" class="site-footer" role="contentinfo">

			<?php get_sidebar( 'footer' ); ?>
			<div class="info-company"> 
				<p><strong> <span class="info-footer"> Công ty TNHH Nông lâm sản Tiên Phước </span></strong></p>
				<p> Trụ sở : 158/149 Hồ Tùng Mậu-Nam Từ Liêm-TP.Hà Nội</p>
				<p> Xí nghiệp 1: Tiên Phước - Quảng Nam, Xí nghiệp 2: Mỹ Đình-Hà Nội</p>
				<p>ĐT : <span class="info-footer">04.3797.0138-0919.838</span></p>
				<p>Email : <a href="mailto:nonglamsantienphuoc@gmail.com"><span class="info-footer">nonglamsantienphuoc@gmail.com</span></a></p>
				<p>Website: <a href="http://nonglamsantienphuoc.com"><span class="info-footer">www.nonglamsantienphuoc.com</span></a></p>
			</div>
			<div class="map"> </div>
			<div class="conection"> </div>
			<div class="site-info">
				<?php do_action( 'twentyfourteen_credits' ); ?>
				<a href="<?php echo esc_url( __( 'https://wordpress.org/', 'twentyfourteen' ) ); ?>"><?php printf( __( 'Proudly powered by %s', 'twentyfourteen' ), 'WordPress' ); ?></a>
			</div><!-- .site-info -->
			
		</footer><!-- #colophon -->
	</div><!-- #page -->

	<?php wp_footer(); ?>
</body>
</html>