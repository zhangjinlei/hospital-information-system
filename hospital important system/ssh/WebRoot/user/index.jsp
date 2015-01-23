<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
  <head>
    
    <title>index.jsp</title>
    
  <link rel="stylesheet" href="../css/index.css" type="text/css"></link>
  <link rel="stylesheet" href="../css/photo.css" type="text/css"></link>
  <link rel="stylesheet" href="../css/common.css" type="text/css"></link>
  </head>
  
  <body>

  <div style="width: 1000px;margin:0 auto;background-color: white">
  
  <div>
  <jsp:include page="head.jsp"></jsp:include>
  </div>
  <div style="width: 1000px;" class="body">
  		<div style="width: 1000px;height: 40px;" class="nav">
  			<ul>
				<li style="background: #ECF1EF"><a href="index.jsp" title=" ">首页</a>
				</li>
			</ul>
	    </div>
  		<div class="body_right">
  			<jsp:include page="photo.jsp"></jsp:include>
	    </div>
	    </div>
	    <div class="body_right_down">
	    <p>1</p>
	    <p>2</p>
	    </div>
	    <div class="body_left">  
	    
	    <p><a href="count.action" title=" ">数据统计</a></p>
        </div>
   </div>
   </div>
   

  </body>
  <br>
  
</html>
