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

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
	<?php if ( !is_single() ){ twentyfourteen_post_thumbnail(); }  ?>
	<div class="detail">
		<header class="entry-header">
			<!--
			<?php if ( in_array( 'category', get_object_taxonomies( get_post_type() ) ) && twentyfourteen_categorized_blog() ) : ?>
			<div class="entry-meta">
				<span class="cat-links"><?php echo get_the_category_list( _x( ', ', 'Used between list items, there is a space after the comma.', 'twentyfourteen' ) ); ?></span>
			</div> -->
			<?php
				endif;
				if ( is_single() ) :
					the_title( '<h1 class="entry-title">', '</h1>' );
				else :
					the_title( '<h2 class="entry-title"><a href="' . esc_url( get_permalink() ) . '" rel="bookmark">', '</a></h2>' );
				endif;
			?>
			
			<div class="entry-meta">
				<?php
					if ('post' == get_post_type())
						twentyfourteen_posted_on();

					if ( ! post_password_required() && ( comments_open() || get_comments_number() ) ) :
				?>
				<span class="comments-link"><?php comments_popup_link( __( 'Leave a comment', 'twentyfourteen' ), __( '1 Comment', 'twentyfourteen' ), __( '% Comments', 'twentyfourteen' ) ); ?></span>
				<?php
					endif;

					edit_post_link( __( 'Edit', 'twentyfourteen' ), '<span class="edit-link">', '</span>' );
				?>
			</div><!-- .entry-meta -->
			
		</header><!-- .entry-header -->

		<?php if ( is_single() ) : ?>
			<div class="entry-content">
				<?php
					
					/* translators: %s: Name of current post */
					the_content( sprintf(
						__( 'Continue reading %s <span class="meta-nav">&rarr;</span>', 'twentyfourteen' ),
						the_title( '<span class="screen-reader-text">', '</span>', false )
					) );
					
					wp_link_pages( array(
						'before'      => '<div class="page-links"><span class="page-links-title">' . __( 'Pages:', 'twentyfourteen' ) . '</span>',
						'after'       => '</div>',
						'link_before' => '<span>',
						'link_after'  => '</span>',
					) );
					the_tags( '<footer class="entry-meta-tags"><span class="tag-title">Tags:</span><span class="tag-links"> ', ',', '</span></footer>' );
					echo do_shortcode('[related_posts_by_tax format="thumbnail_excerpt" posts_per_page="10" title="Các bài viết liên quan"]');
					//echo $shortcode;
				?>
				
			</div><!-- .entry-content -->
			
		<?php else : ?>
		<div class="entry-summary">
			<?php the_excerpt(); ?>
			<p class="read-more"><a class="more-show" href="<?php echo get_permalink(); ?>" title="<?php the_title(); ?>"> Xem thêm </a></p>
		</div><!-- .entry-summary -->
		<?php endif; ?>
		
	</div>
</article><!-- #post-## -->
