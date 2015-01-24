$(document).ready(function() {

    var default_size = $("#container").width()/4 - 2;       //-2 for border size
    
    for (var i = 0; i < 4; i++) {
        for (var j = 0; j < 4; j++) {
            $("#container").append("<div class='square'></div>");
        }
        $("#container").append("<div class='new_row'></div>");
    }
    
    $(".square").css("width", default_size);
    $(".square").css("height", default_size);
    
        
    $(".square").mouseenter(function() {
        $(this).addClass("select");
    });
    $(".square").mouseleave(function() {
        $(this).removeClass("select");
        $(this).addClass("highlight");
    });
    
});


function createNew() {
    
    $("#container").empty();
    
    var input = prompt("Enter the dimension of the square grid:");
    var size = $("#container").width()/input - 2;
    
    for (var i = 0; i < input; i++) {
        for (var j = 0; j < input; j++) {
            $("#container").append("<div class='square'></div>");
        }
        $("#container").append("<div class='new_row'></div>");
    }
    
    $(".square").css("width", size);
    $(".square").css("height", size);
    
    $(".square").mouseenter(function() {
        $(this).addClass("select");
    });
    $(".square").mouseleave(function() {
        $(this).removeClass("select");
        $(this).addClass("highlight");
    });

}




