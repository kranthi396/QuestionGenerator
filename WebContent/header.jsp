<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body style="">

  <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0;">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                  <a class="navbar-brand" href="#">
                  <%=session.getAttribute("Role") %></a>
                    </div>
            <div class="header-right sidebar-collapse">
             <div class="center">
    <p style="font-size: x-large;
    color: black;
">Question Generation Tool</p>
  </div>
                <a href="login.jsp"class="logout" ><i class="glyphicon glyphicon-log-in"></i> Logout</a>
            </div>
        </nav>
           
</body>
</html>