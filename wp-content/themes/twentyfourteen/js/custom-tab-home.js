/**
 * Twenty Fourteen Customizer enhancements for a better user experience.
 *
 * Contains handlers to make Customizer preview reload changes asynchronously.
 */
( function( $ ) {
	//Tab home
	$('.tab-link li').click(function(){
		if (!$(this).hasClass('active')) {
			var id = $(this).attr('item');
			var tabLink = $(this).attr('tab-link');
			var tabContent = $(this).attr('tab-content');
			console.log(tabLink+' li.active');
			$('.'+tabLink+' li.active').removeClass('active');
			$('.'+tabContent+' .active').removeClass('active');
			$(this).addClass('active'); 
			$('.'+tabContent+' '+id).addClass('active'); 
		}
	});
	// Dai ly footer
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
	
	//Menu main 
	$(window).scroll(function(){
		if($(this).scrollTop() > 400){
			$('#primary-navigation').addClass('p-fixed');
		}else{
			$('#primary-navigation').removeClass('p-fixed');
		}
	});
	
	//back-to-top
	if ($('#back-to-top').length) {
		var scrollTrigger = 100, // px
			backToTop = function () {
				var scrollTop = $(window).scrollTop();
				if (scrollTop > scrollTrigger) {
					$('#back-to-top').addClass('show');
				} else {
					$('#back-to-top').removeClass('show');
				}
			};
		backToTop();
		$(window).on('scroll', function () {
			backToTop();
		});
		$('#back-to-top').on('click', function (e) {
			e.preventDefault();
			$('html,body').animate({
				scrollTop: 0
			}, 700);
		});
	}
	
	
} )( jQuery );