function ax(){	
	var ocase=document.getElementById("case");
	var casebox = document.getElementById("caseBox")
	ocase.onmouseover=function(){
				  	var sence = document.getElementsByClassName("content_case_scene");
				  	for(var k = 0;k<sence.length;k++)
					{
//							console.log(sence.length);
						sence[k].onmouseover = function(){
						oThis = this;
						var big = oThis.getElementsByClassName("img_big")[0];
						var oTher = oThis.getElementsByClassName("img_buttom");
						for(var g = 0;g<oTher.length;g++)
						{
							oTher[g].onmouseover = function(){
								big.style.backgroundImage = this.style.backgroundImage;
							}
						}
						}
					}	
					
				}
	//第一行的特效
	ajax("rowFirst.txt",function(st){
				var rowFirst = eval(st);
				var box = document.createElement("div");
				box.className = "content_row";
//				var box = document.getElementsByClassName("content_row")[0];
				for(var f = 0;f<rowFirst.length;f++)
				{
					var asd = document.createElement("div");
					asd.className = "content_case_scene";
//					var oLi1 = document.getElementsByClassName("content_title");
					
					var big = document.createElement("div");
					big.className="img_big";
					var small = document.createElement("div");
					small.className="img_small";
					var small_left = document.createElement("div");
					small_left.className="img_small_left  img_buttom";
					var small_right = document.createElement("div");
					small_right.className="img_small_right  img_buttom";
					var small_mid=document.createElement("div");
					small_mid.className="img_small_mid  img_buttom";
					
					var scene = document.createElement("div");
					scene.className="content_case_scene";
					var ul = document.createElement("ul");
					var a = document.createElement("a");
							a.href=rowFirst[f].http;
							a.style.textDecoration="none";
					var oLi0 = document.createElement("li");
					var oLi1 = document.createElement("li");
		//			var  a = document.createElement("a");
					var oLi2 = document.createElement("li");
					var p1 = document.createElement("span");
					var p2 = document.createElement("span");
					var img1 = document.createElement("div");
					var img2 = document.createElement("div");
					ul.className = "ul1";
					oLi0.className = "content_img";
					oLi1.className ="content_title";
					oLi2.className="content_person"
					p1.className="p1";
					p2.className="p2";
					img1.className='content_img1';
					img2.className='content_img2';		
//					oLi0.style.backgroundImage ="url(img/caseImg/"+date[i].img+")";
					oLi1.innerHTML = rowFirst[f].title;
					p1.innerHTML =rowFirst[f].person; 
					p2.innerHTML =rowFirst[f].add;
					oLi2.appendChild(p1);
					oLi2.appendChild(p2);
					oLi2.appendChild(img1);
					oLi2.appendChild(img2);
					ul.appendChild(a);
					a.appendChild(oLi0);
					a.appendChild(oLi1);
					a.appendChild(oLi2);
					asd.appendChild(ul);
					
			
					big.style.backgroundImage = "url("+rowFirst[f].big +")";
					small_left.style.backgroundImage = "url("+rowFirst[f].small_left+")";
					small_right.style.backgroundImage = "url("+rowFirst[f].small_right+")";
					small_mid.style.backgroundImage = "url("+rowFirst[f].small_mid+")";
					small.appendChild(small_left);
					small.appendChild(small_mid);
					small.appendChild(small_right);
					oLi0.appendChild(big);
					oLi0.appendChild(small);
					
					box.appendChild(asd);
					ocase.appendChild(box);
				}
			});	
	ajax("date.txt",function(str){
		var date = eval(str);	
			for(var i = 0;i < date.length;i++){
			var scene = document.createElement("div");
			scene.className="content_case_scene";
			var ul = document.createElement("ul");
			var a = document.createElement("a");
					a.href="#";
					a.style.textDecoration="none";
			var oLi0 = document.createElement("li");
			var oLi1 = document.createElement("li");
			var oLi2 = document.createElement("li");
			var p1 = document.createElement("span");
			var p2 = document.createElement("span");
			var img1 = document.createElement("div");
			var img2 = document.createElement("div");
			ul.className = "ul1";
			oLi0.className = "content_img";
			oLi1.className ="content_title";
			oLi2.className="content_person"
			p1.className="p1";
			p2.className="p2";
			img1.className='content_img1';
			img2.className='content_img2';		
			oLi0.style.backgroundImage ="url(img/caseImg/"+date[i].img+")";
			oLi1.innerHTML = date[i].title;
			p1.innerHTML =date[i].person; 
			p2.innerHTML =date[i].add;
//			oLi1.appendChild(a);
			oLi2.appendChild(p1);
			oLi2.appendChild(p2);
			oLi2.appendChild(img1);
			oLi2.appendChild(img2);
			ul.appendChild(a);
			a.appendChild(oLi0);
			a.appendChild(oLi1);
			a.appendChild(oLi2);
			scene.appendChild(ul);
			ocase.appendChild(scene);
		}

	});
	
	ajax("scroll.txt",function(stri){
		var scroll = eval(stri);
		console.log(scroll)
		var oScroll = document.createElement("div");
		oScroll.className = "scroll";
		var oScroll_mini = document.createElement("div");
		oScroll_mini.className = "scroll_mini";
		oScroll_mini.style.width="800px";
		var oimg = document.createElement("img");
		oimg.className = "img";
		oimg.style.backgroundImage = "url("+scroll[0].scroll+")";
		oScroll_mini.appendChild(oimg);
		oScroll.appendChild(oScroll_mini);
		
		
		for(var i = 1 ;i < scroll.length;i++){
			var oScroll_mini = document.createElement("div");
			oScroll_mini.className = "scroll_mini";
			var oimg = document.createElement("img");
			oimg.className = "img";
			oimg.style.backgroundImage = "url("+scroll[i].scroll+")";
			oScroll_mini.appendChild(oimg);
			oScroll.appendChild(oScroll_mini);
		}
		casebox.appendChild(oScroll);
 		//实现轮播
 		var oScroll = document.getElementsByClassName("scroll")[0];
 		var scroll_mini = oScroll.getElementsByClassName("scroll_mini");
		var a = 0;
		setInterval(function(){
			for(var i = 0;i<scroll_mini.length;i++)
			{
				scroll_mini[i].style.width = "100px"
			}
			scroll_mini[a].style.width = "800px";
			a++;
			if(a==scroll_mini.length)
			{
				a = 0;
			}
		},1000);
	});

}
function daohang(){
	//右侧的导航栏
	var top = document.getElementById("top");
	var tel = document.getElementById("tel");
	var ma = document.getElementById("ma"); 
	var telbig = document.getElementById("telbig");
	var mabig = document.getElementById("mabig");
	var telText = document.getElementById("telText");
	var telSub = document.getElementById("telSub");
	var reg = /\d{11}/;
	telSub.onclick=function(){
		if(reg.test(telText.value)){
			alert("预约成功");
		}else{
			alert("您输入的手机号无效");
		}
	}
	
	document.onscroll = function(){
		if(window.scrollY>500)
		{
			top.style.display = "block"
			top.onmouseover=function(){
				top.style.backgroundImage="url(img/caseImg/tree.png)";
				top.style.backgroundPosition="-45px 0";
				
			}
			top.onmouseout=function(){
				top.style.backgroundImage="url(img/caseImg/tree.png)";
				top.style.backgroundPosition="0 0";
			}
		}
		else{
			top.style.display = "none"
		}
	}
	tel.onmouseover=function(){
		tel.style.backgroundImage="url(img/caseImg/tree.png)";
		tel.style.backgroundPosition="-45px -45px";
		telbig.style.display="block";
	}
	tel.onmouseout=function(){
		tel.style.backgroundImage="url(img/caseImg/tree.png)";
		tel.style.backgroundPosition="0px -45px";
		telbig.style.display="none";
	}
	ma.onmouseover=function(){
		ma.style.backgroundImage="url(img/caseImg/tree.png)";
		ma.style.backgroundPosition="-45px -90px";
		mabig.style.display="block";
	}
	ma.onmouseout=function(){
		ma.style.backgroundImage="url(img/caseImg/tree.png)";
		ma.style.backgroundPosition="0px -90px";
		mabig.style.display="none";
	}
	//函数调用
	telbig.onmouseover=function(){
		
		telbig.style.backgroundImage="url(img/caseImg/bohaobg.jpg)";
		telbig.style.display = "block"
	}
	telbig.onmouseout=function(){
		telbig.style.backgroundImage="url(img/caseImg/bohaobg.jpg)";
		telbig.style.display = "none"
	}
	mabig.onmouseover=function(){
		mabig.style.backgroundImage="url(img/caseImg/bohaobg.jpg)";
		mabig.style.display = "block"
	}
	mabig.onmouseout=function(){
		mabig.style.backgroundImage="url(img/caseImg/ewmImg.jpg)";
		mabig.style.display = "none"
	}
}
