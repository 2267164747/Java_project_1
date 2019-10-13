window.onload=function(){
	  
	     // 花瓣特效
	      $(document).snowfall('clear');
		        $(document).snowfall({
		            image: "img/huaban.png",
		            flakeCount:30,
		            minSize: 5,
		            maxSize: 22
		        });
	
	
	
			var omg=document.getElementsByClassName("mg");
			var opri=document.getElementsByClassName("pri");
			var opri_div1=document.getElementsByClassName("pri_div1");
			var opri_div2=document.getElementsByClassName("pri_div2");
			    //ajax文件引入
			    //中式、西式婚礼主页
				ajax("pic.txt",function(str)
				   {
					var arr = eval(str);
					for(var i=0;i<arr.length;i++)
					    {
					      omg[i].style.backgroundImage = "url("+arr[i].url+")";
					    }
				   });
				
				//婚礼描述ajax部分
				ajax("detail.txt",function(str)
				   {
					var arr = eval(str);
					for(var i=0;i<arr.length;i++)
					    {
					      opri_div1[i].innerHTML=arr[i].detail;
					    }
				   });
				
				//ajax价格部分
				{ajax("price.txt",function(str)
				   {
					var arr = eval(str);
					for(var i=0;i<arr.length;i++)
					    {
					      opri_div2[i].innerHTML=arr[i].price;
					    }
				   });}
			
			     //中式婚礼跳转页面下面的小图
//			var ob=document.getElementsByClassName("b");
//			ajax("pic.txt",function(str)
//				{
//				var arr = eval(str);
//				for(var i=0;i<arr.length;i++)
//				{
//				ob[i].style.backgroundImage = "url("+arr[i].url+")";
//				}
//				});

}