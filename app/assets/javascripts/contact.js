$(document).ready(function() {

	$("#contact").hide()
	
	$("#mailer").on("click", function(){
		$(this).fadeOut('slow').hide();
		$("#contact").fadeIn('slow')
	})
});