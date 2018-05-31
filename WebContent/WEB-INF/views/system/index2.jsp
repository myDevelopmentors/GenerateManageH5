<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>  

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	
    <title>Welcome to System | </title>
	<%@ include file="common/head.jsp" %>
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
      
       <%@ include file="common/sidebar.jsp" %>
            
        <!-- top navigation -->
		<%@ include file="common/top.jsp" %>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
     			user define context 2...
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <%@ include file="common/footer.jsp" %>
        <!-- /footer content -->
      </div>
    </div>

    <%@ include file="common/footerjs.jsp" %>
	
  </body>
</html>
