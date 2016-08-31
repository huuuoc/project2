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
	
	$('.agency-block h3').click(function(e){
		if (!$(this).parent().hasClass('active')) {
			$('.agency-block.active').removeClass('active');
			$(this).parent().addClass('active'); 
			$('.list-agency').slideUp('medium');
			$(this).parent().find('.list-agency').slideDown('medium');
		}else{
			$('.agency-block.active').removeClass('active');
			$('.list-agency').slideUp('medium');
		}
		e.stopPropagation();
	});
	$('.list-agency').click(function(e){
		e.stopPropagation();
	});
	$(document).click(function(){
		$('.agency-block.active').removeClass('active');
		$('.list-agency').slideUp('medium');
	});
	$(window).scroll(function(){
		if($(this).scrollTop() > 50){
			$('.header-main').addClass('p-fixed');
		}else{
			$('.header-main').removeClass('p-fixed');
		}
	});
	
} )( jQuery );