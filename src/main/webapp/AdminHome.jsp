<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
    
<!DOCTYPE html>
<html>

<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta charset="UTF-8">
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
  <title>Home | Al-Ikwaniah Mosque Activity System</title>

  <style>

    @import "css/topnavbar.css";

    .button {
      border: none;
      color: white;
      padding: 16px 32px;
      text-align: center;
      text-decoration: none;
      display: inline-block;
      font-size: 16px;
      margin: 12px 2px;
      transition-duration: 0.4s;
      cursor: pointer;
    }

    .buttonActivity {
      background-color: white;
      color: black;
      border: 2px solid #4CAF50;
      width: 300px;
      text-decoration: none;
    }

    .buttonActivity:hover {
      background-color: #4CAF50;
      color: white;
    }

    h1 {
      text-align: center;
    }
  </style>
</head>

<body>
 <%@ include file = "AdminMenu.jsp" %>

 
  <div style="padding-left:16px" allign="centre">
    <br>
    <h1><img src="assets/brand/mosque.svg" width="120" length="60"></h1>
    <h1>Masjid Al-Ikhwaniah</h1>
    <h1>
    
      <p family="Segoe UI Light" size="7">Welcome <%= email %></p>
    </h1>
    <h1>
    <br>
      <a  href="addLecture.jsp" class="button buttonActivity">Add New Lecture Activity</a>
    <br>
      <a  href="addDonation.jsp" class="button buttonActivity">Add New Charity Activity</a>
    <br>
     <a  href="addSeminar.jsp" class="button buttonActivity">Add New Seminar Activity</a>
    <br>
    </h1>
  </div>
 
</body>

</html>