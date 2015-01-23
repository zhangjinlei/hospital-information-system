<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>登录页</title>
   <link rel="stylesheet" href="../css/common.css" type="text/css"></link>
  <link rel="stylesheet" href="../css/login.css" type="text/css"></link>
  <script type="text/javascript" src="../js/login.js"></script>
  </head>
 
  <body>
  <jsp:include page="/user/login.jsp"></jsp:include>
	<script language=javascript>
	alert("用户名无效或者密码错误！！");
	</script> 
  </body>
</html>
