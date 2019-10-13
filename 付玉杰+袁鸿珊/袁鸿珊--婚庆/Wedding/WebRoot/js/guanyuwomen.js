


			
			var topScroll = document.body.scrollTop;//滚动的距离,距离顶部的距离
	        var boxb = document.getElementById("box_b");//获取到导航栏id
	        if(topScroll > 200){ //当滚动距离大于250px时执行下面的东西
	          boxb.style.position = 'fixed';
	          boxb.style.top = '0';
	          boxb.style.zIndex = '9999';
	        }
	        else{//当滚动距离小于250的时候执行下面的内容，也就是让导航栏恢复原状
//	          boxb.style.position = 'static';
 			boxb.style.position = 'absolute';
	          boxb.style.top = '200px';
	        }
        
        
        $(document).snowfall('clear');
        $(document).snowfall({
            image: "img/huaban.png",
            flakeCount:30,
            minSize: 5,
            maxSize: 22
        });







