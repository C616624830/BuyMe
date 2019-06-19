$(document).ready(function() {
   $('.btn').click(function(e) {
 
      $('.drop-down').hide(500);  
     if ($('.drop-down').is(":visible") == false) { 
        $(this).next().toggle(500);
    }
      
    });
});

