<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html lang="en">


<head>

<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>System Admin - Movie Ticket System</title>
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.0.4/popper.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	crossorigin="anonymous"></script>

<link href="css/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
	crossorigin="anonymous"></script>
<style>
.overlay {
	display: none;
	position: fixed;
	z-index: 999;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.5);
	justify-content: center;
	align-items: center;
}

.popup-form {
	width: 50%;
	display: none;
	background-color: #fff;
	padding: 20px;
	border-radius: 4px;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.3);
}

.form-group {
	margin-bottom: 20px;
}

.form-control {
	width: 80%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 4px;
}

.btn-primary {
	background-color: #007bff;
	color: #fff;
	border: none;
	padding: 10px 20px;
	border-radius: 4px;
	cursor: pointer;
}
</style>
</head>

<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<!-- Navbar Brand-->
		<a class="navbar-brand ps-3" href="index.html">Movie Ticket System</a>
		<!-- Sidebar Toggle-->
		<!-- <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0"
			id="sidebarToggle" href="#!"> -->
		<i class="fas fa-bars"></i>
		</button>
		<!-- Navbar Search-->
		<form
			class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
			<div class="input-group">
				<!-- <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..."
					aria-describedby="btnNavbarSearch" />
				<button class="btn btn-primary" id="btnNavbarSearch" type="button">
					<i class="fas fa-search"></i> -->
				</button>
			</div>
		</form>
		<!-- Navbar-->
		<ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
				role="button" data-bs-toggle="dropdown" aria-expanded="false"><i
					class="fas fa-user fa-fw"></i></a>
				<ul class="dropdown-menu dropdown-menu-end"
					aria-labelledby="navbarDropdown">

					<li><a class="dropdown-item" href="#!">Logout</a></li>
				</ul></li>
		</ul>
	</nav>
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-dark"
				id="sidenavAccordion">
				<div class="sb-sidenav-menu">
					<div class="nav">
						<div class="sb-sidenav-menu-heading">
							<!-- Core -->
						</div>
						<a class="nav-link" href="Movies.jsp">
							<div class="sb-nav-link-icon">
								<i class="fas fa-film"></i></i>
							</div> Movies
						</a>
						<!--   <div class="sb-sidenav-menu-heading">Interface</div> -->
						<a class="nav-link" href="Theaters.jsp">
							<div class="sb-nav-link-icon">
								<i class="fas fa-caret-square-right"></i></i>
							</div> Theaters
						</a>
						<!-- <div class="collapse" id="collapseLayouts"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="layout-static.html">Static
									Navigation</a> <a class="nav-link" href="layout-sidenav-light.html">Light
									Sidenav</a>
							</nav>
						</div> -->
						<!-- <a class="nav-link" href="Users.jsp">
							<div class="sb-nav-link-icon">
								<i class="fas fa-users"></i></i>
							</div> Users
						</a> -->
						<!-- <div class="collapse" id="collapsePages"
							aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav accordion"
								id="sidenavAccordionPages">
								<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
									data-bs-target="#pagesCollapseAuth" aria-expanded="false"
									aria-controls="pagesCollapseAuth"> Authentication
									<div class="sb-sidenav-collapse-arrow">
										<i class="fas fa-angle-down"></i>
									</div>
								</a>
								<div class="collapse" id="pagesCollapseAuth"
									aria-labelledby="headingOne"
									data-bs-parent="#sidenavAccordionPages">
									<nav class="sb-sidenav-menu-nested nav">
										<a class="nav-link" href="login.html">Login</a> <a
											class="nav-link" href="register.html">Register</a> <a
											class="nav-link" href="password.html">Forgot Password</a>
									</nav>
								</div>
								<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
									data-bs-target="#pagesCollapseError" aria-expanded="false"
									aria-controls="pagesCollapseError"> Error
									<div class="sb-sidenav-collapse-arrow">
										<i class="fas fa-angle-down"></i>
									</div>
								</a>
								<div class="collapse" id="pagesCollapseError"
									aria-labelledby="headingOne"
									data-bs-parent="#sidenavAccordionPages">
									<nav class="sb-sidenav-menu-nested nav">
										<a class="nav-link" href="401.html">401 Page</a> <a
											class="nav-link" href="404.html">404 Page</a> <a
											class="nav-link" href="500.html">500 Page</a>
									</nav>
								</div>
							</nav>
						</div> -->
						<!-- <!-- <div class="sb-sidenav-menu-heading">Addons</div> -->
						<!-- <a class="nav-link" href="charts.html">
							<div class="sb-nav-link-icon">
								<i class="fas fa-list-ul"></i></i>
							</div> Booking Details
						</a> <a class="nav-link" href="tables.html">
							<div class="sb-nav-link-icon">
								<i class="far fa-file-alt"></i>
							</div> Report
						</a> --> 
					</div>
				</div>
				<div class="sb-sidenav-footer">
					<div class="small">Logged in as:</div>
					Admin System
				</div>
			</nav>
		</div>
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid px-4">
					<h1 class="mt-4">Dashboard</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item active">
							<!-- Dashboard -->
						</li>
					</ol>
					<div class="card mb-4">
						<div class="card-header row">
							<div class="col-8 ">
								<i class="fas fa-table me-1"></i> Theaters
							</div>
							<div class="col-4 justify-content-end">
								<button class="btn btn-block btn-sm btn-primary" type="button"
									id="new_movie" onclick="showPopupForm()">
									<i class="fa fa-plus"></i> New Theaters
								</button>
							</div>
						</div>

						<p></p>

						<%-- <jsp:include page="/TheatersCon"></jsp:include> --%>
						<div class="overlay" id="overlay">
							<div class="popup-form" id="popupForm">
								<h2>Enter Theaters Details</h2>
								<form action="Theaters1.jsp" method="post">
									<div class="form-group">
										<label for="name">Location Theaters:</label> <input type="text"
											name="nameTheaters" id="nameTheaters" required
											class="form-control">
									</div>
									Choose Hall
									<div class="form-group">
										<select class="form-control" name="nameTheaters" id="nameTheaters" required
											>
											
											<option value="1">Hall A</option>
											<option value="2">Hall B</option>
											<option value="3">Hall C</option>
										</select>
									</div>
									<div class="form-group">
										<label for="seat">Seat:</label> <input type="number"
											name="seat" id="seat" required class="form-control">
									</div>
									<button type="submit" class="btn btn-primary" onclick="Theaters1()">Save</button>
									<button type="button" class="btn btn-primary"
										onclick="closePopupForm()">Cancel</button>
								</form>
							</div>
						</div>
						
						<script>
							function showPopupForm() {
								document.getElementById('overlay').style.display = 'flex';
								document.getElementById('popupForm').style.display = 'block';
							}

							function closePopupForm() {
								document.getElementById('overlay').style.display = 'none';
								document.getElementById('popupForm').style.display = 'none';
							}
						</script>
						
						<div class="card-body">
							<table id="customers" class="table table-bordered"
								id="data-table">
								<tr>
									<th>No.</th>
									<th>Location</th>
									<th>Hall</th>
									<th>Seat</th>
									<th>Action</th>
								</tr>
								<tr id="row1">
									<td>1</td>
									<td>IOI</td>
									<td>Hall A</td>
									<td>40</td>
									<td>
											<button class="btn btn-primary mr-2" onclick="editRow(this)">Edit</button>
											<button class="btn btn-danger" onclick="deleteRow(this)">Delete</button>
										</td>
								</tr>
								<tr id="row2">
									<td>2</td>
									<td>KB Mall</td>
									<td>Hall C</td>
									<td>50</td>
									<td>
											<button class="btn btn-primary mr-2" onclick="editRow(this)">Edit</button>
											<button class="btn btn-danger" onclick="deleteRow(this)">Delete</button>
										</td>
								</tr>
							</table>
						</div>

					</div>
					<!-- <div class="card mb-4">
						 <div class="card-header row">
							<div class="col-8 ">
								<i class="fas fa-table me-1"></i> Seat Groups
							</div>
							<div class="col-4 justify-content-end">
								<button class="btn btn-block btn-sm btn-primary" type="button"
									id="new_movie" onclick="showPopupForm1()">
									<i class="fa fa-plus"></i> New Seat Groups
								</button>
							</div>
						</div> 
						<p></p>
						<div class="overlay" id="overlay1">
							<div class="popup-form" id="popupForm1">
								<h2>Enter Seat Details</h2>
								<form action="SaveDetails.jsp" method="post">
									<div class="form-group">
										<label for="name">Name Theaters:</label> <input type="text"
											name="nameTheaters" id="nameTheaters" required
											class="form-control">
									</div>
									<div class="form-group">
										<label for="location">Location Theaters:</label> <input
											type="text" name="location" id="location" required
											class="form-control">
									</div>
									<div class="form-group">
										<label for="seat">Seat:</label> <input type="number"
											name="seat" id="seat" required class="form-control">
									</div>
									<button type="submit" class="btn btn-primary">Save</button>
									<button type="button" class="btn btn-primary"
										onclick="closePopupForm1()">Cancel</button>
								</form>
							</div>
						</div> -->

						<script>
							function showPopupForm1() {
								document.getElementById('overlay1').style.display = 'flex';
								document.getElementById('popupForm1').style.display = 'block';
							}

							function closePopupForm1() {
								document.getElementById('overlay1').style.display = 'none';
								document.getElementById('popupForm1').style.display = 'none';
							}
						</script>


					<div class="card-body">
							<!-- 	<table id="customers">
								<tr>
									<th>No.</th>
									<th>Cover</th>
									<th>Title</th>
									<th>Status</th>
									<th>Action</th>
								</tr>
								<tr>
									<td>1</td>
									<td>Maria Anders</td>
									<td>Germany</td>
									<td>Active</td>
									<td>
										<center>
											<div class="btn-group">
												<button type="button"
													class="btn btn-primary dropdown-toggle"
													data-toggle="dropdown" aria-haspopup="true"
													aria-expanded="false">Action</button>
												<div class="dropdown-menu">
													<a class="dropdown-item" href="#">Edit</a>
													<div class="dropdown-divider"></div>
													<a class="dropdown-item" href="#">Remove</a>
												</div>
										</center>
									</td>
									<style>
        .data-table {
            table-layout: fixed;
            width: 100%;
        }

        .data-table th, .data-table td {
            width: 25%;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }

        .edit-input {
            width: 100%;
            box-sizing: border-box;
        }
    </style>
