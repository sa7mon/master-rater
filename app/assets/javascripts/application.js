// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
// If something breaks, add back: //= require_tree . 
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require star-rating.min.js

$(document).on('ready', function(){
    $('#input-2').rating({
        step: 1,
        starCaptions: {1: 'Very Poor', 2: 'Poor', 3: 'Ok', 4: 'Good', 5: 'Very Good'},
        starCaptionClasses: {1: 'text-danger', 2: 'text-warning', 3: 'text-info', 4: 'text-primary', 5: 'text-success'}
    });
});

document.getElementById('artistsButton').onclick = function() {
    window.location = '/artits/'; 
}

function showModal() {
  document.getElementById('modal').style.display='block';
}

// Unused as of right now, will be used when we add an exit button to the modal
function closeModal() {
      document.getElementById('modal').style.display='none';
    } 