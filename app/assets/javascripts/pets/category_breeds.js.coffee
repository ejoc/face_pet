ready = ->
	# $('#form-group-breed').hide()
	breeds = $('#pet_breed_id').html()
	$('#categories').change ->
		category = $('#categories :selected').text()
		options = $(breeds).filter("optgroup[label='#{category}']").html()
		if options
			$('#pet_breed_id').html(options)
			$('#pet_breed_id').trigger("chosen:updated");
			$('#form-group-breed').show()
		else
			$('#pet_breed_id').empty()
			$('#form-group-breed').hide()


$(document).on('turbolinks:load', ready)