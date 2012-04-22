// Copyright Kussainov Yerlan. 2012

// login form
$(document).ready(function() {
  $('#login-link').toggle(function() {
    $(this)
      .addClass('active-login-link')
      .next('form')
      .animate({'height': 'show'}, 200);
  }, function() {
    $(this)
      .next('form ')
      .slideUp('fast')
      .prev('a')
      .removeClass('active-login-link');
  });  
});

// description in category
$(document).ready(function() {
  $('#category-description h1').toggle(function() {
    $('.hide-description').slideDown('fast');
  }, function() {
    $('.hide-description').slideUp('fast');
  });
  
});

// job -> fancybox
$(document).ready(function() {
  $(".show-job-image a").fancybox();       
  $(".slides_container a").fancybox();
});

// form comment show
$(document).ready(function() {
  $('#add-comment-link').toggle(function() {
    $('#form-comment').slideDown();
  }, function() {
    $('#form-comment').slideUp();
  });  
});

$(document).ready(function() {
  $("#slides").slides({
    paginationClass: 'pagination_sl',
    generatePagination: false,
    preloadImage: '/assets/loading.gif',
    play: 3000
  });
});


// call live comments
$(document).ready(function() {
  $('#live-click').toggle(function() {
    $('.live-comments').slideUp('fast');
    return false;
  }, function() {
    $('.live-comments').slideDown('fast');
    return false;
  });
  
});



$(document).ready(function() {
  // clone image
   $('#randomusers ul li a img').each(function(){
       var el = $(this);
       el.css({"position":"absolute"}).wrap("<div class='img_wrapper' style='display: inline-block'>").clone().addClass('img_grayscale').css({"position":"absolute","z-index":"998","opacity":"0"}).insertBefore(el).queue(function(){
           var el = $(this);
           el.parent().css({"width":'50px',"height":'50px'});
           el.dequeue();
       });
       this.src = grayscale(this.src);
   });
});


// black and white
$(window).load(function(){

    // Fade in images so there isn't a color "pop" document load and then on window load
    $("#randomusers ul li a img").fadeIn(200);


    // Fade image
    $('#randomusers ul li a img').mouseover(function(){
        $(this).parent().find('img:first').stop().animate({opacity:1}, 400);
    })
    $('.img_grayscale').mouseout(function(){
        $(this).stop().animate({opacity:0}, 400);
    });
});

// Grayscale w canvas method
function grayscale(src){
    var canvas = document.createElement('canvas');
    var ctx = canvas.getContext('2d');
    var imgObj = new Image();
    imgObj.src = src;
    canvas.width = imgObj.width;
    canvas.height = imgObj.height;
    ctx.drawImage(imgObj, 0, 0);
    var imgPixels = ctx.getImageData(0, 0, canvas.width, canvas.height);
    for(var y = 0; y < imgPixels.height; y++){
        for(var x = 0; x < imgPixels.width; x++){
            var i = (y * 4) * imgPixels.width + x * 4;
            var avg = (imgPixels.data[i] + imgPixels.data[i + 1] + imgPixels.data[i + 2]) / 3;
            imgPixels.data[i] = avg;
            imgPixels.data[i + 1] = avg;
            imgPixels.data[i + 2] = avg;
        }
    }
    ctx.putImageData(imgPixels, 0, 0, 0, 0, imgPixels.width, imgPixels.height);
    return canvas.toDataURL();
}