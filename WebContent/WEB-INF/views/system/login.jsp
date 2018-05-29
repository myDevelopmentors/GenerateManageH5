<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Welcome to System | </title>
	<script src="${ctx}/static/plugins/jquery/jquery-1.11.1.min.js"></script>
    <!-- Bootstrap -->
    <link href="${ctx}/static/plugins/bootstrap3/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="${ctx}/static/plugins/bootstrap3/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="${ctx}/static/plugins/bootstrap3/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="${ctx}/static/plugins/bootstrap3/vendors/animate.css/animate.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="${ctx}/static/plugins/bootstrap3/build/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="login">
    <div>
      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <form id="loginForm">
              <h1>Login Form</h1>
              <font id="msg_tip" color="#FF0000"></font>
              <div>
                <input type="text" name="username" class="form-control" placeholder="Username" required="" />
              </div>
              <div>
                <input type="password" name="password" class="form-control" placeholder="Password" required="" />
              </div>
              <div>
                <button type="submit" form="loginForm" class="btn btn-default submit" formaction="${ctx}/login" formmethod="post">Log in</button>
                <a class="reset_pass" id = "lost_pass" >Lost your password?</a>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">New to site?
                  <a href="${ctx}/register" class="to_register"> Create Account </a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><i class="fa fa-paw"></i> Generate Font System!</h1>
                  <p>©2018 All Rights Reserved. Generate Font System! is a Bootstrap 3 template. Privacy and Terms</p>
                </div>
              </div>
            </form>
          </section>
        </div>

        <c:choose>
			<c:when test="${msg eq '1001'}">
				<script>
					$("#msg_tip").html("用户名或密码错误，请重试");
				</script>
			</c:when>
			<c:when test="${msg eq '2000'}">
				<script>
					$("#msg_tip").html("注册成功，请登录");
				</script>
			</c:when>
	    </c:choose>
      </div>
    </div>
  </body>
  <script type="text/javascript">
      $(function(){
    	  $('#lost_pass').click(function(){
    		  alert('Please contract to administrator!');
    	  });
      })
  </script>
</html>
