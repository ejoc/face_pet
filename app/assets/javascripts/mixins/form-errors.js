$(document).ajaxError(function(event, xhr, options, exc) {
	var errors = JSON.parse(xhr.responseText);
	var er = "<ul>";
	for(var i = 0; i < errors.length; i++) {
		var list = errors[i]
		er += "<li>" + list + "</li>";
	}
	er += "</ul>"
	$("#error_explanation").html(er);
});