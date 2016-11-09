dollar_signs.js

$(document).ready(function(){
	$('textarea').keydown(function(){
		var total_chars = 140;
		$('#count'.html(total_chars-this.value.length))
	})
});