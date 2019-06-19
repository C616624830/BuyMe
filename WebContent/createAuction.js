$(document).ready(function() {
	
    $select = $("#selectType");
	
    $("#SmartPhoneInfo").hide();
    $("#tvInfo").hide();
    $("#laptopInfo").hide();
    $("#headphoneInfo").hide();
    
    $select.change(function(){
	    if($(this).val() == "selectoption"){      
	        $("#SmartPhoneInfo").hide();
	        $("#tvInfo").hide();
	        $("#laptopInfo").hide();
	        $("#headphoneInfo").hide();
	    }
	    
	    if($(this).val() == "smartphone"){
	        $("#tvInfo").hide();
	    	$("#headphoneInfo").hide();
	        $("#laptopInfo").hide(); 
	        
	        if($("#SmartPhoneInfo").is(":hidden")){
	            $("#SmartPhoneInfo").show();            
	        }
	    }
	    
	    if($(this).val() == "tv"){
	        $("#SmartPhoneInfo").hide();
	        $("#headphoneInfo").hide();
            $("#laptopInfo").hide();            

	        if($("#tvInfo").is(":hidden")){
	            $("#tvInfo").show();            
	        }
	    }
	    
	    if($(this).val() == "laptop"){
	        $("#SmartPhoneInfo").hide();
	        $("#tvInfo").hide();
	        $("#headphoneInfo").hide();

	        if($("#laptopInfo").is(":hidden")){
	            $("#laptopInfo").show();            
	        }
	    }
	    
	    if($(this).val() == "headphones"){
	        $("#SmartPhoneInfo").hide();
	        $("#laptopInfo").hide();
	        $("#tvInfo").hide();

	        if($("#headphoneInfo").is(":hidden")){
	            $("#headphoneInfo").show();            
	        }
	        	        
	    }
	    
	       
		});
});