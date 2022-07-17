<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
            <!doctype html>
<html lang="en" class="h-100">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
  <meta name="generator" content="Hugo 0.88.1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/carousel/">
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
  <title>Al Ikwaniah Mosque Activity System</title>

  <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/cover/">



  <!-- Bootstrap core CSS -->
  <link href="dist/css/bootstrap.min.css" rel="stylesheet">

  <style>
   @import "css/topnavbar.css";
   
    .bd-placeholder-img {
      font-size: 1.125rem;
      text-anchor: middle;
      -webkit-user-select: none;
      -moz-user-select: none;
      user-select: none;
    }

    @media (min-width: 768px) {
      .bd-placeholder-img-lg {
        font-size: 3.5rem;
      }
    }

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

    .buttonSignin {
      background-color: white;
      color: black;
      border: 2px solid #4CAF50;
      width: 250px;
    }
    #rcorner2 {
		position: absolute;
		top:-35px;
		left: 700px;"
	}

    .buttonSignin:hover {
      background-color: #4CAF50;
      color: white;
    }

    .buttonRegister {
      background-color: white;
      color: black;
      border: 2px solid #4CAF50;
      width: 250px;
    }

    .buttonRegister:hover {
      background-color: #4CAF50;
      color: white;
    }
    .contain{
     position: absolute;
     top: 100px;
     left: 200px;
    }

    h1 {
      text-align: center;
    }
  </style>

  <!-- Custom styles for this template -->
  
</head>

<body>
<%@ include file = "AdminMenu.jsp" %>
<div class="container">
  
    <header class="mb-auto">
      <div>
      </div>
    </header>
    
 
                    <br><br> <br>
          			 <h1>ACTIVITY REGISTRATION REPORT</h1>
                    <br>
     
					<form method="post" action="ListActivityReportController">
					<label for="month">Filter By Month:</label>
					<br>
					<input type="month" name="month">
					<br>
					<br>
					<button class="btn btn-primary" type="submit">Filter</button>
					</form>
					<br>
					<br>
                    <table class="table table-striped" style="width: 100%">
                        <tr>
                            <th>Activity Id</th>
                            <th>Activity Title</th>
                            <th>Number of Registration</th>
                            <th>ActivityDate</th>
                            
                            
                           
                        </tr>
                        <c:forEach items="${reports}" var="report" varStatus="reports">
                            <tr>
                                <td>
                                    <c:out value="${report.activityID}" />
                                </td>
                                
                                <td>
                                    <c:out value="${report.activityTitle}" />
                                </td>
                               
                                <td>
                                     <c:out value="${report.count}" />
                                </td>
                                 <td>
                                     <c:out value="${report.activityDate}" />
                                </td>

                     
                        </c:forEach>
                    </table>
               
                
                <script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
              
               </div>
            </body>

            </html>