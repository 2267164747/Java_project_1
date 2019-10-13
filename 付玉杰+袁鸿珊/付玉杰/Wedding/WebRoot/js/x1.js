
window.onload=function()
{
	var oBig_img=document.getElementsByClassName("big_img");
	var oSmall_img=document.getElementsByClassName("small_img");
	for(var i = 0;i<oSmall_img.length;i++){
		oSmall_img[i].aa = i;
		oSmall_img[i].onmouseover=function(){
			for(var j = 0;j<oBig_img.length;j++){
				oBig_img[j].style.display = "none";
			}
			oBig_img[this.aa].style.display = "block";
		}
	}
	
	ajax("xiang1.txt",function(str){
		var arr = eval(str);
		for(var i=0;i<arr[0].length;i++){
			oSmall_img[i].style.backgroundImage = "url("+arr[0][i].x1+")";
		}
//		alert(arr.length);
	})
	ajax("xiang1.txt",function(str){
		var arr = eval(str);
		for(var i=0;i<arr[1].length;i++){
			oBig_img[i].style.backgroundImage = "url("+arr[0][i].x1+")";
		}
	})
		for(var i = 0;i<4;i++)
		{
			oSmall_img[i].index = i;
			oSmall_img[i].onclick = function()
			{
				var oThis = this;
				ajax("xiang1.txt",function(str)
				{
					var arr = eval(str);
					oBig_img.style.backgroundImage = "url("+arr[1][oThis.index].x1+")";
					oSmall_img.style.backgroundImage = "url("+arr[0][oThis.index].x1+")";
				})
			}
		}
}
	

