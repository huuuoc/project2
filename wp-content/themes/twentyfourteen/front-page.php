<?php
/*
	Travel Theme's Front Page to Display the Home Page if Selected
	Copyright: 2012-2016, D5 Creation, www.d5creation.com
	Based on the Simplest D5 Framework for WordPress
	Since Travel 1.0
*/
?>

<?php get_header(); ?>
</div>
<?php
	$args_products = array(
		'category__in' => array(4),
		'orderby' => 'ASC'
	);
	$my_query_products = new WP_Query( $args_products );
?>

<div id="container">
	<!-- Products -->
	<div class="col-1">
		<ul class="list-products">
			<?php
				if ( $my_query_products->have_posts() ) :
					while ( $my_query_products->have_posts() ) : $my_query_products->the_post();
						if(get_the_category()[0]->cat_ID==4){
							get_template_part( 'content', 'listproducts');
						}
					endwhile;
				endif;
			?>
		</ul>
	</div>
	
	<!-- Tab home page -->
	<div class="col-2">
			<?php
				$args_tab_home = array(
					'category__in' => array(5,6,7),
					'orderby' => 'ASC'
				);
				$my_query_tab_home = new WP_Query( $args_tab_home );
				if ( $my_query_tab_home->have_posts()) :
					// Start the Loop.
					$li1 = '';
					$li2 = '';
					$li3 = '';
					$div1 = '';$check1 = 0;
					$div2 = '';$check2 = 0;
					$div3 = '';$check3 = 0;
					while ( $my_query_tab_home->have_posts() ) : $my_query_tab_home->the_post();
						if(get_the_category()[0]->cat_ID == 5){
							$check1++;
							if($check1 == 5){
								continue;
							}
							if($check1==0){
								$li1 .= '<li item="#tab'. get_the_category()[0]->cat_ID .'"  tab-link="tab-link1" tab-content="tab-content1"  class="active">'.get_the_category()[0]->name.'</li>';
							}else{
								$li1 .= '<li item="#tab'. get_the_category()[0]->cat_ID .'"  tab-link="tab-link1" tab-content="tab-content1">'.get_the_category()[0]->name.'</li>';
							}
							
							$div1 .= '<article class="ar-'.$check1.'"> <div class="content-article"><a class="post-image" href="'.get_permalink().'" title="">'. get_the_post_thumbnail().'</a> <div class="desc-title"><h3> <a href="'.get_permalink().'" title="'.get_the_title().'" >'.get_the_title().'</a></h3><p class="desc-article">'. get_the_excerpt().'</p><a  class="more-show" href="'.get_permalink().'" title="Xem thêm">Xem thêm</a></div></div></article>';
							
						}
						if(get_the_category()[0]->cat_ID == 6){
							$check2++;
							if($check2 == 5){
								continue;
							}
							$li2 .= '<li tab-link="tab-link1" tab-content="tab-content1"  item="#tab'. get_the_category()[0]->cat_ID .'">'.get_the_category()[0]->name.'</li>';
							$div2 .= '<article class="ar-'.$check2.'"> <div class="content-article"><a class="post-image" href="'.get_permalink().'" title="">'. get_the_post_thumbnail().'</a><div class="desc-title"> <h3><a href="'.get_permalink().'" title="'.get_the_title().'">'.get_the_title().'</a></h3><p class="desc-article">'. get_the_excerpt().'</p><a class="more-show" href="'.get_permalink().'" title="Xem thêm">Xem thêm</a></div></div></article>';
							
						}
						if(get_the_category()[0]->cat_ID == 7){
							$check3++;
							if($check2 == 5){
								continue;
							}
							if($check3==0){
								$li3 .= '<li tab-link="tab-link1" tab-content="tab-content1"  item="#tab'. get_the_category()[0]->cat_ID .'">'.get_the_category()[0]->name.'</li>';
								
							}
							$div3 .= '<article class="ar-'.$check3.'"> <div class="content-article"><a class="post-image" href="'.get_permalink().'" title="">'. get_the_post_thumbnail() .'</a><div class="desc-title"><h3><a href="'.get_permalink().'" title="'.get_the_title().'">'.get_the_title().'</a></h3><p class="desc-article">'. get_the_excerpt().'</p><a class="more-show" href="'.get_permalink().'" title="Xem thêm">Xem thêm</a></div></div></article>';
							
						}
					endwhile;
				endif;
			?>
		<div class="tab-home-page block block-tab-main">
			<div class="title-block">
				<ul class="tab-link1 tab-link">
					<?php echo $li1,$li2,$li3; ?>
				</ul>
			</div>
			<div class="content-block tab-content1 tab-content">
				<div id="tab5" class="tab-detail active">
					<?php echo $div1;?>			
				</div>
				<div id="tab6" class="tab-detail">
					<?php echo $div2;?>			
				</div>
				<div id="tab7" class="tab-detail">
					<?php echo $div3;?>			
				</div>
			</div>
		</div>
	</div>
	<div class="layer-2">
		<div class="col-1">
			<div class="content-newspaper block">
				<div class="title-block">
					<h2><span>Báo chí về chúng tôi</span></h2>
				</div>
				<div class="content-block">
					<?php
						$args_newspaper = array(
							'category__in' => array(27),
							'orderby' => 'ASC'
						);
						$checkFirst = 0;
						$my_query_newspaper = new WP_Query( $args_newspaper );
						$count27=0;
						if ( $my_query_newspaper->have_posts()) :
							while ( $my_query_newspaper->have_posts() ) : $my_query_newspaper->the_post();
								
								if(get_the_category()[0]->cat_ID==27){
									if($checkFirst==5){
										break;
									}
								$title = get_the_title();
								if(isset($title{47}) && $checkFirst !=0){ 
									$title = substr($title,0,44);
									$title = substr($title,0,strripos($title,' ',0));
									$title .= ' ...';
								}
								$checkFirst++;
								
					?>
									<article class="ar-<?php echo $count27?>">
										<?php if($count27==0){twentyfourteen_post_thumbnail();}?>
										<h3> <a title="<?php echo get_the_title()?>" href="<?php echo esc_url( get_permalink())?> " rel="bookmark"><?php echo $title ?></a></h3>
									</article>
					<?php
						$count27++;
								}
							endwhile;
						endif;
					?>
				</div>
			</div>
		</div>
		<div class="col-1">
			<div class="content-library block">
				<div class="title-block">
					<ul class="tab-link tab-link2">
						<li item="#tab4" tab-link="tab-link2" tab-content="tab-content2" class="active"> Thư viện video </li>
						<li item="#tab5" tab-link="tab-link2" tab-content="tab-content2"> Thư viện ảnh </li>
					</ul>
				</div>
				<div class="content-block tab-content tab-content2">
					<div id="tab4" class="active">
						<iframe width="100%" height="203" src="https://www.youtube.com/embed/Sy4812bvBco" frameborder="0" allowfullscreen></iframe>
					</div>
					<div id="tab5">Thư viện ảnh</div>
				</div>
			</div>
		</div>
		<div class="col-1">
			<div class="content-support block">
				<div class="title-block">
					<h2><span>Chăm sóc khách hàng</span></h2>
				</div>
				<div class="content-block tab-content">
					<ul>
						<li>
							<img src="<?php echo get_template_directory_uri(); ?>/images/support1.png" alt="social" />
							<p>
								<span class="name">Tổng đài tư vấn</span></br>
								<span class="phone">04.3797.0138</span>
							</p>
						</li>
						<li>
							<img src="<?php echo get_template_directory_uri(); ?>/images/support2.png" alt="social" />
							<p>
								<span class="name">Tổng đài tư vấn</span></br>
								<span class="phone">04.3797.0138</span>
							</p>
						</li>
						<li>
							<img src="<?php echo get_template_directory_uri(); ?>/images/support3.png" alt="social" />
							<p>
								<span class="name">Tổng đài tư vấn</span></br>
								<span class="phone">04.3797.0138</span>
							</p>
						</li>
						<li>
							<img src="<?php echo get_template_directory_uri(); ?>/images/support4.png" alt="social" />
							<p>
								<span class="name">Tổng đài tư vấn</span></br>
								<span class="phone">04.3797.0138</span>
							</p>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	
	</div>
<?php // get_sidebar(); 
	//get_sidebar( 'content' ); 
//get_sidebar();
?>

<?php get_footer(); ?>
