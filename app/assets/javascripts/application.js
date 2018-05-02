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
//= require jquery
//= require bootstrap-sprockets
//= require gritter
//= require rails-ujs
//= require jquery.purr
//= require best_in_place
//= require turbolinks
//= require_tree .

$(document).ready(function() {
    /* Activating Best In Place */
    jQuery(".best_in_place").best_in_place();
});

var output = jQuery(document.createElement('form'))
        .attr('action', 'javascript:void(0)')
        .attr('style', 'display:inline'),
    selected = '';
var select_elt = jQuery(document.createElement('select'));
select_elt.attr('class', this.inner_class !== null ? this.inner_class : '');
var currentCollectionValue = this.collectionValue,
    a, key, value, _i, _len, _ref;