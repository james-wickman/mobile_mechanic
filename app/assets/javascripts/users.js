// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on('turbolinks:load', function() {

	$('.edit_profile_link').on('click', function () {
		$('.edit_profile').removeClass('hidden');
		$('.add_vehicle').addClass('hidden');
	})
	$('.add_vehicle_link').on('click', function () {
		$('.edit_profile').addClass('hidden');
		$('.add_vehicle').removeClass('hidden');
	})

	$('.add_job_link').on('click', function() {
		$('.add_job').removeClass('hidden');
		$('.edit_mechanic_profile').addClass('hidden');
	})
	$('.edit_mechanic_link').on('click', function() {
		$('.add_job').addClass('hidden');
		$('.edit_mechanic_profile').removeClass('hidden');
	})

	$('#dropdownMenuButton').on('click', function (event) {
	    $('.test').toggleClass('show');
	    $('.test1').removeClass('show');
	});
	$('body').on('click', function (e) {
	    if (!$('#dropdownMenuButton').is(e.target) 
	        && $('#dropdownMenuButton').has(e.target).length === 0 
	        && $('.show').has(e.target).length === 0
	    ) {
	        $('.test').removeClass('show');
	    }
	});
	$('#dropdownMenuButton1').on('click', function (event) {
	    $('.test1').toggleClass('show');
	    $('.test').removeClass('show');
	});
	$('body').on('click', function (e) {
	    if (!$('#dropdownMenuButton1').is(e.target) 
	        && $('#dropdownMenuButton1').has(e.target).length === 0 
	        && $('.show').has(e.target).length === 0
	    ) {
	        $('.test1').removeClass('show');
	    }
	});

	window.Parsley.addAsyncValidator('user_email_unique', function (data) {
	    return data.responseJSON.email_unique;
	  }, '/home/unique_user_email');

	window.Parsley.addAsyncValidator('mechanic_email_unique', function (data) {
	    return data.responseJSON.email_unique;
	  }, '/home/unique_mechanic_email');

});












