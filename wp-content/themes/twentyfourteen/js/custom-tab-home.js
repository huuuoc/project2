/**
 * Twenty Fourteen Customizer enhancements for a better user experience.
 *
 * Contains handlers to make Customizer preview reload changes asynchronously.
 */
( function( $ ) {
	$('.tab-link li').click(function(){
		if (!$(this).hasClass('active')) {
			var id = $(this).attr('item');
			$('.tab-link li.active').removeClass('active');
			$('.tab-content .active').removeClass('active');
			$(this).addClass('active'); 
			$('.tab-content '+id).addClass('active'); 
		}
	});
} )( jQuery );