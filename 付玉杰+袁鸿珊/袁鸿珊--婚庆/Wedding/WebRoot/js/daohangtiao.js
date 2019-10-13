(function() {
					var ind = 0; //初始位置
					var nav = jQuery(".nav");
					var init = jQuery(".nav .m").eq(ind);
					var block = jQuery(".nav .block"); //滑块
					block.css({
						"left": init.position().left - 3
					}); //初始化滑块位置
					nav.hover(function() {}, function() {
						block.animate({
							"left": init.position().left - 3
						}, 100);
					}); //移出导航滑块返回

					jQuery(".nav").slide({
						type: "menu", //效果类型
						titCell: ".m", // 鼠标触发对象
						targetCell: ".sub", // 效果对象，必须被titCell包含
						delayTime: 300, // 效果时间
						triggerTime: 0, //鼠标延迟触发时间
						returnDefault: true, //on返回初始位置
						defaultIndex: ind, //初始位置
						startFun: function(i, c, s, tit) { //控制当前滑块位置
							block.animate({
								"left": tit.eq(i).position().left - 3
							}, 100);
						}
					});
				})()