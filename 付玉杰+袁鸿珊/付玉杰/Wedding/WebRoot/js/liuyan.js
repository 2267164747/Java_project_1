			function tianjia(){
				var obtn=document.getElementById("btn");
				var ot=document.getElementById("t");
				var oxjtleft=document.getElementById("xjt-left");
				//var oxjtright=document.getElementById("xjt-right";)
				var i=1;
				obtn.onclick=function(){
					//oxjtright.style.display="none";
						i++;
						if(i%2==0)
						{
							var oliuyan1=document.createElement("div");
							oliuyan1.className="liuyan1";
							oliuyan1.id="ly1";
							oxjtleft.appendChild(oliuyan1);
						}
					
					else{
							var oliuyan1=document.createElement("div");
							oliuyan1.className="liuyan2";
							oliuyan1.id="ly1";
							oxjtleft.appendChild(oliuyan1);
					}	
					var  otextarea=document.createElement("textarea");
					otextarea.className="textarea";
					otextarea.innerHTML=ot.value;
					otextarea.setAttribute("readonly","readonly");
					oliuyan1.appendChild(otextarea);
					
					var oimg=document.createElement("img");
					var b=Math.floor(Math.random()*8+1);
					oimg.className="img";
					oimg.setAttribute("src","img/li/"+b+".jpg");
					oliuyan1.appendChild(oimg);
				}
				var orenou=document.getElementById("renou");
				var otan=document.getElementById("tan");
				orenou.onmousedown=function(){
					$("#tan").slideDown("slow", function() {
					otan.style.display = "block";
					});
				}
				//判断发表评论不为空
				obtn.onmousedown = function() {
				if(ot.value.length == 0) {
					alert("评论不能为空");
				}
			}
				//取消发表
				var obtn1 = document.getElementById("btn1");
				obtn1.onclick = function() {
					otan.style.display = "none";
				}
				//关注
				/*var obigkung=document.getElementById("big-kuang");
				var oguanzhu=document.getElementById("guanzhu");
				var timer=null;
				oguanzhu.onmousedown=function(){
					timer=setInterval(function(){
						if(obigkung.style.left==0)
						{
							clearInterval(timer);
						}
						else{
							obigkung.style.left=obigkung.offsetLeft+10+"px";
						}
					},30)
				}*/
			}	
