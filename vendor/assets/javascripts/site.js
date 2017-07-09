var refreshRating = function() {
  $('.rating').raty({
    starHalf: '<%= asset_path 'star-half.png' %>',
    starOff: '<%= asset_path 'star-off.png' %>',
    starOn: '<%= asset_path 'star-on.png' %>',
    scoreName: 'comment[rating]'
  });
    $('.rated').raty({
    starHalf: '<%= asset_path 'star-half.png' %>',
    starOff: '<%= asset_path 'star-off.png' %>',
    starOn: '<%= asset_path 'star-on.png' %>',
    readOnly: true,
    score: function() {
      return $(this).attr('data-score');
    }
  });
};

$(document).on('turbolinks:load', function() {
    refreshRating();

    $('.img-zoom').elevateZoom();
});


var jumboHeight = $('.jumbotron').outerHeight();
function parallax(){
    var scrolled = $(window).scrollTop();
    $('.bg').css('height', (jumboHeight-scrolled) + 'px');
}

$(window).scroll(function(e){
    parallax();
});




// mouse funtion


