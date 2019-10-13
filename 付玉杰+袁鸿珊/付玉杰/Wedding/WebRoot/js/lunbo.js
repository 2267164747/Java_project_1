$(".btn ul li").hover(function(){
	$(this).addClass("curr").siblings().removeClass("curr");                  
	var _index = $(this).index();
	$(".img img").eq(_index).fadeIn("fast").siblings().fadeOut();
})

