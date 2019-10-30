// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
 
 
$(document).ready(function () {
	$("#new_feedback").validate({
		rules: {
		"feedback[name]": {required: true},
		"feedback[email]": {required: true, email: true},
		"feedback[subject]": {required: true},
		"feedback[description]": {required: true}
		},
		messages:{
			"feedback[name]":{
				required:"Please enter name"
			},
			"feedback[email]":{
				required:"Please enter email"
			},
			"feedback[subject]":{
				required:"Please enter subject"
			},
			"feedback[description]":{
				required:"Please enter description"
			},
		}
	});
	$(".edit_feedback").validate({
		rules: {
		"feedback[name]": {required: true},
		"feedback[email]": {required: true, email: true},
		"feedback[subject]": {required: true},
		"feedback[description]": {required: true}
		},
		messages:{
			"feedback[name]":{
				required:"Please enter name"
			},
			"feedback[email]":{
				required:"Please enter email"
			},
			"feedback[subject]":{
				required:"Please enter subject"
			},
			"feedback[description]":{
				required:"Please enter description"
			},
		}
	});
	$('#feedbacks_table').DataTable({
		"order": [[ 0, "desc" ]]
	});
});
 
 