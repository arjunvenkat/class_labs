// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require private_pub
//= require foundation
//= require_tree .



$(document).ready(function () {
  $("[rel=tooltip]").tooltip();

  $('.tooltip-test').qtip({
   content: 'I\'m at the top right of my target',

   style: {
         width: 300,
         padding: 5,
         background: '#A2D959',
         color: 'green',
         textAlign: 'center',
         border: {
            width: 7,
            radius: 5,
            color: 'red'
         },
         tip: 'topLeft',
         name: 'dark' // Inherit the rest of the attributes from the preset dark style
      }
});

});
