<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.88.1">
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="canonical"
	href="https://getbootstrap.com/docs/5.1/examples/checkout/">
<title>View Lecture | Al-Ikwaniah Mosque Activity System</title>

<!-- Bootstrap core CSS -->
<link href="assets/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
@import "css/topnavbar.css";

.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
	.newbtn {
		background-color: #92CF4C;
		border: none;
	}
	.newbtn:hover {
		background-color: #787878;
	}
}
</style>

<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<title>List Product</title>

</head>

<body class="bg-light">
 <%@ include file = "AdminMenu.jsp" %>

  <div class="card">
    <article class="my-3" id="tables">
      <div class="bd-example">
        <table class="table table-striped">
          <thead>
            <tr>
   
				
							<th scope="col">Activity ID</th>
							<th scope="col">Ustaz Name</th>
							<th scope="col">Lecture Slot</th>
							<th scope="col">Activity Date</th>
							<th scope="col">Activity Type</th>
							<th scope="col">Activity Start Time</th>
							<th scope="col">Activity End Time</th>
							<th scope="col">Admin ID</th>

						</tr>
          </thead>
          <tbody>
            <tr>
              <th scope="row"><c:out value="${lecture.activityID}" /><br></th>
              <td><c:out value="${lecture.ustazName}" /><br></td>
              <td><c:out value="${lecture.lectureSlot}" /><br></td>
              <td><c:out value="${lecture.activityDate}" /><br></td>
              <td><c:out value="${lecture.activityType}" /><br></td>
              <td><c:out value="${lecture.activityStartTime}" /><br></td>
              <td><c:out value="${lecture.activityEndTime}" /><br></td>
              <td><c:out value="${lecture.adminID}" /><br></td>
            </tr>
          </tbody>
        </table>
      </div>
    </article>
  </div>

</body>

</html>