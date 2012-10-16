$(document).ready(function($) {

	$('#stylesw').styleSwitcher();
	
	$('.theme-changer-wrap').css({right: -$('.theme-changer-wrap').outerWidth()-8});
	
	$('.open-close-demo').click(function() {
		$(this).parent().toggleClass('closed-panel');
		
		if ($(this).parent().hasClass('closed-panel')) {
			$(this).parent().animate({
				"right": "0"
			}, 500, 'easeInOutQuart');
		} else {
			$(this).parent().animate({
				"right": -$(this).parent().outerWidth()-8
			}, 500, 'easeInOutQuart');
		}
		
	});
	
	$('#ef-dark-sw, #ef-light-sw').click(function() {
		if ($(this).is('#ef-dark-sw')) {
			$('body').addClass('ef-dark-theme')
		} else {
			$('body').removeClass('ef-dark-theme')
		}
		
	});
	
	$('a.color-themes').click(function() {
		
		return false;
	});
	
	$(window).resize(function () {
		$('.open-close-demo').css({left: -(parseInt($('#tray-button').css('margin-right'))+$('.open-close-demo').width()+8)});
	})
	
});

$(window).load(function () {
	$('.open-close-demo').css({left: -(parseInt($('#tray-button').css('margin-right'))+$('.open-close-demo').width()+8)});
})