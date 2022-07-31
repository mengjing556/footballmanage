<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--头部-->
<div class="header_bg">
	<div class="wrap">
		<div class="header">
			<div class="logo">
				<a href="index.jsp"><img src="img/logo.jpg" alt="" style="width:100px"> </a>
			</div>
			<div class="pull-icon">
				<a id="pull"></a>
			</div>
		    <div class="cssmenu">
		    <ul>
		        <li><a href="index.jsp">首页</a></li>
		        <li><a href="newsList.jsp">冬奥新闻</a></li>
		        <li><a href="project_profile.jsp">项目简介</a></li>
		        <li><a href="welcome.jsp">知识问答</a></li>
		        <li><a href="advice.jsp">意见反馈</a></li>
		        <li class="last">
		        	<!-- EL表达式中不可以调用方法 -->
		            <a href="#" id="exit">${sessionScope.loginUser.username==null?"登录/注册":sessionScope.loginUser.username}</a>
		            <%--
		            	if()
		            	User loginUser = (User)session.getAttribute("loginUser");
		            	if(loginUser==null){
		            		String html = "<ul><li><a href=\"../user/login.jsp\">登录</a></li><li><a href=\"../user/register.jsp\">注册</a></li></ul>";
		            		response.getWriter().println(html);
		            	}else{
		            		String html = "<ul><li><a href=\"#\" id=\"exit\">退出登录</a></li></ul>";
		            		response.getWriter().println(html);
		            	}
		            --%>
		            <ul>
		                <li id="li1"><a href="../user/login.jsp">登录</a></li>
		                <li id="li2"><a href="../user/register.jsp">注册</a></li>
		                <li id="li3"><a href="#">退出登录</a></li>
		            </ul>
		        </li>     
		    </ul>
		    </div>
		    <!--清除浮动-->
			<div class="clear"></div>
		</div>
	</div>
</div>
<!--头部-->
<script src="js/jquery.min.js"></script>
<script>
$("#exit").hover(function(){
	if($('#exit').text()=="登录/注册"){
		$('#li1').show();
		$('#li2').show();
		$('#li3').hide();
	}else{
		$('#li1').hide();
		$('#li2').hide();
		$('#li3').show();
	}
});
$('#li3').click(function(){
	if(confirm("是否退出登录？")){
		//session.setAttribute("loginUser",null);
		$('#exit').text("登录/注册");
		<%--
			session.removeAttribute("loginUser");
		--%>
		location.replace("../logout");
	}else{
		
	}
});
</script>