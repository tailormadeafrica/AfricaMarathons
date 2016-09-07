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
//= require refinerycms-pods
//= require jquery.colorbox
//= require jquery_nested_form
//= require bootstrap-datepicker
//= require_tree .

$(document).ready(function() {


    $(".cboxElement").colorbox({
        maxWidth: "90%",
        maxHeight: "90%"
    });

    //$(".datepicker_it").datepicker({ format: "yyyy-mm-dd", autoclose: true });

//  $(".activity_video_url").colorbox({iframe:true, innerWidth:640, innerHeight:390, transition:"elastic"});

    $('.carousel').carousel();

    $('.submit_booking').on('click', function(){
        if ($('.accept').is(":checked")) {
        }
        else {
            alert('Please checked the Acceptance Box');
            return false;
        }
    });


    //////////////////////////////////////////

  var slider = new MasterSlider();

  slider.control('arrows');

  slider.setup('masterslider' , {
    width:1920,
    height:935,
    space:0,
    layout:'fullscreen',
    loop:true,
    preload:0,
    autoplay:false,
    view:'fade',
    overPause:false
  });

    var post_slider = new MasterSlider();

    //slider.control('arrows');

    post_slider.setup('post_masterslider' , {
        width:1920,
        height:935,
        space:0,
        layout:'fullwidth',
        loop:true,
        preload:0,
        autoplay:false,
        view:'fade',
        overPause:false
    });

    $(function(){
        $('.navbar-hamburger').click(function(){
            $('.navbar-hamburger').toggleClass('navbar-on');
            $('nav').fadeToggle();
            $('nav').removeClass('nav-hide');
        });
    });


    $('a[href*=#]:not([href=#])').click(function() {
        $('.navbar-on').click();
        if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
            var target = $(this.hash);
            target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
            if (target.length) {
                $('html,body').animate({
                    scrollTop: target.offset().top
                }, 1000);
                return false;
            }
        }
    });

    $('.arrow').click(function() {
        $('html,body').animate({
            scrollTop: $('#welcome').offset().top
        }, 1000);
        return false;
    });

    $('#accommodations_slider').bxSlider({
        slideWidth: 165,
        slideMargin: 25,
        minSlides: 1,
        maxSlides: 6,
        moveSlides: 1,
        auto: false,
        pager: false,
        infiniteLoop: false,
        speed: 1000,
        pause: 6000
    });

    $('#locations_slider').bxSlider({
        slideWidth: 165,
        slideMargin: 25,
        minSlides: 1,
        maxSlides: 6,
        moveSlides: 1,
        auto: false,
        pager: false,
        infiniteLoop: false,
        speed: 1000,
        pause: 6000
    });

    $('.location_btn').click(function() {
        $('.location_nav').toggleClass('open');
    });

    ///////////////////////////////////////////

    WaterMark('input#inquiry_name','Name');
    WaterMark('input#inquiry_email','Email');
    WaterMark('input#inquiry_phone','Phone');
    WaterMark('input#inquiry_captcha','Enter code here');
    WaterMark('textarea#inquiry_message','Message');

});


function WaterMark(id_name,watermark){
    //init, set watermark text and class
    $(id_name).attr("placeholder",watermark).addClass('watermark');
    //if blur and no value inside, set watermark text and class again.
    $(id_name).blur(function(){
        if ($(this).attr("placeholder").length == 0){
            $(this).attr("placeholder", watermark).addClass('watermark');
        }
    });
    //if focus and text is watermrk, set it to empty and remove the watermark class
    $(id_name).focus(function(){
        if ($(this).attr("placeholder") == watermark){
            $(this).attr("placeholder",'').removeClass('watermark');
        }
    });
}

$(window).load(function() {

    var $container = $('.portfolio-isotope');
    // initialize
    $container.isotope({
        filter : ".portfolio-item",
        layoutMode: 'masonry'

    });
});

new UISearch( document.getElementById( 'sb-search' ) );

