$(document).ready(function(){
  $('#results tbody tr:even').addClass('zebra');
  $('#results tbody tr').mouseover(function(){
    $(this).addClass('zebraHover');
  });
  $('#results tbody tr').mouseout(function(){
    $(this).removeClass('zebraHover');
  });
});