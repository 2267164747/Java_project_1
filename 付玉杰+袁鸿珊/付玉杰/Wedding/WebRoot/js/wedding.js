//中式西式选项卡效果
			var oli1=document.getElementById("li1");
			var oli2=document.getElementById("li2");
			var obox1=document.getElementById("box1");
			var obox2=document.getElementById("box2");
			oli1.onclick=function()
			     {
				obox1.style.display="block";
				obox2.style.display="none";
			     }
			oli2.onclick=function()
			     {
				obox1.style.display="none";
				obox2.style.display="block";
			     }

            //显示隐藏登录页
                var odiv=document.getElementById("div");
				var oclose=document.getElementById("close");
				var opri_div3=document.getElementsByClassName("pri_div3");
				
				for(var i=0;i<opri_div3.length;i++)
				{
				
					opri_div3[i].onclick=function()
						{
							odiv.style.display="block";
						}
				}
				oclose.onclick=function()
				  {
					odiv.style.display="none";
					
				   }

            //验证码js
            var ocheckbtn=document.getElementById("checkbtn");
		    function checkcode()
		    {
		       var code=""; 
		       var codeLength=4; 
		       var random=[ 0,1,2,3,4,5,6,7,8,9,
		                   'A','B','C','D','E','F',
		                   'G','H','I','J','K','L',
		                   'M','N','O','P','Q','R',
		                   'S','T','U','V','W','X',
		                   'Y','Z'] ;
		       for(var i=0;i<codeLength;i++)
		       {
			        var j=Math.floor(Math.random()*36);
			        code+=random[j];  
		       }  
		            ocheckbtn.value=code;
		    } 
		    
		    ocheckbtn.onclick=checkcode;
		    
		    //登录
		    
                var ocheckbtn=document.getElementById("checkbtn");
  				var oname=document.getElementById("name");
				var opwd=document.getElementById("pwd");
				var obtn=document.getElementById("logbtn");
				var codeinput=document.getElementById("code");
				
        obtn.onclick=function()
		{
			if(oname.value=="admin"&&opwd.value=="888888"&&codeinput.value.toUpperCase()==ocheckbtn.value)
			{
				odiv.style.display="none";
				opwd.value="";
				oname.value="";
				codeinput.value="";
				checkcode();
			}
			
		}
