  //跳转页面轮播部分
					
	   var ul1=document.getElementById("ul");
     var ol1=document.getElementById("ol");
     
     var uli=ul1.getElementsByTagName("li");
     var oli=ol1.getElementsByTagName("li");
     var obox=document.getElementById("box_bottom");
     var oarrow1=document.getElementById("arrow1");
     var oarrow2=document.getElementById("arrow2");
     var oSmall_img=document.getElementsByClassName("small_img");
     var oBig_img=document.getElementsByClassName("big_img");
     
     
	 for(var i = 0;i<oli.length;i++)
	 {
		oli[i].aa = i;
		oli[i].onmouseover=function(){
			for(var t = 0;t<uli.length;t++){
				uli[t].style.display = "none";
			}
			uli[this.aa].style.display = "block";
		}
	}
	ajax("turn2.txt",function(str){
		var arr = eval(str);
		for(var i=0;i<arr.length;i++){
			oSmall_img[i].style.backgroundImage = "url("+arr[i].img+")";
		}
		
		
		
	})
	ajax("turn2.txt",function(str){
		var arr = eval(str);
		for(var i=0;i<arr.length;i++){
			oBig_img[i].style.backgroundImage = "url("+arr[i].img+")";
		}
	})
	for(var i = 0;i<4;i++)
		{
			oSmall_img[i].index = i;
			oSmall_img[i].onclick = function()
			{
				var oThis = this;
				ajax("turn2.txt",function(str)
				{
					var arr = eval(str);
					oBig_img.style.backgroundImage = "url("+arr[oThis.index].img+")";
					oSmall_img.style.backgroundImage = "url("+arr[oThis.index].img+")";
				})
			}
		}
		
		
		//控制左右箭头

            var j=0;
            oarrow1.onclick=function()
            { 
              j--
              if(j<=0)j=uli.length-1
              for(var i=0;i<uli.length;i++)
              { 
                 uli[i].style.display="none";
                 oli[i].className="";
                 
                }
                 uli[j].style.display="block";
                 oli[j].className="li1";
               } 
            
            oarrow2.onclick=function()
            {
              j++
              if(j>=8){j=0;}
              for(var i=0;i<uli.length;i++)
              { 
                 uli[i].style.display="none";
                 oli[i].className="";
                 
              }
                 uli[j].style.display="block";
                 oli[j].className="li1";
            }


 
 //图片滑入效果
         //1
         $(function(){
           var targetHeight = $("body").offset().top;

           $(window).scroll(function(){
                slideIn($(".slide1"),200);
           });

          function slideIn(obj,left){
              var targetHeight = obj.offset().top;
              var scrollTop = $(this).scrollTop();
              if(scrollTop>550)
              {
              obj.animate({left:left+'px',opacity:1,filter:'Alpha(opacity=90)'},2000);
              }
           };

       });
       //2
       $(function(){
           var targetHeight = $("body").offset().top;

           $(window).scroll(function(){
                slideIn($(".slide2"),200);
           });

          function slideIn(obj,left){
              var targetHeight = obj.offset().top;
              var scrollTop = $(this).scrollTop();
              if(scrollTop>1300)
              {
              obj.animate({left:left+'px',opacity:1,filter:'Alpha(opacity=90)'},2000);
              }
           };

       });
       //3
       $(function(){
           var targetHeight = $("body").offset().top;

           $(window).scroll(function(){
                slideIn($(".slide3"),200);
           });

          function slideIn(obj,left){
              var targetHeight = obj.offset().top;
              var scrollTop = $(this).scrollTop();
              if(scrollTop>2100)
              {
              obj.animate({left:left+'px',opacity:1,filter:'Alpha(opacity=90)'},2000);
              }
           };

       });
       //4
       $(function(){
           var targetHeight = $("body").offset().top;

           $(window).scroll(function(){
                slideIn($(".slide4"),200);
           });

          function slideIn(obj,left){
              var targetHeight = obj.offset().top;
              var scrollTop = $(this).scrollTop();
              if(scrollTop>3000)
              {
              obj.animate({left:left+'px',opacity:1,filter:'Alpha(opacity=90)'},2000);
              }
           };

       });
       //5
       $(function(){
           var targetHeight = $("body").offset().top;

           $(window).scroll(function(){
                slideIn($(".slide5"),200);
           });

          function slideIn(obj,left){
              var targetHeight = obj.offset().top;
              var scrollTop = $(this).scrollTop();
              if(scrollTop>4100)
              {
              obj.animate({left:left+'px',opacity:1,filter:'Alpha(opacity=90)'},2000);
              }
           };

       });
       //6
       $(function(){
           var targetHeight = $("body").offset().top;

           $(window).scroll(function(){
                slideIn($(".slide6"),200);
           });

          function slideIn(obj,left){
              var targetHeight = obj.offset().top;
              var scrollTop = $(this).scrollTop();
              if(scrollTop>5200)
              {
              obj.animate({left:left+'px',opacity:1,filter:'Alpha(opacity=90)'},2000);
              }
           };

       });
       