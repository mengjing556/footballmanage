<%@ page import="com.meng.nacos_consumer.controller.NewsController" %>
<%@ page import="org.springframework.web.context.support.WebApplicationContextUtils" %>
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
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta name="viewport"
			content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>冬奥新闻</title>
		<link href="css/main.css" rel="stylesheet" type="text/css">
		<script src="js/jquery.min.js">
		</script>
		<script src="js/tab.js">
		</script>
	</head>
	<body>
		<%@ include file="common_header.jsp"%>
		<!--banner-->
		<div class="second_banner">
			<img src="img/dongao_huoju_pic.jpg" alt="">
		</div>
		<!--//banner-->
		<!--新闻-->
		<div class="container">
			<div class="left">
        		<div class="menu_plan">
           			<div class="menu_title">冬奥动态<br><span>news of olympic</span></div>
			 			<ul id="tab">
                			<li ><a href="newsList.jsp">冬奥新闻</a></li>
            			</ul>
        			</div>
     			</div>
     		<div class="right">
            	<div class="location">
                	<span>当前位置：<a href="javascript:void(0)" id="a"><a href="newsList.jsp">冬奥新闻</a></a></span>
                	<div class="brief" id="b"><a href="newsList.jsp">冬奥新闻</a>
                	</div>
            	</div>
				<div style="font-size: 14px; margin-top: 53px; line-height: 36px;">
					<div id="tab_con">
						<div id="tab_con_2" class="dis-n" style="display: none;">
							<div class="content_main">
								<%
									NewsController newsController = WebApplicationContextUtils
											.getRequiredWebApplicationContext(request.getServletContext())
											.getBean(NewsController.class);
									request.setCharacterEncoding("UTF-8");
									String newsId = request.getParameter("newsId");
									String sOK = newsController.getNewsDetailFront(newsId);
									if (sOK.equals("No")) {
										out.println("数据服务器出现错误！");
									} else {
										out.println(sOK);
									}
								%>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--//新闻-->
		<!--底部-->
		<%@ include file="common_footer.jsp"%>
	</body>
	<!--//底部-->
	<script>
		tabs("#tab", "active", "#tab_con");
	</script>
	<script type="text/javascript" src="js/mouse.js"></script>
</html>
