<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title></title>


<script type="text/javascript"	src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/photo.css"></link>
</head>

<body>
	<div class="LunBo" style=" padding:4px;">
		<ul>
			<li><img src="../images/index/2.jpg" width="600" height="300">
			</li>
			<li><img src="../images/index/1.jpg" width="600" height="300">
			</li>
			<li><img src="../images/index/3.jpg" width="600" height="300">
			</li>
			<li><img src="../images/index/4.jpg" width="600" height="300">
			</li>
			<li><img src="../images/index/5.jpg" width="600" height="300">
			</li>
			<li><img src="../images/index/6.jpg" width="600" height="300">
			</li>
		</ul>
		
		<div class="LunBoNum">
			<span class="CurrentNum">1</span> <span>2</span> <span>3</span> <span>4</span>
			<span>5</span><span>6</span>
		</div>
	</div>
	<script type="text/javascript" language="javascript">
		var PicTotal = 6;
		var CurrentIndex;
		var ToDisplayPicNumber = 0;
		$("div.LunBo div.LunBoNum span").click(DisplayPic);
		function DisplayPic() {
			// 测试是父亲的第几个儿子
			CurrentIndex = $(this).index();
			// 删除所有同级兄弟的类属性
			$(this).parent().children().removeClass("CurrentNum");
			// 为当前元素添加类
			$(this).addClass("CurrentNum");
			// 隐藏全部图片
			var Pic = $(this).parent().parent().children("ul");
			$(Pic).children().hide();
			// 显示指定图片
			$(Pic).children("li").eq(CurrentIndex).show();
		}
		function PicNumClick() {
			$("div.LunBo div.LunBoNum span").eq(ToDisplayPicNumber).trigger("click");
			ToDisplayPicNumber = (ToDisplayPicNumber + 1) % PicTotal;
			setTimeout("PicNumClick()", 2500);
		}
		setTimeout("PicNumClick()", 2500);
	</script>
</body>
</html>