<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>用户注册</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <form action="regist.jsp" method="post">
    	<table>
    		<caption>用户注册</caption>
    		<tr>
    			<td>用户名:</td>
    			<td><input type="text" name="name"></td>
    		</tr>
    		<tr>
    			<td>性别:</td>
    			<td>
    				<input type="radio" name="gender" value="男">男
					<input type="radio" name="gender" value="女">女
				</td>
    		</tr>
    		<tr>
    			<td>学历:</td>
    			<td>
					<select size="1" name="education">
						<option value="高中">高中</option>
						<option value="大学">大学</option>
						<option value="研究生">研究生</option>
					</select>
				</td>
    		</tr>
    		<tr>
    			<td>爱好:</td>
    			<td>
    				<input type="checkbox" name="hobby" value="吃饭">吃饭
					<input type="checkbox" name="hobby" value="睡觉">睡觉
					<input type="checkbox" name="hobby" value="打豆豆">打豆豆
    			</td>
    		</tr>
    		<tr>
    			<td><input type="reset" value="重置"></td>
    			<td><input type="submit" value="提交"></td>
    		</tr>
    	</table>
    </form>
  </body>
</html>
