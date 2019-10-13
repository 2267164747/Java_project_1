function getURL(){
	var oShouye_middle=document.getElementsByClassName("shouye_middle");
	var oShouye_middle_wz=document.getElementsByClassName("shouye_middle_wz");
	
	ajax("middle_photo.txt",function(str){
		var arr=eval(str);
//		alert(arr.length)
		for(var i=0;i<arr.length;i++){
			oShouye_middle[i].style.backgroundImage = "url(" + arr[i].shouye + ")";
			oShouye_middle[i].style.backgroundSize = "100% 100%";
//			break;
		}
	})
	ajax("middle_font.txt",function(str){
		var arr1=eval(str);
		for(var j=0;j<arr1.length;j++){
			oShouye_middle_wz[j].innerHTML=arr1[j].wz;
		}
	})
	
}
