<?php
/**
 * The default template for displaying content
 *
 * Used for both single and index/archive/search.
 *
 * @package WordPress
 * @subpackage Twenty_Fourteen
 * @since Twenty Fourteen 1.0
 */
?>

<li id="post-<?php the_ID(); ?>">
	<div class="info-product">
	<?php twentyfourteen_post_thumbnail(); ?>
	<div class="content-product">
		<?php
		
			if ( is_single() ) :
				the_title( '<h2 class="entry-title1">', '</h2>' );
			else :
				the_title( '<h2 class="name-product"><a title="'.get_the_title().'" href="' . esc_url( get_permalink() ) . '" rel="bookmark">', '</a></h2>' );
			endif;
		?>
		<div class="type-product">
			<?php
				$typeProduct = get_post_meta( get_the_ID(), 'type_products', true );
				 
				if( $typeProduct ) { // kiểm tra xem nó có dữ liệu hay không
					echo $typeProduct;
				}
			?>
		</div>
		<div class="price-product">
			<?php
				$priceProduct = get_post_meta( get_the_ID(), 'price_products', true );
				 
				if( $priceProduct ) { // kiểm tra xem nó có dữ liệu hay không
					echo 'Giá : ', number_format($priceProduct,0,",","."),' Đ/hộp';
				}
			?>
		</div>
		<a href="<?php echo get_permalink() ;?>" title="Xem chi tiết">Chi tiết >> </a>
		</div>
	</div>
	
</li><!-- #post-## -->
