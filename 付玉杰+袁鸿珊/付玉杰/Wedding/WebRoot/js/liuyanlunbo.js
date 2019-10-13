function lunb(){
var oul=document.getElementById("lunbou1");
var timer=null;
function liuyanlunbo()
{
	clearInterval(timer);
	timer=setInterval(function(){
	if(oul.style.left=="-798px")
	{
		clearInterval(timer);
	}
	if(oul.style.left=="-1598px")
	{
		clearInterval(timer);
	}
	if(oul.style.left=="-2398px")
	{
		clearInterval(timer);
		oul.style.left="0px";
	}
	oul.style.left=oul.offsetLeft-2+"px";	
	},30)
}
setInterval(function(){
	liuyanlunbo();
},1000)

}