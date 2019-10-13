function middle_right() {
	var BiaoTi_Xiao = document.getElementsByClassName("biaoti_xiao");
	var Xiao_Left = document.getElementsByClassName("xiao_left");
	var Xiao_Right = document.getElementsByClassName("xiao_right");
//	console.log(BiaoTi_Xiao.length)
//	console.log(Xiao_Left.length)
//	console.log(Xiao_Right.length)
	for(var e = 0; e < BiaoTi_Xiao.length; e++) {
		BiaoTi_Xiao[e].index = e;
		BiaoTi_Xiao[e].onmouseover = function() {
			for(var i = 0; i < Xiao_Right.length; i++) {
				Xiao_Left[i].style.display = "none";
				Xiao_Right[i].style.display = "none";
			}
			Xiao_Left[this.index].style.display = "block";
			Xiao_Right[this.index].style.display = "block";
		}
		BiaoTi_Xiao[e].onmouseout = function() {
			for(var i = 0; i < Xiao_Right.length; i++) {
				Xiao_Left[i].style.display = "none";
				Xiao_Right[i].style.display = "none";
			}
			
		}
		
		
//		BiaoTi_Xiao[e].onmouseout = function() {
//			for(var j = 0; j < Xiao_Left.length; j++) {
//				Xiao_Left[j].style.display = "block";
//			}
//		}

	}
}
