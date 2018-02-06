$(document).ready(function() {
	
	$("#mailer").on("click", function(){
		$(this).fadeOut('slow').addClass("hidden")
		$(".form").fadeIn('slow').removeClass("hidden")
	})

	$('.button').bind("submit", function() {
		$(".form").fadeOut('slow').addClass("hidden")
		$("#mailer").fadeIn('slow').removeClass("hidden")
	})

	$('#notice').delay(3000).fadeTo(300, 0);

});