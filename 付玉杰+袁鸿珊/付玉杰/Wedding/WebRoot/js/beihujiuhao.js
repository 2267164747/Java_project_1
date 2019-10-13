function aa(){
	   var Omhk =document.getElementById("MHk");
	   var Oyu =document.getElementById("YuYue_box1");
	   var xp = document.getElementById("YuYue_box");
	   var Hr =document.getElementById("hr6");
	   var Oyh =document.getElementById("YHK");
	   var Jz  =document.getElementById("JaiZai");
	   var Jzh =document.getElementById("JaiZaiKuang");
	   var Og =document.getElementById("GuanBi");
	   var Kj =document.getElementById("B_form");
	   var Footer =document.getElementsByClassName("bottom")[0];
	   var Cd =document.getElementById("CaiDan");
	   var Tj =document.getElementById("TuiJian");
	   Jz.onclick=function(){
		Cd.style.top = "4570px";
	   	Tj.style.top="4790px";
	  	Hr.style.display="block";
	  	Jz.style.display="none";
	  	Jzh.style.display="block";
	  	Kj.style.height="5400px";
	  	Footer.style.top="5640px";
	  }
	
	   Oyh.onclick=function(){
	   	Omhk.style.display="block";
	   	Oyu.style.display="block";
	   }
	   Og.onclick=function(){
	   	Omhk.style.display="none";
	   	Oyu.style.display="none";
	   }
	   document.onscroll = function(){
	   	if(window.scrollY>180&&window.scrollY<3060)
	   	{
	   		xp.style.position = "fixed";
	   		xp.style.top = "180px"
	   		xp.style.left = "900px"
	   	}
	   	else{
	   		xp.style.position = "absolute";
	   		xp.style.top = "180px"
	   		xp.style.left = "900px"
	   		
	   	}
	   }
	  
}
