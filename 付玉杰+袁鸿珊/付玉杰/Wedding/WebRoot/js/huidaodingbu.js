 function (){
				var oLianjie = document.getElementsByClassName("lianjie")
				var oFenxiang = document.getElementsByClassName("fenxiang");

				oLianjie.onmousemove = function() {
					oFenxiang.style.display = "block";
				}
				ocan.onmouseout = function() {
					oFenxiang.style.display = "none";
				}
			}