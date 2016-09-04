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
	$args_my_query = array(
		'category__in' => array(4, 5, 6,7 )
	);
	$my_query = new WP_Query( $args_my_query );
?>

<div id="container">
	<!-- Products -->
	<div class="col-1">
		<ul class="list-products">
			<?php
				$args_my_query = array(
					'category__in' => array(4, 5, 6,7 )
				);
				$my_query = new WP_Query( $args_my_query );
				
				if ( $my_query->have_posts() ) :
					while ( $my_query->have_posts() ) : $my_query->the_post();
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
				$args_my_query = array(
					'category__in' => array(4, 5,6,7),
					'orderby' => 'ASC'
				);
				$my_query = new WP_Query( $args_my_query );
				
				if ( $my_query->have_posts() ) :
					// Start the Loop.
					$li1 = '';
					$li2 = '';
					$li3 = '';
					$div1 = '';$check1 = 0;
					$div2 = '';$check2 = 0;
					$div3 = '';$check3 = 0;
					while ( $my_query->have_posts() ) : $my_query->the_post();
						if(get_the_category()[0]->cat_ID == 5){
							if($check1==0){
								$li1 .= '<li item="#tab'. get_the_category()[0]->cat_ID .'" class="active">'.get_the_category()[0]->name.'</li>';
								$check1++;
							}
							$div1 .= '<article> <div class="content-article"><a class="post-image" href="'.get_permalink().'" title="">'. get_the_post_thumbnail().'</a> <div class="desc-title"><h3> <a href="'.get_permalink().'" title="'.get_the_title().'" >'.get_the_title().'</a></h3><p class="desc-article">'. get_the_excerpt().'</p></div></div></article>';
						}
						if(get_the_category()[0]->cat_ID == 6){
							if($check2==0){
								$li2 .= '<li item="#tab'. get_the_category()[0]->cat_ID .'">'.get_the_category()[0]->name.'</li>';
								$check2++;
							}
							$div2 .= '<article> <div class="content-article"><a class="post-image" href="'.get_permalink().'" title="">'. get_the_post_thumbnail().'</a><div class="desc-title"> <h3><a href="'.get_permalink().'" title="'.get_the_title().'">'.get_the_title().'</a></h3><p class="desc-article">'. get_the_excerpt().'</p></div></div></article>';
						}
						if(get_the_category()[0]->cat_ID == 7){
							if($check3==0){
								$li3 .= '<li item="#tab'. get_the_category()[0]->cat_ID .'">'.get_the_category()[0]->name.'</li>';
								$check3++;
							}
							$div3 .= '<article> <div class="content-article"><a class="post-image" href="'.get_permalink().'" title="">'. get_the_post_thumbnail() .'</a><div class="desc-title"><h3><a href="'.get_permalink().'" title="'.get_the_title().'">'.get_the_title().'</a></h3><p class="desc-article">'. get_the_excerpt().'</p></div></div></article>';
						}
					endwhile;
				endif;
			?>
		<div class="tab-home-page">
			<ul class="tab-link">
				<?php echo $li1,$li2,$li3; ?>
			</ul>
			<div class="tab-content">
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
	<div></div>
	
	</div>
<?php // get_sidebar(); 
	//get_sidebar( 'content' ); 
//get_sidebar();
?>

<?php get_footer(); ?>
