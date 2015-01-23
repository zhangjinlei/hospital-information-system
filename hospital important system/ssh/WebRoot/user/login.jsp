<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    
    <title>login</title>
    
  <link rel="stylesheet" href="../css/common.css" type="text/css"></link>
  <link rel="stylesheet" href="../css/login.css" type="text/css"></link>
  <script charset="gb2312" type="text/javascript" src="../js/login.js"></script>
  </head>
  
  <body>
  
  <div>
  <jsp:include page="head.jsp"></jsp:include>
  </div>
  <div class="loginform">
      <table width="1000" border="0" style="height: 500px">
        <tr>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
        </tr>
        <tr>
          <td rowspan="3"></td>
          <td></td>
          <td></td>
          <td rowspan="3"></td>
        </tr>
        <tr>
          <td colspan="2">
          <div style="text-align:center" class="form">
          <form action="login" onsubmit="return checklogin(this)" name="loginform" method="post">
          <p>&nbsp;</p>
          <p>&nbsp;</p>
         <p>用户名：<input type="text" name="username"/></p>
         <p>密&nbsp;&nbsp;&nbsp;码：<input type="password" name="password"/></p>
         <p><input type="submit" value="" class="loginbutton"/></p>
         </form>
         </div>
          </td>
        </tr>
        <tr>
          <td></td>
          <td></td>
        </tr>
        <tr style="height: 100px">
          <td></td>
          <td></td>
          <td></td>
          <td></td>
        </tr>
      </table>

    
  </div>
  <br/>

  </body>
</html>
