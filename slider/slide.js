var current = 1;
var next = 2;


$(document).ready(function() {
    
    $('img#1').fadeIn(300);
    
    runSlide();
    
    $('img').hover(
    function() {
        stopSlide();
    },
    function() {
        runSlide();
    }
    );
    
});


function runSlide() {
    
    counter = $('img').size();

    loop = setInterval(function() {
        
        if (next > counter) {
            next = 1;
        }
            
        $('img#' + current).fadeOut(300);
        $('img#' + next).fadeIn(300);
        
        current = next;
        next += next;
        
    }, 3000)
        
}



function prevSlide() {
    var newSlide = current - 1;
    navSlide(newSlide);
}


function nextSlide() {
    var newSlide = current + 1;
    navSlide(newSlide);
}


function stopSlide() {
    window.clearInterval(loop);
}


function navSlide(slide) {
    
    stopSlide();

    if (slide > counter) {
        slide = 1;
    }
    else if (slide < 1) {
        slide = counter;
    }
    
            
    $('img#' + current).fadeOut(300);
    $('img#' + slide).fadeIn(300);
        
    current = slide;
    next = slide + 1;
    
    runSlide();

}














    

    