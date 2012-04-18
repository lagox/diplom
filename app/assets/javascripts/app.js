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
    play: 3000,
    effect: 'fade'
  });
});

