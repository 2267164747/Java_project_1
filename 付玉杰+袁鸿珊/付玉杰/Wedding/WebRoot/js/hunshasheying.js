function getURL(){
	var oHunsha_img=document.getElementsByClassName("hunsha_img");
	var oSheying_li1=document.getElementsByClassName("sheying_li1");
	var oSheying_li2=document.getElementsByClassName("sheying_li2");
	var oSheying_li3=document.getElementsByClassName("sheying_li3");
	ajax("sheying.txt",function(str){
		var arr=eval(str);
//		alert(arr.length)
		for(var i=0;i<arr.length;i++){
			oHunsha_img[i].style.backgroundImage = "url(" + arr[i].sheying + ")";
//			break;
		}
	})
	ajax("sheying_li1.txt",function(str){
		var arr1=eval(str);
		for(var j=0;j<arr1.length;j++){
			oSheying_li1[j].innerHTML=arr1[j].sy;
			
		}
	})
	ajax("sheying_li2.txt",function(str){
		var arr2=eval(str);
		for(var i=0;i<arr2.length;i++){
			oSheying_li2[i].innerHTML=arr2[i].info;
			
		}
	})
	ajax("sheying_li3.txt",function(str){
		var arr3=eval(str);
		for(var i=0;i<arr3.length;i++){
			oSheying_li3[i].innerHTML=arr3[i].price;
			
		}
	})
		        $(document).snowfall('clear');
		        $(document).snowfall({
		            image: "img/yqq/huaban.png",
		            flakeCount:30,
		            minSize: 5,
		            maxSize: 22
		        });
    var ogao_a=document.getElementById("gao_a");
    var odi_a=document.getElementById("di_a");
    var omoren_a=document.getElementById("moren_a");
    var omoren=document.getElementById("moren");
    var ogao=document.getElementById("gao");
    var odi=document.getElementById("di");
    ogao_a.onclick=function(){
    	omoren.style.display="none";
    	ogao.style.display="block";
    	odi.style.display="none";
    }
    odi_a.onclick=function(){
    	omoren.style.display="none";
    	ogao.style.display="none";
    	odi.style.display="block";
    }
    omoren_a.onclick=function(){
    	omoren.style.display="block";
    	ogao.style.display="none";
    	odi.style.display="none";
    }
    
}

