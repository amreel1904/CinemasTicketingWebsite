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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
.form-scroll {
	max-height: 480px;
	overflow-y: scroll;
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
			<!-- <div class="input-group">
				<input class="form-control" type="text" placeholder="Search for..."
					aria-label="Search for..." aria-describedby="btnNavbarSearch" />
				<button class="btn btn-primary" id="btnNavbarSearch" type="button">
					<i class="fas fa-search"></i>
				</button>
			</div> -->
		</form>
		<!-- Navbar-->
		<ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
				role="button" data-bs-toggle="dropdown" aria-expanded="false"><i
					class="fas fa-user fa-fw"></i></a>
				<ul class="dropdown-menu dropdown-menu-end"
					aria-labelledby="navbarDropdown">
					<!-- <li><a class="dropdown-item" href="#!">Settings</a></li>
					<li><a class="dropdown-item" href="#!">Activity Log</a></li>
					<li><hr class="dropdown-divider" /></li> -->
					<li><a class="dropdown-item" href="#!">Logout</a></li>
				</ul></li>
		</ul>
		</li>
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
								<i class="fas fa-tachometer-alt"></i>
							</div> Movies
						</a>
						<!--   <div class="sb-sidenav-menu-heading">Interface</div> -->
						<a class="nav-link" href="Theaters.jsp">
							<div class="sb-nav-link-icon">
								<i class="fas fa-tachometer-alt"></i>
							</div> Theaters
						</a>
						<!-- <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne"
							data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="layout-static.html">Static
									Navigation</a> <a class="nav-link" href="layout-sidenav-light.html">Light
									Sidenav</a>
							</nav>
						</div> -->
						<!-- <a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapsePages" aria-expanded="false"
							aria-controls="collapsePages">
							<div class="sb-nav-link-icon">
								<i class="fas fa-book-open"></i>
							</div> Users
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
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
						</div>
						<!-- <div class="sb-sidenav-menu-heading">Addons</div> -->
						<!-- <a class="nav-link" href="charts.html">
							<div class="sb-nav-link-icon">
								<i class="fas fa-chart-area"></i>
							</div> Booking Details
						</a> <a class="nav-link" href="tables.html">
							<div class="sb-nav-link-icon">
								<i class="fas fa-table"></i>
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
					<!-- <div class="row">
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-primary text-white mb-4">
                                    <div class="card-body">Primary Card</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-warning text-white mb-4">
                                    <div class="card-body">Warning Card</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-success text-white mb-4">
                                    <div class="card-body">Success Card</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-danger text-white mb-4">
                                    <div class="card-body">Danger Card</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                        </div> -->
					<!-- <div class="row">
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-area me-1"></i>
                                        Area Chart Example
                                    </div>
                                    <div class="card-body"><canvas id="myAreaChart" width="100%" height="40"></canvas></div>
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-bar me-1"></i>
                                        Bar Chart Example
                                    </div>
                                    <div class="card-body"><canvas id="myBarChart" width="100%" height="40"></canvas></div>
                                </div>
                            </div>
                        </div> -->
					<div class="card mb-4 ">
						<div class="card-header row">
							<div class="col-8 ">
								<i class="fas fa-table me-1"></i> Movies Details
							</div>
							<div class="col-4 justify-content-end">
								<button class="btn btn-block btn-sm btn-primary" type="button"
									id="new_movie" onclick="showPopupForm()">
									<i class="fa fa-plus"></i> New Movie
								</button>
							</div>
						</div>
						<div class="overlay" id="overlay">
							<div class="popup-form" id="popupForm">
								<h2>
									<br> <br>Enter Movie Details
								</h2>

								<hr class="dropdown-divider" />

								<div class="form-scroll">
									<form action="" method="post">
										<div class="form-group">
											<label for="movieTitle">Movie Title:</label> <input
												type="text" name="movieTitle" id="movieTitle" required
												class="form-control" placeholder="Movie Title">

										</div>
										<div class="form-group">
											<label for="description">Description:</label>
											<textarea id="w3review" name="description" id="description"
												required class="form-control"
												placeholder="Movie Description"></textarea>
										</div>
										<div class="form-group">
											<label for="movieTitle">Genre:</label> <input type="text"
												name="genre" id="genre" required class="form-control"
												placeholder="Genre Movie">

										</div>
										<div class="container">
											<div class="form-group row">
												<label for="" class="control-label col-md-12 pl-0">Duration
													(in minutes)</label> <input type="number" name="minute" required
													class="form-control col-sm-4 offset-md-1 ml-0" min="0"
													placeholder="Minutes">
											</div>
										</div>

										<div class="container">
											<div class="form-group row ">
												<label for="" class="control-label pl-0">Showing
													Schedule</label> <input name="date_showing" id="" type="date"
													class="form-control ml-0">
											</div>
											<div class="form-group row ">
												<label for="" class="control-label">End Date</label> <input
													name="end_date" id="" type="date" class="form-control ml-0">
											</div>
										</div>

										<!-- <div class="form-group">
											<img src="../assets/img/" alt="" id="cover_img" width="50"
												height="75">
										</div> -->
										<!-- <div class="form-group input-group">
											<label for="" class="control-label">Cover Image</label> <br>
											<div class="input-group-prepend">
												<span class="input-group-text">Upload</span>
											</div>
											<div class="custom-file">
												<input type="file" name="cover" class="custom-file-input"
													id="cover-img" onchange="displayImg(this)"> <label
													class="custom-file-label" for="cover-img">Choose
													file</label>
											</div>
										</div> -->



										<button  type="button"  class="btn btn-primary" onclick="Movies1()">Save</button>
										<button type="button" class="btn btn-primary"
											onclick="closePopupForm()">Cancel</button>
									</form>
								</div>
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
							<table id="customers">
								<tr>
									<th>No.</th>
									<th>Title</th>
									<th>Description</th>
									<th>Genre</th>
									<th>Duration(min)</th>
									<th>Showing Date</th>
									<th>End Date</th>
									<th>Action</th>
								</tr>
								<tr id="row1">
									<td>1</td>
									<td>Elemental</td>
									<td>...</td>
									<td>Comedy</td>
									<td>120 </td>
									<td>01/01/2023</td>
									<td>01/02/2023</td>
								<td><center>
                        <button class="btn btn-primary mr-2" onclick="editRow(this)">Edit</button>
                        <button class="btn btn-danger" onclick="deleteRow(this)">Delete</button>
                        </center>
                    </td>
								</tr>
								<tr id="row2">
									<td>2</td>
									<td>Spider-Man:Across the Spider Verse</td>
									<td>...</td>
									<td>Action</td>
									<td>150 </td>
									<td>02/02/2023</td>
									<td>03/03/2023</td>
									
									<td><center>
                        <button class="btn btn-primary mr-2" onclick="editRow(this)">Edit</button>
                        <button class="btn btn-danger" onclick="deleteRow(this)">Delete</button>
                        </center>
                    </td></tr>
                    <tr id="row3">
									<td>3</td>
									<td>Fast X</td>
									<td>...</td>
									<td>Action</td>
									<td>150 </td>
									<td>04/04/2023</td>
									<td>05/05/2023</td>
									
									<td><center>
                        <button class="btn btn-primary mr-2" onclick="editRow(this)">Edit</button>
                        <button class="btn btn-danger" onclick="deleteRow(this)">Delete</button>
                        </center>
                    </td></tr>
                    <tr id="row4">
									<td>4</td>
									<td>Guardian of the Galaxy Vol.3</td>
									<td>...</td>
									<td>Adventure</td>
									<td>120 </td>
									<td>05/05/2023</td>
									<td>06/06/2023</td>
									
									<td><center>
                        <button class="btn btn-primary mr-2" onclick="editRow(this)">Edit</button>
                        <button class="btn btn-danger" onclick="deleteRow(this)">Delete</button>
                        </center>
                    </td></tr>
                     <tr id="row5">
									<td>5</td>
									<td>Polis Evo 3</td>
									<td>...</td>
									<td>Horror</td>
									<td>150 </td>
									<td>07/07/2023</td>
									<td>08/08/2023</td>
									
									<td><center>
                        <button class="btn btn-primary mr-2" onclick="editRow(this)">Edit</button>
                        <button class="btn btn-danger" onclick="deleteRow(this)">Delete</button>
                        </center>
                    </td></tr>
                     
								
								
								
								
								
								
								
								
							</table>
						</div>
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
		crossorigin="anonymous"></script>
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





	<script>$('#new_movie').click(function () {
			uni_modal('New Movie', 'ManageMovies.jsp');
		})
		$('.edit_movie').click(function () {
			uni_modal('Edit Movie', 'manage_movie.php?id=' + $(this).attr('data-id'));
		})
		$('.delete_movie').click(function () {
			_conf('Are you sure to delete this data?', 'delete_movie', [$(this).attr('data-id')])
		})

		function delete_movie($id = '') {
			start_load()
			$.ajax({
				url: 'ajax.php?action=delete_movie',
				method: 'POST',
				data: { id: $id },
				success: function (resp) {
					if (resp == 1) {
						alert_toast("Data successfully deleted", 'success');
						setTimeout(function () {
							location.reload()
						}, 1500)
					}
				}
			})
		}</script>
		<script>
		  function Movies1() {
		    window.location.href = "Movies1.jsp";
		  }
		</script>

</body>

</html>