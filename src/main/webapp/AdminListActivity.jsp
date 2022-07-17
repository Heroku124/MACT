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
    .c1 {
	      position: absolute;
	      left:100%;
	      top: 10%;
   }  
  </style>

  <!-- Custom styles for this template -->
  <link href="bootstrap css/cover/cover.css" rel="stylesheet">
</head>

<body>

<%@ include file = "AdminMenu.jsp" %>

<div class="container">
  
    <header class="mb-auto">
      <div>
      </div>
    </header>
    
    
                    <br> 

                    <br>
					  

 					
                     <h1>LIST OF ACTIVITIES</h1>
                    <br><br> <br>

 
            
				<form method="post" action="ChooseActivityController">
				
				 <select class="form-select"  name="ActivityChoice" >
						<option value="none" selected disabled hidden>Select type of activity</option>
						<option value="All" >All</option>
					    <option value="Lecture" >Lecture</option>
						<option value="Charity" >Charity</option>
						<option value="Seminar" >Seminar</option>
				</select>
				<br>
				<button class="btn btn-primary" type="submit">Search</button>
				</form>
		

 
		<br>
		<br>
		<br>
								
     <h1>
   
      <a  href="addLecture.jsp" class="button buttonActivity">Add New Lecture Activity</a> &nbsp&nbsp&nbsp
  
      <a  href="addDonation.jsp" class="button buttonActivity">Add New Charity Activity</a> &nbsp&nbsp&nbsp
  
     <a  href="addSeminar.jsp" class="button buttonActivity">Add New Seminar Activity</a>&nbsp&nbsp&nbsp
    <br>
    </h1>
                    <br>
                     <div style="padding-left:5px" allign="centre">
				        <h2>LECTURES</h2>
                    </div>
                     <br>
                    <br>
                    <table class="table table-striped" style="width: 100%">
                        <tr>
                            <th>Activity Id</th>
                            <th>Title</th>
                            <th>Date</th>
                            <th>Activity Type</th>
                            <th>Start Time</th>
                            <th>End Time</th>
                            <th>Ustaz ID</th>
                            <th>Lecture Slot</th>
                            <th colspan="3">Actions</th>
                        </tr>
                        <c:forEach items="${lectures}" var="lecture" varStatus="lectures">
                            <tr>
                                <td>
                                    <c:out value="${lecture.activityID}" />
                                </td>
                                <td>
                                    <c:out value="${lecture.activityTitle}" />
                                </td>
                               
                                <td>
                                     <c:out value="${lecture.activityDate}" />
                                </td>
                       
                                <td>
                                     <c:out value="${lecture.activityType}" />
                                </td>
                                 <td>
                                     <c:out value="${lecture.activityStartTime}" />
                                </td>
                                 <td>
                                     <c:out value="${lecture.activityEndTime}" />
                                </td>
                            
                                <td>
                                     <c:out value="${lecture.ustazName}" />
                                </td>
                                <td>
                                     <c:out value="${lecture.lectureSlot}" />
                                </td>
                               
                                
                               
                                <td><a href="UpdateLectureController?ActivityID=<c:out value="${lecture.activityID}" />"
                                    class="btn btn-primary">Update</a></td>
                                <td><a href="DeleteLecture?ActivityID=<c:out value="${lecture.activityID}" />"
                                    class="btn btn-danger"  onclick="return confirm('Are you sure you want to delete this activity ?')">Delete</a></td>
                                
                                
                              
                               
                        </c:forEach>
                        
                    </table>
                    <br>
                    <br>
                    <br>
                    <br>
                     <div style="padding-left:5px" allign="centre">
				        <h2>CHARITIES</h2>
                    </div>
                     <br>
                    <br>
                     <table class="table table-striped" style="width: 100%">
                        <tr>
                            <th>Activity Id</th>
                            <th>Title</th>
                            <th>Date</th>
                            <th>Activity Type</th>
                            <th>Start Time</th>
                            <th>End Time</th>
                            <th>Donation Type</th>
                            
                            <th colspan="3">Actions</th>
                        </tr>
                        <c:forEach items="${charitys}" var="charity" varStatus="charitys">
                            <tr>
                                <td>
                                    <c:out value="${charity.activityID}" />
                                </td>
                                <td>
                                    <c:out value="${charity.activityTitle}" />
                                </td>
                               
                                <td>
                                     <c:out value="${charity.activityDate}" />
                                </td>
                               
                                <td>
                                     <c:out value="${charity.activityType}" />
                                </td>
                                 <td>
                                     <c:out value="${charity.activityStartTime}" />
                                </td>
                                 <td>
                                     <c:out value="${charity.activityEndTime}" />
                                </td>
                            
                                <td>
                                     <c:out value="${charity.donationType}" />
                                </td>
                                
                               
                                
                              
                                <td><a href="UpdateCharityController?ActivityID=<c:out value="${charity.activityID}" />"
                                    class="btn btn-primary">Update</a></td>
                                <td><a href="DeleteCharity?ActivityID=<c:out value="${charity.activityID}" />"
                                    class="btn btn-danger"  onclick="return confirm('Are you sure you want to delete this activity ?')">Delete</a></td>
                                
                              
                               
                        </c:forEach>
                        
                    </table>
                    <br>
                    <br>
                    <br>
                    <br>
                   
                     <div style="padding-left:5px" allign="centre">
				        <h2>SEMINARS</h2>
                    </div>
                     <br>
                    <br>
                <table class="table table-striped" style="width: 100%">
                        <tr>
                            <th>Activity Id</th>
                            <th>Title</th>
                            <th>Date</th>
                            <th>Activity Type</th>
                            <th>Start Time</th>
                            <th>End Time</th>
                            <th>Location</th>
                            <th>Fee</th>
                            <th>Instructor</th>
                             <th colspan="3">Actions</th>
                        </tr>
                        <c:forEach items="${seminars}" var="seminar" varStatus="seminars">
                            <tr>
                                <td>
                                    <c:out value="${seminar.activityID}" />
                                </td>
                                <td>
                                    <c:out value="${seminar.activityTitle}" />
                                </td>
                               
                                <td>
                                     <c:out value="${seminar.activityDate}" />
                                </td>

                                <td>
                                     <c:out value="${seminar.activityType}" />
                                </td>
                                 <td>
                                     <c:out value="${seminar.activityStartTime}" />
                                </td>
                                 <td>
                                     <c:out value="${seminar.activityEndTime}" />
                                </td>
                            
                                <td>
                                     <c:out value="${seminar.seminarLocation}" />
                                </td>
                                <td>
                                     <c:out value="${seminar.seminarFee}" />
                                </td>
                                 <td>
                                     <c:out value="${seminar.instructorName}" />
                                </td>
                                
                               
                              
                                <td><a href="UpdateSeminarController?ActivityID=<c:out value="${seminar.activityID}" />"
                                    class="btn btn-primary">Update</a></td>
                                <td><a href="DeleteSeminar?ActivityID=<c:out value="${seminar.activityID}" />"
                                    class="btn btn-danger"  onclick="return confirm('Are you sure you want to delete this activity ?')">Delete</a></td>
                                
                              
                               
                        </c:forEach>
                        
                    </table>
                    <br>
                    <br>
                    <br>
                    <br>
               
  </div>   
                
                <script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
              
               
            </body>

            </html>