var refreshRating = function(){
  $('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });
  $('.rated').raty({ path: '/assets',
    readOnly: true,
    score: function() {
      return $(this).attr('data-score');
    }
  });
 };
 $(document).on('turbolinks:load', function() {
    refreshRating();
 
  $('.img-zoom').elevateZoom({
  zoomType: "lens",
  lensShape: "round",
  lensSize: 250
  

  });
});


////////////splash page/////
 $('.enter_link').click(function() { 
        $(this).parent().fadeOut(500);
 });




 //work1 section
 for (var i = 0; i < works1.length; ++i) {
  $("#Work1").append("\
  <div class='col-md-3 col-xs-6'>\
  <h2>" + works1[i].title + " </h2>\
        <a href='#' class='work-img'>\
        <img class='img-responsive' src='" + works1[i].pic + "'>\
        <span class='info'><p class='proj-title'>Title:</p> [Coming Soon]</span>\
      </a>\
      <h3>" + works1[i].dis + " </h3>\
      </div>\
      <!-- Closes col-.. -->\
");
  $(".work-img").mouseenter(function() {
   $(".info", this).show();
  });
  $(".work-img").mouseleave(function() {
   $(".info", this).hide();
  });

  var images = $("#Work1 img");
  if (i % 2 === 0) {
   $(images[i]).css("border", "2px solid DodgerBlue");
  } else {
   $(images[i]).css("border", "2px solid salmon");
  };
 };

 //works2 section
 for (var i = 0; i < works2.length; ++i) {
  $("#Work2").append("\
  <div class='col-md-3 col-xs-6'>\
  <h2>" + works2[i].title + " </h2>\
        <a href='#' class='work-img'>\
        <img class='img-responsive' src='" + works2[i].pic + "'>\
        <span class='info'><p class='proj-title'>Title:</p> [Coming Soon]</span>\
      </a>\
      <h3>" + works2[i].dis + " </h3>\
      </div>\
      <!-- Closes col-.. -->\
");
  $(".work-img").mouseenter(function() {
   $(".info", this).show();
  });
  $(".work-img").mouseleave(function() {
   $(".info", this).hide();
  });

  var images = $("#Work2 img");
  if (i % 2 === 0) {
   $(images[i]).css("border", "2px solid DodgerBlue");
  } else {
   $(images[i]).css("border", "2px solid salmon");
  };
 };



 //closes work section
