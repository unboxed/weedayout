$(document).ready(function(){
    $('#location').click(function(){
    $(this).val("");
  });
});


$(document).ready(function(){
	$('#location').bind('blur',function(){
		if(!$(this).val()){
			$(this).val("Enter your town or postcode...");}
	});
});
