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
  <title>Profile | Al-Ikwaniah Mosque Activity System</title>

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
            src="https://i.imgur.com/O1RmJXT.jpg" width="90"><span class="font-weight-bold"><c:out value="${user.username}" /></span><span class="text-black-50"><c:out value="${user.username}" /></span></div>
      </div>
      <div class="col-md-5 border-right">
        <div class="p-3 py-5">
          <div class="d-flex justify-content-between align-items-center mb-3">
            <h6 class="text-right">User Profile</h6>
          </div>
          <div class="row mt-2">
            <div class="col-md-6"><label class="labels">Name</label>
              <h6><c:out value="${user.username}" /></h6>
            </div>
          </div>
          <div class="row mt-3">
            <div class="col-md-6"><label class="labels">Email</label>
              <h6><c:out value="${user.userEmail}" /></h6>
            </div>
          </div>
          <div class="row mt-3">
            <div class="col-md-6"><label class="labels">Phone Number</label>
              <h6><c:out value="${user.userPhoneNo}" /></h6>
            </div>
          </div>
          <div class="row mt-3">
            <div class="col-md-6"><label class="labels">Address</label>
              <h6><c:out value="${user.userAddress}" /></h6>
            </div>
          </div>
          <div class="mt-5 text-center"><a href="UpdateUserController?UserID=<c:out value="${user.userID}" />"><button class="btn btn-primary profile-button" type="button">Update Profile</button></a></div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="p-3 py-5">
          <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5"
              src="assets/brand/mosque.svg" width="190" height="110">
            <div class="col-md-4"><label class="labels"></label></div> <br>
            <span class="font-weight-bold">Masjid Al-Ikhwaniah</span><span class="text-black-50"></span>
              <span class="font-weight-bold">Jalan Cheras Utama 9, Taman Cheras Utama, 56000 Cheras,
                Selangor.</span><span class="text-black-25"></span>
                <div class="col-md-4"><label class="labels" allign="center"></label></div>
                <span class="font-weight-bold">012-291 7885</span><span class="text-black-50"> </span>
          </div>
        </div>
      </div>
      </div>
      </div>

      
</body>

</html>