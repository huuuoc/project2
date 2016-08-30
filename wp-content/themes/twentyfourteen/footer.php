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
			<div class="agency">
				<div class="col-1">col-1</div>	
				<div class="col-1">col-2</div>	
				<div class="col-1">col-3</div>	
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