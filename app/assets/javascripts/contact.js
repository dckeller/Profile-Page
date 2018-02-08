$(document).ready(function() {
	
	$("#mailer").on("click", function(){
		$(this).fadeOut('slow').addClass("hidden")
		$("#contact").fadeIn('slow')
	})
});