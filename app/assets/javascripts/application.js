// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
	//= require activestorage
	//= require turbolinks
	//= require jquery
	//= require bootstrap-sprockets
	//= require_tree .

// shop-show画面のコメント入力
// コメントが1文字でも打たれてなかったらボタンを押せない

$(function() {
  if ( $('#text').val().length == 0 ) {
    $('#submit').attr('disabled', 'disabled');
  }
  $('#text').bind('keydown keyup keypress change', function() {
    if ( $(this).val().length > 0 ) {
      $('#submit').removeAttr('disabled');
      $('#submit').css({'background-color': '#FF8856'})
      $('#submit').css({'color': '#FFFFFF'});
    } else {
      $('#submit').attr('disabled', 'disabled');
      $('#submit').css({'background-color': '#F5F5F5'});
    }
  });
});

