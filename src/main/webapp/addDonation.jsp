<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	 
<!doctype html>
<html lang="en">

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
<title>Add Donation | Al-Ikwaniah Mosque Activity System</title>

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

	.c1 {
	      position: absolute;
	      left:25%;
	    }
}
</style>

<!-- Custom styles for this template -->
<link href="css/form-validation.css" rel="stylesheet">
<link href="css/dropdown.css" rel="stylesheet">
</head>

<body class="bg-light">
	 <%@ include file = "AdminMenu.jsp" %>

		<main>
			<div class="py-5 text-center">
				<img class="d-block mx-auto mb-4"
					src="assets/brand/mosque.svg" alt="" width="102" height="97">
				<h2>Charity</h2>
				<p class="lead"></p>
			</div>


	<div class="c1">
			<div class="row g-5">
				<div class="col-md-7 col-lg-8">
					<h4 class="mb-3"></h4>
					<form action="AddCharity" method="POST" >
						<div class="row g-3">
						   		
						   		<div class="col-sm-6">
								<label for="activity_name" class="form-label">Activity Type</label> 
								<input type="text" class="form-control" name="ActivityType" value="Donation" readonly required>
							    </div>
							    
								<div class="col-sm-6">
								<label for="activity_name" class="form-label">Activity ID</label> 
								<input type="text" class="form-control" name="ActivityID" value="AC" required>
								<div class="invalid-feedback">Valid activity name is required.</div>
								</div>
								
								<div class="col-sm-6">
								<label for="activity_name" class="form-label">Activity Title</label> 
								<input type="text" class="form-control" name="ActivityTitle" value="" required>
								<div class="invalid-feedback">Valid activity title is required.</div>
								</div>
									
								<div class="col-sm-6">
								<label for="activity_name" class="form-label">Donation Type</label> 
								<input type="text" class="form-control" name="DonationType" required>
								<div class="invalid-feedback">Valid activity name is required.</div>
								</div>
								<div class="col-sm-6">
								<label for="activity_name" class="form-label">Activity Date</label> 
								<input type="date" class="form-control" name="ActivityDate" placeholder=""  required>
								<div class="invalid-feedback">Valid activity duration is required.</div>
								</div>
								<div class="col-sm-6">
								<label for="activity_name" class="form-label">Activity Start Time</label> 
								<input type="time" class="form-control" name="ActivityStartTime" placeholder="" required>
								<div class="invalid-feedback">Valid activity date is required.</div>
								</div>
								<div class="col-sm-6">
								<label for="activity_name" class="form-label">Activity End Time</label> 
								<input type="time" class="form-control" name="ActivityEndTime" placeholder=""  required>
								<div class="invalid-feedback">Valid activity date is required.</div>
								</div>
								<div class="col-sm-6">
								<label for="activity_name" class="form-label">Admin ID</label> 
								<input type="text" class="form-control" name="AdminID" placeholder=""  required>
								<div class="invalid-feedback">Valid activity date is required.</div>
								</div>
							


							<hr class="my-4">

							<button class="newbtn w-100 btn btn-primary btn-lg" type="submit">ADD</button>
						</div>
					</form>
				</div>
				</div>
			</div>
			
		</main>

	
	

	<script src="assets/dist/js/bootstrap.bundle.min.js"></script>
	<script src="js/form-validation.js"></script>
</body>

</html>