<script>
        function removeRow(rowId) {
            var row = document.getElementById(rowId);
            if (row) {
                row.remove();
            }
        }
    </script>
								</tr>
								<tr>
									<td>2</td>
									<td>Christina Berglund</td>
									<td>Sweden</td>
									<td>Active</td>
									<td>
										<center>
											<div class="btn-group">
												<button type="button"
													class="btn btn-primary dropdown-toggle"
													data-toggle="dropdown" aria-haspopup="true"
													aria-expanded="false">Action</button>
												<div class="dropdown-menu">
													<a class="dropdown-item" href="#">Edit</a>
													<div class="dropdown-divider"></div>
													<a class="dropdown-item" href="#">Remove</a>
												</div>
										</center>
									</td>
								</tr>
								<tr>
									<td>3</td>
									<td>Francisco Chang</td>
									<td>Mexico</td>
									<td>Active</td>
									<td>
										<center>
											<div class="btn-group">
												<button type="button"
													class="btn btn-primary dropdown-toggle"
													data-toggle="dropdown" aria-haspopup="true"
													aria-expanded="false">Action</button>
												<div class="dropdown-menu">
													<a class="dropdown-item" href="#">Edit</a>
													<div class="dropdown-divider"></div>
													<a class="dropdown-item" href="#">Remove</a>
												</div>
										</center>
									</td>
								</tr>
								<tr>
									<td>4</td>
									<td>Roland Mendel</td>
									<td>Austria</td>
									<td>Active</td>
									<td>
										<center>
											<div class="btn-group">
												<button type="button"
													class="btn btn-primary dropdown-toggle"
													data-toggle="dropdown" aria-haspopup="true"
													aria-expanded="false">Action</button>
												<div class="dropdown-menu">
													<a class="dropdown-item" href="#">Edit</a>
													<div class="dropdown-divider"></div>
													<a class="dropdown-item" href="#">Remove</a>
												</div>
										</center>
									</td>
								</tr>
								<tr>
									<td>5</td>
									<td>Helen Bennett</td>
									<td>UK</td>
									<td>Active</td>
									<td>
										<center>
											<div class="btn-group">
												<button type="button"
													class="btn btn-primary dropdown-toggle"
													data-toggle="dropdown" aria-haspopup="true"
													aria-expanded="false">Action</button>
												<div class="dropdown-menu">
													<a class="dropdown-item" href="#">Edit</a>
													<div class="dropdown-divider"></div>
													<a class="dropdown-item" href="#">Remove</a>
												</div>
										</center>
									</td>
								</tr>

							</table>
						</div> -->
					</div>
				</div>


			</main>
			<footer class="py-4 bg-light mt-auto">
				<div class="container-fluid px-4">
					<div
						class="d-flex align-items-center justify-content-between small">
						<div class="text-muted">Copyright &copy; Your Website 2023</div>
						<div>
							<a href="#">Privacy Policy</a> &middot; <a href="#">Terms
								&amp; Conditions</a>
						</div>
					</div>
				</div>
			</footer>
		</div>

	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous">
		
	</script>
	<script src="js/scripts.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
		crossorigin="anonymous"></script>
	<script src="assets/demo/chart-area-demo.js"></script>
	<script src="assets/demo/chart-bar-demo.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
		crossorigin="anonymous"></script>
	<script src="js/datatables-simple-demo.js"></script>
	<script>
		  function Theaters1() {
		    window.location.href = "Theaters1.jsp";
		  }
		</script>
</body>

</html>