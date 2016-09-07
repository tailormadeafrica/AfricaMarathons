	
$(document).ready(function(){
 $.ajaxSetup( {cache:false} );
	

	$(window).scroll( function() {
		console.dir($(window).scrollTop());

        if ( $(window).scrollTop() > 200 ) {
           loadDiv('.div1');
        }

        if ( $(window).scrollTop() > 700 ) {
           loadDiv('.div2');
        }

        if ( $(window).scrollTop() > 1100 ) {
           loadDiv('.div3');
        }

        if ( $(window).scrollTop() > 1500 ) {
           loadDiv('.div4');
        }
        
         if ( $(window).scrollTop() > 2000 ) {
           loadDiv('.div5');
        }

        if ( $(window).scrollTop() > 2300 ) {
           loadDiv('.div6');
        }

	});

	function loadDiv(element) {
		$(element).fadeIn('slow', function() {
			$(this).fadeTo("slow", 1);
		});
	}


	
});