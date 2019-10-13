
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
}
	

