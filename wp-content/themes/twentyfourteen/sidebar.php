<?php
/**
 * The Sidebar containing the main widget area
 *
 * @package WordPress
 * @subpackage Twenty_Fourteen
 * @since Twenty Fourteen 1.0
 */
?>
<div id="secondary">
	
	<?php
		$args_products = array(
			'category__in' => array(4),
			'orderby'   => 'meta_value_num',
			'meta_key'  => 'price_products',
			'order'   => 'ASC',
		);
		$my_query_products = new WP_Query( $args_products );
	?>
	
	<?php //if ( is_active_sidebar( 'sidebar-1' ) ) : ?>
	<div id="primary-sidebar" class="primary-sidebar widget-area" role="complementary">
		<div class="block block-products">
			<ul class="list-products">
				<?php
					if ( $my_query_products->have_posts() ) :
						while ( $my_query_products->have_posts() ) : $my_query_products->the_post();
							if(get_the_category()[0]->cat_ID==4){
								get_template_part( 'content', 'listproducts');
							}
						endwhile;
					endif;
					wp_reset_postdata();
				?>
			</ul>
		</div>
		<div class="block-support block">
			<div class="title-block">
				<h2><span>Chăm sóc khách hàng</span></h2>
			</div>
			<div class="content-block tab-content">
				<ul>
					<li>
						<img src="<?php echo get_template_directory_uri(); ?>/images/support1.png" alt="social" />
						<p>
							<span class="name">Tổng đài tư vấn</span><br/>
							<span class="phone">04.3797.0138</span>
						</p>
					</li>
					<li>
						<img src="<?php echo get_template_directory_uri(); ?>/images/support2.png" alt="social" />
						<p>
							<span class="name">Dược sĩ Dung</span><br/>
							<span class="phone">04.3797.0138</span>
						</p>
					</li>
					<li>
						<img src="<?php echo get_template_directory_uri(); ?>/images/support3.png" alt="social" />
						<p>
							<span class="name">Dược sĩ Hoa</span><br/>
							<span class="phone">04.3797.0138</span>
						</p>
					</li>
					<li>
						<img src="<?php echo get_template_directory_uri(); ?>/images/support4.png" alt="social" />
						<p>
							<span class="name">Hỗ trợ hậu mãi</span><br/>
							<span class="phone">04.3797.0138</span>
						</p>
					</li>
				</ul>
			</div>
		</div>
		<div class="content-library block content-newspaper">
			<div class="title-block">
				<ul class="tab-link tab-link2">
					<li item="#tab4" tab-link="tab-link2" tab-content="tab-content2" class="active"> Thư viện video </li>
					<li item="#tab5" tab-link="tab-link2" tab-content="tab-content2"> Thư viện ảnh </li>
				</ul>
			</div>
			<div class="content-block tab-content tab-content2">
				<div id="tab4" class="active">
				<?php
					$args_library = array(
						'category__in' => array(29,30),
						'orderby' => 'ASC'
					);
					$checkCat30 = 0;
					$my_query_library = new WP_Query( $args_library );
					if ( $my_query_library->have_posts()) :
							while ( $my_query_library->have_posts() ) : $my_query_library->the_post();
								
								if(get_the_category()[0]->cat_ID == 30){
									if($checkCat30==5){
										break;
									}
									$title = get_the_title();
									if($checkCat30 !=0){ 
										cutTitle($title,47);
									}
								
					?>
									<article class="ar-<?php echo $checkCat30?>">
										<?php if($checkCat30==0){twentyfourteen_post_thumbnail();}?>
										<h3> <a title="<?php echo get_the_title()?>" href="<?php echo esc_url( get_permalink())?> " rel="bookmark"><?php echo $title ?></a></h3>
									</article>
					<?php
									$checkCat30++;
									}
							endwhile;
						endif;
						wp_reset_postdata();
					?>
				</div>
				<div id="tab5">
					<?php
						$count29=0;
						if ( $my_query_library->have_posts()) :
							while ( $my_query_library->have_posts() ) : $my_query_library->the_post();
								
								if(get_the_category()[0]->cat_ID==29){
									if($count29==5){
										break;
									}
								$title = get_the_title();
								if($count29 !=0){ 
									cutTitle($title,47);
								}
					?>
									<article class="ar-<?php echo $count29?>">
										<?php if($count29==0){twentyfourteen_post_thumbnail();}?>
										<h3> <a title="<?php echo get_the_title()?>" href="<?php echo esc_url( get_permalink())?> " rel="bookmark"><?php echo $title ?></a></h3>
									</article>
					<?php
						$count29++;
								}
							endwhile;
						endif;
						wp_reset_postdata();
					?>
				</div>
			</div>
		</div>
		<?php dynamic_sidebar( 'sidebar-1' ); ?>
	</div><!-- #primary-sidebar -->
	<?php // endif; ?>
</div><!-- #secondary -->
