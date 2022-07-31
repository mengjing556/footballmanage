<%@ page import="com.meng.nacos_consumer.controller.NewsController" %>
<%@ page import="com.meng.nacos_consumer.utils.Function" %>
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
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>冬奥新闻</title>
		<link href="css/main.css" rel="stylesheet" type="text/css">
		<script src="js/jquery.min.js">
		</script>
		<script src="js/tab.js">
		</script>
	</head>
	<body>
		<script>
			submit();
		</script>
		<%@ include file="common_header.jsp"%>
		<!--图片-->
		<div class="second_banner">
			<img src="img/dongao_huoju_pic.jpg" alt="">
		</div>
		<!--新闻-->
		<div class="container">
			<div class="left">
        		<div class="menu_plan">
            		<div class="menu_title">冬奥动态<br><span>news of olympic</span></div>
			 			<ul id="tab">
                			<li ><a href="#">冬奥新闻</a></li>
            			</ul>
        			</div>
     			</div>
     		<div class="right">
	            <div class="location">
	                <span>当前位置：<a href="#" id="a">冬奥新闻</a></span>
	                <div class="brief" id="b"><a href="#">冬奥新闻</a></div>
	            </div>
	            <div style=" font-size:14px; margin-top:53px; line-height:36px;">
	               <div id="tab_con">
	                    <div id="tab_con_2" class="dis-n" style="display: none;">
							<table style="margin-top:70px">
								<tbody>
									<tr class="tt_bg">
										<td>
											新闻标题
										</td>
										<td>
											发布人
										</td>
										<td>
											发布时间
										</td>
										<td>
											详情
										</td>
									</tr>
<%--									<%--%>
<%--										String strPage = request.getParameter("intPage");--%>
<%--										String sPage = request.getContextPath() + request.getServletPath()+ "?";--%>
<%--									%>--%>
<%--									<form action="getNewsListFront" method="post" id="page_message">--%>
<%--										<input type="hidden" name="pageNum" value=<%=strPage%> />--%>
<%--										<input type="hidden" name="pageSize" value="5" />--%>
<%--										<input type="hidden" name="sPage" value=<%=sPage%> />--%>
<%--&lt;%&ndash;										<input type="submit" value="提交">&ndash;%&gt;--%>
<%--									</form>--%>
<%--									${news_page}--%>
									<%
										NewsController newsController = WebApplicationContextUtils
												.getRequiredWebApplicationContext(request.getServletContext())
												.getBean(NewsController.class);
										request.setCharacterEncoding("UTF-8");
										String strPage = request.getParameter("intPage");
										Integer intPage = Function.StrToInt(strPage);
										// /WinterOlympic/front/newsList.jsp
										String sPage = request.getContextPath() + request.getServletPath()+ "?";
										String sOK = newsController.getNewsListFront(intPage, 5, sPage);
										if (sOK.equals("No")) {
											out.println("数据服务器出现错误！");
										} else {
											out.println(sOK);
										}
									%>
								</tbody>
							</table>
						</div>
					</div>
	            </div>
    		</div>
		</div>
		<!--页脚-->
		<%@ include file="common_footer.jsp"%>
	</body>
	<script>
		tabs("#tab", "active", "#tab_con");
	</script>
	<script type="text/javascript">
		function submit(){
			page_message.submit();
		}
	</script>
	<script type="text/javascript" src="js/mouse.js"></script>
</html>
