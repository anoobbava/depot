// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require jquery.raty
//= require ratyrate
//= require bootstrap-sprockets
//= require_tree .

$(document).ready(function(){
  $("form#login_form").bind("ajax:error", function(e, data, status, xhr) {
    $('.error-message-login').show();
  });

  $('.message-signin').click(function(){
    $('#login_form').hide();
    $('#signup_form').show();
  });
  $('.message-signup').click(function(){
    $('#login_form').show();
    $('#signup_form').hide();
  });

  $('.test-href').click(function(){
    $('#signup_form').hide();
  });

});