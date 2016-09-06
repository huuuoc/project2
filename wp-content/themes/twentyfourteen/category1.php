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
					foreach ( $termchildren as $child ) {
						$term = get_term_by( 'id', $child, $taxonomy_name );
						$li .='<li tab-link="tab-link" tab-content="tab-content" item="#tab'.$term->term_id.'">'.$term->name.'</li>';
						$arrCatId[] = $term->term_id;
					}
				}else{
					$arrCatId[]=$term_id;
					$li = '<h2>'.$objCat->name.'</h2>';
				}
			?>
			<?php
				$args_tab_category = array(
					'category__in' => $arrCatId,
					'orderby' => 'ASC'
				);
				$div1 = '';$check1 = 0;
				$div2 = '';$check2 = 0;
				$div3 = '';$check3 = 0;
				$numCat = count($arrCatId);
				$args_tab_category = new WP_Query( $args_tab_category );
				if ( $args_tab_category->have_posts()) :
					// Start the Loop.
					while ( $args_tab_category->have_posts() ) : $args_tab_category->the_post();
						for($i=0;$i<$numCat;++$i){
							if(get_the_category()[0]->cat_ID == $arrCatId){
								$div1 .= '<article class="ar-'.($check1+1).'"> <div class="content-article"><a class="post-image" href="'.get_permalink().'" title="">'. get_the_post_thumbnail().'</a> <div class="desc-title"><h3> <a href="'.get_permalink().'" title="'.get_the_title().'" >'. get_the_title() .'</a></h3><p class="desc-article">'. get_the_excerpt().'</p><a  class="more-show" href="'.get_permalink().'" title="Xem thêm">Xem thêm</a></div></div></article>';
								$check1++;
							}
						}
					endwhile;
				endif;
				wp_reset_postdata();
			?>
			<div class="block block-tab-category">
				<div class="title-block">
					<ul class="tab-link1 tab-link">
						<?php  echo $li; ?>
					</ul>
				</div>
				<div class="content-block tab-content1 tab-content">
					<div id="tab5" class="tab-detail active">
						<?php if($div1 !=''){echo $div1;}else echo 'Chưa có bài viết nào'; ?>			
					</div>
					<div id="tab6" class="tab-detail">
						<?php if($div2 !=''){echo $div2;}else echo 'Chưa có bài viết nào'; ?>	
					</div>
					<div id="tab7" class="tab-detail">
						<?php if($div3 !=''){echo $div3;}else echo 'Chưa có bài viết nào'; ?>	
					</div>
				</div>
			</div>
		</div><!-- #content -->
	</section><!-- #primary -->

<?php
get_sidebar( 'content' );
get_sidebar();
get_footer();
