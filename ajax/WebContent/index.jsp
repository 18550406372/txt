<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function register() {
		var mobile=document.getElementById("mobile").value;
		//通过ajax异步方式请求客户端
		xmlHttpRequest = new XMLHttpRequest();
		//建立连接‘post’方式请求
		xmlHttpRequest.open("post", "MobileServlet", true);
		//设置post方式的头信息
		xmlHttpRequest.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		//发送请求
		xmlHttpRequest.send("mobile="+mobile);//k=v
		//设置xmlHttpRequest对象的回调函数
		xmlHttpRequest.onreadystatechange = callBack;
		
	}
	//定义回调函数（接收服务端的返回值）
	function callBack() {
		//如果请求状态为4并且响应状态为200 则为正常状态才接收服务端返回的内容
		if(xmlHttpRequest.readyState == 4 && xmlHttpRequest.status ==200){
			//接收服务端返回的数据
			var data = xmlHttpRequest.responseText;//返回数据为String类型
			if(data == "true"){
				alert("此号码已存在！")
			}else{
				alert("注册成功。")
			}
		}
	}

</script>
<body>
	手机号：<input type="text" id="mobile" />
	<input type="button" value="注册" onclick="register()"/>
</body>
</html>