
function ajax(url, fnSucc, fnFaild)
{
	//1.����Ajax����
	if(window.XMLHttpRequest)
	{
		var oAjax=new XMLHttpRequest();
	}
	else
	{
		var oAjax=new ActiveXObject("Microsoft.XMLHTTP");
	}
	
	//2.���ӷ��������򿪺ͷ����������ӣ�
	oAjax.open('GET', url, true);
	//3.����
	oAjax.send();
    //4.����
	oAjax.onreadystatechange=function ()
	{
		if(oAjax.readyState==4)
		{
			if(oAjax.status==200)
			{
	//			alert('�����ɹ���'+oAjax.responseText);
				fnSucc(oAjax.responseText);
			}
			else
			{
//				alert('����ʧ�ܣ�'+oAjax.status);
				if(fnFaild)
				{
					fnFaild();
				}
			}
		}
	};
}