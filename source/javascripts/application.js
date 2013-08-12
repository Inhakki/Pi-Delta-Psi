//= require jquery
//= require foundation 
//= require "foundation.orbit"
//= require_self

$(function(){
    $(document).foundation();

    $('.scrollTo').on('click', function(e) {
        e.preventDefault();
        Foundation.lib_methods.scrollTo($(window), $($(e.currentTarget).attr('href')).offset().top, 200);
    });

    $('img').error(function(){
        $(this).attr('src', 'images/placeholder.png');
    });
});
