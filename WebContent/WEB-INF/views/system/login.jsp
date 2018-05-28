<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<title>管理系统</title>
	<script src="${ctx}/static/plugins/easyui/jquery/jquery-1.11.1.min.js"></script>
	<link rel="stylesheet" type="text/css" href="${ctx}/static/css/bglogin.css" />
	<script>
	var captcha;
	function refreshCaptcha(){  
	    document.getElementById("img_captcha").src="${ctx}/static/images/kaptcha.jpg?t=" + Math.random();  
	}  
	</script>
</head>
<body>
	<div>
	<form id="loginForm" action="${ctx}/login" method="post">
		<div class="login_top">
			<div class="login_title">
				管理系统登录
			</div>
		</div>
		<div style="float:left;width:100%;">
			<div class="login_main">
				<div class="login_main_top"></div>
				<div class="login_main_errortip">&nbsp;</div>
				<div class="login_main_ln">
					<input type="text" id="username" name="username" value="admin"/>
				</div>
				<div class="login_main_pw">
					<input type="password" id="password" name="password" value=""/>
				</div>
				
				<div class="login_main_yzm">
				<!-- 
					<div>
					<input type="text" id="captcha" name="captcha"/>
					<img alt="验证码" src="${ctx}/static/images/kaptcha.jpg" title="点击更换" id="img_captcha" onclick="javascript:refreshCaptcha();" style="height:45px;width:85px;float:right;margin-right:98px;"/>
					</div>
				</div>
				 -->
				<div class="login_main_submit">
					<button onclick=""></button>
				</div>
			</div>
		</div>
	</form>
	</div>
	<c:choose>
		<c:when test="${error eq '1001'}">
			<script>
				$(".login_main_errortip").html("用户名或密码错误，请重试");
			</script>
		</c:when>
		<c:when test="${error eq '1002'}">
			<script>
				$(".login_main_errortip").html("验证码错误，请重试");
			</script>
		</c:when>
	</c:choose>
</body>
</html>
