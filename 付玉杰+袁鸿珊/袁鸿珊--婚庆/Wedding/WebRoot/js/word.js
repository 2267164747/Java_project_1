function word(){
	var op=document.getElementById("p1").innerHTML;
	var ob=document.getElementById("b").innerHTML;
	var a=0;
	setInterval(function(){
					document.getElementById("b").innerHTML=op.substring(0,a++);	
	},250)
}
