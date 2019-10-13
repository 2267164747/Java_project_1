$(function() {
				$(".s_hunsha_ph ul li .rsp").hide();
				$(".s_hunsha_ph ul li").hover(function() {
						$(this).find(".rsp").stop().fadeTo(500, 0.5)
						$(this).find(".text").stop().animate({
							left: '0'
						}, {
							duration: 500
						})
					},
					function() {
						$(this).find(".rsp").stop().fadeTo(500, 0)
						$(this).find(".text").stop().animate({
							left: '300'
						}, {
							duration: "fast"
						})
						$(this).find(".text").animate({
							left: '-300'
						}, {
							duration: 0
						})
					});
			});