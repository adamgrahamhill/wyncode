

$(function() {
	var slides = $('.slideShow>ul>li');
	var slideCount = 0;
	var totalSldes = slides.length;

	slides.hide();

	function slideShow(){
		slides.eq(slideCount).fadeIn(1000).delay(3000).fadeOut(1000, function(){
			slideCount < totalSlides - 1 ? slideCount ++ : slideCount = 0;
			slideShow();
		});
	}
	slideShow();
});