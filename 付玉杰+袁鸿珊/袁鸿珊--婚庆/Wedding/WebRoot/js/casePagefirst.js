function casepagefirst(){
	var phone = document.getElementById("phone");
	var booksub = document.getElementById("bookSub");
	var p = document.getElementsByClassName("errorMes");
	var reg = /\d{11}/;
	booksub.onclick=function(){
		if(reg.test(phone.value)){
			console.log("dfadklsj");
			alert("预约成功");
		}else{
			p.style.visibility="visible";
		}
			
	}	
	var caseRight = document.getElementsByClassName("caseRight")[0];
	document.onscroll=function(){
		if(window.scrollY<3000){
			caseRight.style.position="fixed";
		}
		else{
			caseRight.style.position="absolute";
		}
	}
}
