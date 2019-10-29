// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
 
 
$(document).ready(function () {
	$("#new_feedback").validate({
		debug: true,
		rules: {
		"feedback[name]": {required: true},
		"feedback[email]": {required: true, email: true},
		"feedback[subject]": {required: true},
		"feedback[description]": {required: true}
		}
	});
});
 