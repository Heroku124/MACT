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
<title>View Seminar | Al-Ikwaniah Mosque Activity System</title>

<!-- Bootstrap core CSS -->
<link href="CSS/assets/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
@import "CSS/css/topnavbar.css";

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
<link rel="stylesheet" type="text/css" href="../CSS/css_2/bootstrap.css">
<title>List Product</title>

</head>

<body class="bg-light">
	<div class="topnav">
		<a href="../../Home/index.html">Home</a> <a
			href="../../Profile/index.html">Profile</a> <a class="active"
			href="listActivity.jsp">Activity</a>
		<button class="logout" onclick="openForm()">Log Out</button>
		<div class="form-popup" id="logout-form">
			<form action="#" class="form-container">
				<div class="logout-header">Confirm Log Out?</div>
				<button type="submit" class="btn">Log Out</button>
				<button type="button" class="btn cancel" onclick="closeForm()">Close</button>
				<script src="../CSS/js/openForm.js"></script>
			</form>
		</div>
	</div>

  <div class="card">
    <article class="my-3" id="tables">
      <div class="bd-example">
        <table class="table table-striped">
          <thead>
            <tr>
							<th scope="col">Activity ID</th>
							<th scope="col">Instructor Name</th>
							<th scope="col">Seminar Fee Date</th>
							<th scope="col">Activity Date Type</th>
							<th scope="col">Activity Start Time</th>
							<th scope="col">Activity End Time</th>
							<th scope="col">Admins ID</th>

						</tr>
          </thead>
          <tbody>
            <tr>
              <th scope="row"><c:out value="${seminar.activityID}" /><br></th>
              <td><c:out value="${seminar.instructorName}" /><br></td>
              <td><c:out value="${seminar.seminarFee}" /><br></td>
              <td><c:out value="${seminar.activityStartTime}" /><br></td>
              <td><c:out value="${seminar.activityEndTime}" /><br></td>
              <td><c:out value="${seminar.seminarLocation}" /><br></td>
              <td><c:out value="${seminar.adminID}" /><br></td>
            </tr>
          </tbody>
        </table>
      </div>
    </article>
  </div>

</body>

</html>