<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript">
	function registe(){
		var $mobile=$("#mobile").val();
		/* $.ajax({
			url:"MobileServlet",
			请求方式:"post",
			data:"mobile="+$mobile,
			success: function (result,testStatus) {
				if(result == "true"){
					alert("手机号已存在。")
				}else{
					alert("注册成功。")
				}
			},
			error:function (xhr,errorMessage,e){
				alert("系统异常")
			}
		}) */
		/* $.post("MobileServlet","mobile="+$mobile,function(result){
			if(result == "true"){
				alert("手机号已存在。")
			}else{
				alert("注册成功。")
			}
		},"text"
				) */
				
				//load方式直接写请求路径和请求参数，返回内容直接在选中的地方显示  例如<span>标签内
		/* $("#type").load(
				"MobileServlet","mobile="+$mobile) */
				
				//json形式
		$.getJSON(
				"MobileServlet",
				{"mobile":$mobile},
				function (result){
					//json是以key value格式传输的，所以要通过key拿value
					if(result.msg == "true"){
						alert("手机号已存在。")
					}else{
						alert("注册成功。")
					}
			 }
		)
		
	}
	
	function testJson(){
		//返回json只有一个对象的情况
		/* $.getJSON(
				"JsonServlet",
				{"name":"张三","age":23},
				function (result){
					//js需要通过eval()函数将返回值转为一个js能够识别的json对象
					var jsonStudent = eval(result.stu);
					alert(jsonStudent.name);
					alert(jsonStudent.age);
			 }
		) */
		
		//json中有多个对象的值
		$.getJSON(
				"JsonServlet",
				{"name":"asd","age":66},
				function (result){
					//js需要通过eval()函数将返回值转为一个js能够识别的json对象
					//json中有多个对象
					var json = eval(result);
					//使用$.each()遍历   第一个参数为json对象，第二个参数为函数，函数中第一参数为下标，第二个参数表示当前对象
					$.each(json, function(i,element){
						alert(this.name+"--"+this.age)
					})
					
			 }
		)
	}

</script>
<body>
	手机号：<input type="text" id="mobile"/>
	<input type="button" value="注册" onclick="registe()"/>
	<span id="type"></span>
	
	<input type="button" value="测试Json" onclick="testJson()"/>
</body>
</html>