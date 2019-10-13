function getURL(){
	var oHunsha_img=document.getElementsByClassName("hunsha_img");
	var oHunsha_li1=document.getElementsByClassName("hunsha_li1");
	var oHunsha_li2=document.getElementsByClassName("hunsha_li2");
	var oHunsha_li3=document.getElementsByClassName("hunsha_li3");
	ajax("hunsha.txt",function(str){
		var arr=eval(str);
//		alert(arr.length)
		for(var i=0;i<arr.length;i++){
			oHunsha_img[i].style.backgroundImage = "url(" + arr[i].hunsha + ")";
//			break;
			//oHunsha_img存储所有Name="hunsha_img"字段
			//eval中存储着具体为.hunsha的url字段；
			//如此一来完成赋值；
		}
	})
	ajax("hunsha_li1.txt",function(str){
		var arr1=eval(str);
		for(var j=0;j<arr1.length;j++){
			oHunsha_li1[j].innerHTML=arr1[j].mc;
			
		}
	})
	ajax("hunsha_li2.txt",function(str){
		var arr2=eval(str);
		for(var i=0;i<arr2.length;i++){
			oHunsha_li2[i].innerHTML=arr2[i].info;
			
		}
	})
	ajax("hunsha_li3.txt",function(str){
		var arr3=eval(str);
		for(var i=0;i<arr3.length;i++){
			oHunsha_li3[i].innerHTML=arr3[i].price;
			
		}
	})
		        $(document).snowfall('clear');
		        $(document).snowfall({
		            image: "img/yqq/huaban.png",
		            flakeCount:30,
		            minSize: 5,
		            maxSize: 22
		        });
}

