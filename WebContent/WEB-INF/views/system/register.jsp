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
        <div id="register" class="animate form login_form">
          <section class="login_content">
            <form id="registerForm">
              <h1>Create Account</h1>
               <font id="msg_tip" color="#FF0000"></font>
              <div>
                <input type="text" name="username" class="form-control" placeholder="Username" required="" />
              </div>
              <div>
                <input type="email" name="email" class="form-control" placeholder="Email" required="" />
              </div>
              <div>
                <input type="password" name="password" class="form-control" placeholder="Password" required="" />
              </div>
              <div>
              	<button type="submit" form="registerForm" class="btn btn-default submit" formaction="${ctx}/register" formmethod="post">Submit</button>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">Already a member ?
                  <a href="${ctx}/login" class="to_register"> Log in </a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><i class="fa fa-paw"></i>  Generate Font System!</h1>
                  <p>©2018 All Rights Reserved. Generate Font System! is a Bootstrap 3 template. Privacy and Terms</p>
                </div>
              </div>
            </form>
          </section>
        </div>
        <c:choose>
		<c:when test="${msg eq '2001'}">
			<script>
				$("#msg_tip").html("注册失败");
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
