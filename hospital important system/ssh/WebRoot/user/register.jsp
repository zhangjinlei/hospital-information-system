<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    
    <title>医疗信息系统-注册</title>
    
  <link rel="stylesheet" href="../css/common.css" type="text/css"></link>
  <link rel="stylesheet" href="../css/register.css" type="text/css"></link>
  <script charset="gb2312" type="text/javascript" src="../js/register.js"></script>
  </head>
  
  <body>
  
  <div>
  <jsp:include page="head.jsp"></jsp:include>
  </div>
  <div class="registerform">
   
   <table border="0" style="width: 1000px;height: 150px;">
        <tr>
          <td></td>
          <td></td>
        </tr>
	</table>
   
  <div class="form">
  <form action="register.action" method="post">
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
		<table border="0">
			<tr>
				<td align="right" width="43%">用&nbsp;&nbsp;户&nbsp;&nbsp;名：&nbsp;&nbsp;</td>
				<td align="left"><input type="text" name="username" size="20"/>&nbsp;&nbsp;</td>
			</tr>
			<tr>
				<td align="right">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：&nbsp;&nbsp;</td>
				<td align="left"><input type="password" name="password" size="20"/>&nbsp;&nbsp;</td>
			</tr>
			<tr>
				<td align="right">确认密码：&nbsp;&nbsp;</td>
				<td align="left"><input type="password" name="repass" size="20"/>&nbsp;&nbsp;</td>
			</tr>
			<tr>
				<td align="right">角&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;色：&nbsp;&nbsp;</td>
				<td align="left"><select name="role" id="role" style="width: 157px; ">
					<option value="病人">病人</option>
					<option value="医生">医生</option>
				</select>&nbsp;&nbsp;</td>
			</tr>
			<tr>
				<td align="right">科&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;室：&nbsp;&nbsp;</td>
				<td align="left"><input type="text" name="office" size="20"/>&nbsp;&nbsp;</td>
			</tr>
			<tr>
				<td align="right">年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;龄：&nbsp;&nbsp;</td>
				<td align="left"><input type="text" name="age" size="20"/>&nbsp;&nbsp;</td>
			</tr>
			<tr>
				<td align="right"><input type="submit" value="" class="registerbutton"/></td>
				<td align="center">已有账号?<a href="login.jsp">登陆</a></td>
			</tr>
		
		</table>
	</form>
  </div>
  </div>
  
  
  </body>
</html>
