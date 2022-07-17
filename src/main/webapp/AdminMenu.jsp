<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%
  response.addHeader("Pragma", "no-cache");
  response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
  response.addHeader("Cache-Control", "pre-check=0, post-check=0");
  response.setDateHeader("Expires", 0);

  if(session.getAttribute("sessionEmail")==null)	  
      response.sendRedirect("Sign-In/index.jsp");
  %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <div class="topnav">
    <a  href="AdminHome.jsp">Home</a>
      <% String email = (String)session.getAttribute("sessionEmail");%>
    <a href="ViewAdminController?AdminEmail=<%=email%>">Profile</a>
    <a href="AdminListActivityController">Activity</a>
     <a href="ListActivityReportController">Report</a>
    <button class="logout" onclick="openForm()">Log Out</button>
    <div class="form-popup" id="logout-form">
      <form action="SignOutController" method="get"  class="form-container">
        <div class="logout-header">Confirm Log Out?</div>
        <button type="submit" class="btn">Log Out</button>
        <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
        <script src="js/openForm.js"></script>
      </form>
    </div>
  </div>


</body>
</html>