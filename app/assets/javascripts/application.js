// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//

//= require jquery-2.1.4.min
//= require bootstrap.min
//= require jquery.circlechart
//= require nivo-lightbox.min

// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require_tree .
//= require_tree ./channels
//= require cable

function stickyFooter() {
    var height = $('.js-footer').outerHeight(true) + 30;

    $('body').css('padding-bottom', height);
}

$(window).on('load', function() {
    stickyFooter();
});

$(window).on('resize', function() {
    stickyFooter();
});

$(window).on('reload-sticky-footer', function() {
    stickyFooter();
});
