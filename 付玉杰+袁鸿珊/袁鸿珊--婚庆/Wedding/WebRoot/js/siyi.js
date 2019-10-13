 function getURL(){
	var oSiyi_img=document.getElementsByClassName("siyi_img");
	var oSiyi_li1=document.getElementsByClassName("siyi_li1");
	var oSiyi_li2=document.getElementsByClassName("siyi_li2");
	var oSiyi_li3=document.getElementsByClassName("siyi_li3");
	ajax("siyi.txt",function(str){
		var arr=eval(str);
		for(var i=0;i<arr.length;i++){
			oSiyi_img[i].style.backgroundImage = "url(" + arr[i].siyi + ")";
		}
	})
	ajax("siyi_li1.txt",function(str){
		var arr1=eval(str);
		for(var j=0;j<arr1.length;j++){
			oSiyi_li1[j].innerHTML=arr1[j].mc;
			
		}
	})
	ajax("siyi_li2.txt",function(str){
		var arr2=eval(str);
		for(var i=0;i<arr2.length;i++){
			oSiyi_li2[i].innerHTML=arr2[i].info;
			
		}
	})
	ajax("siyi_li3.txt",function(str){
		var arr3=eval(str);
		for(var i=0;i<arr3.length;i++){
			oSiyi_li3[i].innerHTML=arr3[i].price;
			
		}
	})
	
}