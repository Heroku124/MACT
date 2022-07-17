<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import= "java.sql.PreparedStatement"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
  <title>Update Profile | Al-Ikwaniah Mosque Activity System</title>

  <style>

    @import "css/topnavbar.css";

    body {
      background: #b6b6b6;
    }

    .form-control:focus {
      box-shadow: none;
      border-color: #7abe2c;
    }

    .profile-button {
      background: #92CF4C;
      box-shadow: none;
      border: none;
    }

    .profile-button:hover {
      background: #7abe2c;
    }

    .back:hover {
      color: #7abe2c;
      cursor: pointer;
    }

    .labels {
      font-size: 11px;
    }

    .add-experience:hover {
      background: #7abe2c;
      color: #fff;
      cursor: pointer;
      border: solid 1px #7abe2c;
    }
  </style>
</head>


<body>
 <%@ include file = "Menu.jsp" %>

  <div class="container rounded bg-white mt-5 mb-5">
   <div class="row">
      <div class="col-md-3 border-right">
        <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5"
            src="https://i.imgur.com/O1RmJXT.jpg" width="90"><span class="font-weight-bold"><c:out value="${admin.adminName}" /></span><span class="text-black-50"><c:out value="${admin.adminEmail}" /></span><span>Admin</span></div>
      </div>
      <div class="col-md-5 border-right">
        <div class="p-3 py-5">
          <div class="d-flex justify-content-between align-items-center mb-3">
            <h6 class="text-right">Edit your Profile</h6>
          </div>
          <form method="post" action="UpdateAdminController">
          <div class="row mt-2">
            <div class="col-md-6"><label class="labels"> Admin ID</label><input type="text" class="form-control" readonly
                placeholder="First Name" name="AdminID" value="<c:out value="${admin.adminID}" />"></div>
          </div>
          <div class="row mt-2">
            <div class="col-md-6"><label class="labels"> Name</label><input type="text" class="form-control"
                placeholder="First Name" name="AdminName" value="<c:out value="${admin.adminName}" />"></div>
          </div>
          <div class="row mt-3">
            <div class="col-md-12"><label class="labels">Email</label><input type="text" class="form-control"
                placeholder="example@example.com" name="AdminEmail"value="<c:out value="${admin.adminEmail}" />"></div>
            <div class="col-md-12"><label class="labels">Telephone Number</label><input type="text" class="form-control"
                placeholder="0123245678"  name="AdminPhoneNum" value="<c:out value="${admin.adminPhoneNum}" />"></div>
          </div>
          <div class="row mt-3">
            <div class="col-md-6"><label class="labels">Password</label><input type="password" class="form-control"
                placeholder="*******" name="AdminPassword" value="<c:out value="${admin.adminPassword}" />"></div>
          </div>
           
          <div class="mt-5 text-center"><button class="btn btn-primary profile-button" type="submit">Save
              Profile</button></div>
          </form>
         
        
          <div class="mt-5 text-center"><a class="btn btn-danger profile-button" href="DeleteAdminController?AdminEmail=<c:out value="${admin.adminEmail}" />">Delete Profile</a></div>
          
        </div>
         
      </div>
      </div>
      </div>
     
   

</body>

</html>