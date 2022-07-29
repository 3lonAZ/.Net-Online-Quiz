// '.tbl-content' consumed little space for vertical scrollbar, scrollbar width depend on browser/os/platfrom. Here calculate the scollbar width .
$(window).on("load resize ", function() {
  var scrollWidth = $('.tbl-content').width() - $('.tbl-content table').width();
  $('.tbl-header').css({'padding-right':scrollWidth});
}).resize();
0
$(document).ready(function() {
  $('.delete-query').click(function() {
    $('.delete-query').prop('disabled',true);
    $('#section-alertBox').slideToggle();
    $('#section-admin,footer').css('opacity','0.4');
    $('#alert-footer').css('opacity','1');
    $('#alert_delete').mouseover(function() {
        $('#emoji').attr('src', '../images/sad.png');
    });
    $('#alert_cancel').mouseover(function() {
      $('#emoji').attr('src','../images/good.png');
    });
    $('#alert_delete,#alert_cancel').mouseout(function() {
      $('#emoji').attr('src','../images/default.png');
    });
  });
  $('#alert_cancel').click(function(){
    $('.delete-query').prop('disabled',false);
    $('#section-alertBox').slideToggle();
    $('#section-admin,footer').css('opacity','1');
  });
    $(".add-query").click(function () {
        window.location.replace("AddQuery.aspx");
    });  
});