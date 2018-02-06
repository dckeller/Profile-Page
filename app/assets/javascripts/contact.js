$(document).ready(function() {
	
	$("#mailer").on("click", function(){
		$(this).fadeOut('slow').addClass("hidden")
		$(".form").fadeIn('slow').removeClass("hidden")
	})

	$('.button').on("submit", "form", function() {
		$(".form").fadeOut('slow').addClass("hidden")
		$("#mailer").removeClass("hidden").fadeIn('slow')
	})
});