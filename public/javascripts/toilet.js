$(document).ready(function(){
	$('#toilet_name').bind('focusout', function(){
		if(!$(this).val()){
			$(this).val('ra');
		}
	});
	
	$('#toilet_address').bind('focusout', function(){
		if($(this).val()){
			
		}
	});
});