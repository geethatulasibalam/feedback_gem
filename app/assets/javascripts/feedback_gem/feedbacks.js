// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
 
 
$(document).ready(function () {
	$("#new_feedback").validate({
		rules: {
		"feedback[name]": {required: true,maxlength:30},
		"feedback[email]": {required: true, email: true,maxlenght:25},
		"feedback[subject]": {required: true,maxlenth:30},
		"feedback[description]": {required: true,maxlength:200}
		},
		messages:{
			"feedback[name]":{
				required:"Please enter name",
				maxlength: "The name should not exceed than 30 characters"
			},
			"feedback[email]":{
				required:"Please enter email",
				maxlength: "The email should not exceed than 25 characters"
			},
			"feedback[subject]":{
				required:"Please enter subject",
				maxlength: "The subject should not exceed than 30 characters"
			},
			"feedback[description]":{
				required:"Please enter description",
				maxlength: "The description should not exceed than 200 characters"
			},
		}
	});
	$(".edit_feedback").validate({
		rules: {
		"feedback[name]": {required: true,maxlength:30},
		"feedback[email]": {required: true, email: true,maxlenght:25},
		"feedback[subject]": {required: true,maxlength:30},
		"feedback[description]": {required: true,maxlength:200}
		},
		messages:{
			"feedback[name]":{
				required:"Please enter name",
				maxlength: "The name should not exceed than 30 characters"
			},
			"feedback[email]":{
				required:"Please enter email",
				maxlength: "The email should not exceed than 25 characters"
			},
			"feedback[subject]":{
				required:"Please enter subject",
				maxlength: "The subject should not exceed than 30 characters"
			},
			"feedback[description]":{
				required:"Please enter description",
				maxlength: "The description should not exceed than 200 characters"
			},
		}
	});
	$('#feedbacks_table').DataTable({
		"order": [[ 0, "desc" ]]
	});
	$('#new_feedback_cancel').click(function(){
		$('#new_feedback')[0].reset();
		var validator = $("#new_feedback").validate();
		validator.resetForm();
	});
	$('#edit_feedback_cancel').click(function(){
		$('.edit_feedback')[0].reset();
		var validator = $(".edit_feedback").validate();
		validator.resetForm();
	});
	$('#new').on('hidden.bs.modal', function (e) {
    $('#new_feedback')[0].reset();
		var validator = $("#new_feedback").validate();
		validator.resetForm();
	});
	$('.edit_feedback_form').on('hidden.bs.modal', function (e) {
   $('.edit_feedback')[0].reset();
		var validator = $(".edit_feedback").validate();
		validator.resetForm();
	});
});
 
 