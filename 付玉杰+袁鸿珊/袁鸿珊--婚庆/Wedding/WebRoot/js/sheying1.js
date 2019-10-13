window.onload=function(){
	var oBaiye=document.getElementsByClassName("baiye");
	var oLunbo=document.getElementsByClassName("lunbo");
	for(var i=0;i<oBaiye.length;i++){
				oBaiye[i].onmouseover=function(){
					for(var j=0;j<oBaiye.length;j++){
						oBaiye[j].style.width="50px";
					}
					this.style.width="400px";
				}
			}
	var ojieshao_tu=document.getElementsByClassName("jieshao_tu");
	ojieshao_tu.onmouseover=function(){
		
	}
}
