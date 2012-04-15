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
