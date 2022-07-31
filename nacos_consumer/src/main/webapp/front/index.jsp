<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>我的首页</title>
<link href="css/main.css" rel="stylesheet" type="text/css" media="all">
</head>
<body>
	<%@ include file="common_header.jsp"%>
	<!--轮播 -->
	<div id="fwslider" style="height: 554px;">
		<div class="slider_container">
			<div class="slide" style=" opacity: 1; z-index: 0; display: none;">
				<img id="img1" src="img/winter_olympic_venues_2.jpg">
			</div>
			<div class="slide" style="opacity: 1; z-index: 0; display: none;">
				<img id="img2" src="img/winter_olympic_venues_14.jpg">
			</div>
			<div class="slide" style="opacity: 1; z-index: 0; display: none;">
				<img id="img3" src="img/winter_olympic_venues_15.jpeg">
			</div>
			<div class="slide" style=" opacity: 1;z-index: 0; display: none;">
				<img id="img4" src="img/winter_olympic_venues_7.jpg">
			</div>
			<div class="slide" style=" opacity: 1;z-index: 0; display: none;">
				<img id="img5" src="img/winter_olympic_venues_5.jpg">
			</div>
			<div class="slide" style=" opacity: 1;z-index: 0; display: none;">
				<img id="img6" src="img/winter_olympic_venues_3.jpg">
			</div>
			<div class="slide" style=" opacity: 1;z-index: 0; display: none;">
				<img id="img7" src="img/winter_olympic_venues_13.jpg">
			</div>
			<div class="slide" style=" opacity: 1;z-index: 0; display: none;">
				<img id="img8" src="img/winter_olympic_venues_12.jpg">
			</div>
			<!-- 按时间切换图片,下方的进度条 -->
			<div class="timers" style="width: 180px;">
			</div>
			<!-- 切换前一张图片 -->
			<div class="slidePrev" style="left: 0px; top: 252px;">
			<span></span>
			</div>
			<!-- 切换后一张图片 -->
			<div class="slideNext" style="right: 0px; top: 252px; opacity: 0.5;">
			<span></span>
			</div>
		</div>
	</div>
	<!--轮播 -->
	<!-- 底部功能栏代码开始-->
	<div class="main_bg">
		<div class="business">
			奥运会相关网站
		</div>
		<div class="wrap w_72">
			<div class="grids_1_of_3">
				<div class="grid_1_of_3  images_1_of_3">
					<a href="http://www.olympic.org/">国际奥委会</a>	
					<br><br>
					<img src="img/aoyun_pic_1.jpg" >
				</div>
				<div class="grid_1_of_3  images_1_of_3">
					<a href="https://tokyo2020.org/en/">2020东京奥运会</a>					
					<br><br>
					<img src="img/aoyun_pic_2.jpg" >
				</div>
				<div class="grid_1_of_3  images_1_of_3">
					<a href="https://www.paris2024.org/fr/">2024巴黎奥运会</a>	
					<br><br>
					<img src="img/aoyun_pic_3.jpg" >
				</div>
				<div class="grid_1_of_3  images_1_of_3">
					<a href="https://milanocortina2026.org/">2026米兰科尔蒂纳丹佩佐冬奥会</a>	
					<br><br>
					<img src="img/aoyun_pic_4.jpg" >
				</div>
				<div class="grid_1_of_3  images_1_of_3">
					<a href="https://la28.org/">2028洛杉矶奥运会</a>	
					<br><br>
					<img src="img/aoyun_pic_5.jpg" >
				</div>
				<div class="clear"></div>
			</div>
		</div>
	</div>
	<div class="main_bg">
		<div class="business">
			残奥会相关网站
		</div>
		<div class="wrap w_72">
			<div class="grids_1_of_3">
				<div class="grid_1_of_3  images_1_of_3">
					<a href="http://www.olympic.org/">国际残奥委会</a>	
					<br><br>
					<img src="img/canao_pic_1.jpg" >
				</div>
				<div class="grid_1_of_3  images_1_of_3">
					<a href="https://tokyo2020.org/en/">2020东京残奥会</a>					
					<br><br>
					<img src="img/canao_pic_2.png" >
				</div>
				<div class="grid_1_of_3  images_1_of_3">
					<a href="https://www.paris2024.org/fr/">2024巴黎残奥会</a>	
					<br><br>
					<img src="img/canao_pic_3.jpg" >
				</div>
				<div class="grid_1_of_3  images_1_of_3">
					<a href="https://milanocortina2026.org/">2026米兰科尔蒂纳丹佩佐冬残奥会</a>	
					<br><br>
					<img src="img/canao_pic_4.jpg" >
				</div>
				<div class="grid_1_of_3  images_1_of_3">
					<a href="https://la28.org/">2028洛杉矶残奥会</a>	
					<br><br>
					<img src="img/canao_pic_5.jpg" >
				</div>
				<div class="clear"></div>
			</div>
		</div>
	</div>
	<!-- 底部功能栏代码结束-->
	<div class="address">
		<a href="author.jsp">孟敬宇</a> 技术支持 
		<a href="<%=basePath%>/admin/login.jsp">后台管理</a>
		<br>
		北京邮电大学 计算机科学与技术 17812006610
	</div>
	<div class="clear"></div>
</body>
	<script src="js/jquery.min.js">
	</script>
	<script src="js/jquery-ui.min.js">
	</script>
	<script src="js/fwslider.js">
	</script>
	<script type="text/javascript" src="js/mouse.js"></script>
</html>