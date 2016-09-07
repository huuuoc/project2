<?php
/**
 * The template for displaying Category pages
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package WordPress
 * @subpackage Twenty_Fourteen
 * @since Twenty Fourteen 1.0
 */

get_header(); ?>

	<section id="primary" class="content-area category-area">
		<div id="content" class="site-content" role="main">
			<?php
				if ( !is_front_page() && !is_home() ){
					if ( function_exists('yoast_breadcrumb') ) {
						yoast_breadcrumb('<div id="breadcrumbs">','</div>');
					}
				}
			?> 
			<?php
				$objCat = $wp_query->get_queried_object();
				$term_id = $objCat->term_id;
				$hasParent = $objCat->category_parent;
				$li = '';
				$arrCatId = [];
				if(!$hasParent){
					$taxonomy_name = 'category';
					$termchildren = get_term_children( $term_id, $taxonomy_name );
					$k=0;
					foreach ( $termchildren as $child ) {
						$term = get_term_by( 'id', $child, $taxonomy_name );
						if($k==0){
							$class="active";
						}else{
							$class="";
						}
						$li .='<li class="'.$class.'" tab-link="tab-link" tab-content="tab-content" item="#tab'.$k.'">'.$term->name.'</li>';
						$arrCatId[] = $term->term_id;
						$k++;
					}
				}else{
					$arrCatId[]=$term_id;
					$li = '<h2>'.$objCat->name.'</h2>';
				}
			?>
			<?php
				$numCat = count($arrCatId);
				for($i=0;$i<$numCat;++$i){
					$div = 'div'.$i;
					$arg = 'args_'.$i;
					$obj = 'obj'.$i;
					$$arg = array(
						'category__in' => $arrCatId[$i],
						'orderby' => 'ASC',
						'posts_per_page'=>1,
						'offset'=>0
					);
					$$obj = new WP_Query( $$arg );
					$check1 = 0;
					$$div='';
					if ( $$obj->have_posts()) :
						// Start the Loop.
						while ( $$obj->have_posts() ) : $$obj->the_post();
							$$div .= '<article class="ar-'.($check1+1).'"> <div class="content-article"><a class="post-image" href="'.get_permalink().'" title="">'. get_the_post_thumbnail().'</a> <div class="desc-title"><h3> <a href="'.get_permalink().'" title="'.get_the_title().'" >'. get_the_title() .'</a></h3><p class="desc-article">'. get_the_excerpt().'</p><a  class="more-show" href="'.get_permalink().'" title="Xem thêm">Xem thêm</a></div></div></article>';
							$check1++;
						endwhile;
					endif;
				}
				
			?>
			<div class="block block-tab-category">
				<div class="title-block">
					<ul class="tab-link1 tab-link">
						<?php  echo $li; ?>
					</ul>
				</div>
				<div class="content-block tab-content1 tab-content">
					<?php 
						
						for($j=0;$j<$numCat;++$j){
							$content = 'div'.$j;
							if($$content==''){
								$$content='Chưa có bài viết nào';
							}
							if($j==0){
								$id = 'active';
							}else{
								$id = '';
							}
							echo '<div class="'.$id.'" id="tab'.$j.'">';
							echo $$content;
							$category = get_category( $arrCatId[$j]);
							$limit = $category->category_count;
							echo '<ul class="custom-paging">';
							for($p=1;$p<= $limit;$p++){
								echo '<li page="'.$p.'" cat="'.$arrCatId[$j].'">'.$p.'</li>';
							}
							echo '</ul>';
							echo '</div>';
							
						}
					?>
				</div>
			</div>
		</div><!-- #content -->
		<script>
			jQuery(document).ready( function() {
				jQuery('.custom-paging li').click(function(){
					var cat = jQuery(this).attr('cat');
					var page = jQuery(this).attr('page');
					
					<?php ajaxPaging(); ?>
					
					jQuery.ajax({
						 type : "post",
						 dataType : "json",
						 url : myAjax.ajaxurl,
						 data : {action: "my_user_vote", post_id : post_id, nonce: nonce},
						 success: function(response) {
							if(response.type == "success") {
							   jQuery("#vote_counter").html(response.vote_count)
							}
							else {
							   alert("Your vote could not be added")
							}
						 }
					})   
					
					
				});
			});
		</script>
	</section><!-- #primary -->
<?php
get_sidebar( 'content' );
get_sidebar();
get_footer();
