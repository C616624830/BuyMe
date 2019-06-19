
var elements;

var elements = document.getElementsByClassName("column");

var i;

	function listView(){
		for(i =0; i<elements.length; i++){
			elements[i].style.width = "96%";
		}
	}

	function gridView(){
		for(i =0; i<elements.length; i++){
			elements[i].style.width = "32%";
		}
	}