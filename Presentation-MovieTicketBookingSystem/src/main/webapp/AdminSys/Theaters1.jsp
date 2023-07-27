<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
					<li><a class="dropdown-item" href="LogIn.jsp">Logout</a></li>
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
						<div class="collapse" id="collapsePages"
							aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav accordion"
								id="sidenavAccordionPages">
								<!-- <a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
									data-bs-target="#pagesCollapseAuth" aria-expanded="false"
									aria-controls="pagesCollapseAuth"> Authentication
									<div class="sb-sidenav-collapse-arrow">
										<i class="fas fa-angle-down"></i>
									</div>
								</a> -->
								<div class="collapse" id="pagesCollapseAuth"
									aria-labelledby="headingOne"
									data-bs-parent="#sidenavAccordionPages">
									<!-- <nav class="sb-sidenav-menu-nested nav">
										<a class="nav-link" href="login.html">Login</a> <a
											class="nav-link" href="register.html">Register</a> <a
											class="nav-link" href="password.html">Forgot Password</a>
									</nav> -->
								</div>
								<!-- <a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
									data-bs-target="#pagesCollapseError" aria-expanded="false"
									aria-controls="pagesCollapseError"> Error
									<div class="sb-sidenav-collapse-arrow">
										<i class="fas fa-angle-down"></i>
									</div>
								</a> -->
								<
								<!-- div class="collapse" id="pagesCollapseError"
									aria-labelledby="headingOne"
									data-bs-parent="#sidenavAccordionPages">
									<nav class="sb-sidenav-menu-nested nav">
										<a class="nav-link" href="401.html">401 Page</a> <a
											class="nav-link" href="404.html">404 Page</a> <a
											class="nav-link" href="500.html">500 Page</a>
									</nav>
								</div> -->
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
							<div class="popup-form" id="popupForm" style="width:fit-to-content">
								<h2>Enter Theaters Details</h2>
								<form action=" " method="post">
									<div class="form-group">
										<label for="name">Location Theaters:</label> <input type="text"
											name="nameTheaters" id="nameTheaters" required
											class="form-control">
									</div>
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
									<button type="submit" class="btn btn-primary"
										onclick="Theaters1()">Save</button>
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
								<tr id="row2">
									<td>3</td>
									<td>Bukit Bintang</td>
									<td>Hall B</td>
									<td>70</td>
									<td>
										<button class="btn btn-primary mr-2" onclick="editRow(this)">Edit</button>
										<button class="btn btn-danger" onclick="deleteRow(this)">Delete</button>
									</td>
								</tr>
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
		}
	</script>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
	<script>
        function editRow(element) {
            var row = element.closest('tr');
            var cells = row.getElementsByTagName('td');

            for (var i = 0; i < cells.length - 1; i++) {
                var cell = cells[i];
                var text = cell.innerText;

                var input = document.createElement('input');
                input.type = 'text';
                input.value = text;
                input.classList.add('edit-input');

                cell.innerHTML = '';
                cell.appendChild(input);
            }

            var actionsCell = cells[cells.length - 1];
            var editButton = actionsCell.getElementsByTagName('button')[0];
            var deleteButton = actionsCell.getElementsByTagName('button')[1];
            editButton.disabled = true;
            deleteButton.disabled = true;

            var saveButton = document.createElement('button');
            saveButton.type = 'button';
            saveButton.classList.add('btn', 'btn-primary', 'mr-2');
            saveButton.innerText = 'Save';
            saveButton.addEventListener('click', function() {
                saveRow(row);
            });

            var cancelButton = document.createElement('button');
            cancelButton.type = 'button';
            cancelButton.classList.add('btn', 'btn-secondary');
            cancelButton.innerText = 'Cancel';
            cancelButton.addEventListener('click', function() {
                cancelEditRow(row);
            });

            actionsCell.innerHTML = '';
            actionsCell.appendChild(saveButton);
            actionsCell.appendChild(cancelButton);
        }

        function saveRow(row) {
            var cells = row.getElementsByTagName('td');

            for (var i = 0; i < cells.length - 1; i++) {
                var cell = cells[i];
                var input = cell.getElementsByTagName('input')[0];
                var text = input.value;

                cell.innerHTML = text;
            }

            var actionsCell = cells[cells.length - 1];
            var saveButton = actionsCell.getElementsByTagName('button')[0];
            var cancelButton = actionsCell.getElementsByTagName('button')[1];
            saveButton.remove();
            cancelButton.remove();

            var editButton = document.createElement('button');
            editButton.type = 'button';
            editButton.classList.add('btn', 'btn-primary', 'mr-2');
            editButton.innerText = 'Edit';
            editButton.addEventListener('click', function() {
                editRow(this);
            });

            var deleteButton = document.createElement('button');
            deleteButton.type = 'button';
            deleteButton.classList.add('btn', 'btn-danger');
            deleteButton.innerText = 'Delete';
            deleteButton.addEventListener('click', function() {
                deleteRow(this);
            });

            actionsCell.innerHTML = '';
            actionsCell.appendChild(editButton);
            actionsCell.appendChild(deleteButton);
        }

        function cancelEditRow(row) {
            var cells = row.getElementsByTagName('td');

            for (var i = 0; i < cells.length - 1; i++) {
                var cell = cells[i];
                var input = cell.getElementsByTagName('input')[0];
                var text = input.value;

                cell.innerHTML = text;
            }

            var actionsCell = cells[cells.length - 1];
            var saveButton = actionsCell.getElementsByTagName('button')[0];
            var cancelButton = actionsCell.getElementsByTagName('button')[1];
            saveButton.remove();
            cancelButton.remove();

            var editButton = document.createElement('button');
            editButton.type = 'button';
            editButton.classList.add('btn', 'btn-primary', 'mr-2');
            editButton.innerText = 'Edit';
            editButton.addEventListener('click', function() {
                editRow(this);
            });

            var deleteButton = document.createElement('button');
            deleteButton.type = 'button';
            deleteButton.classList.add('btn', 'btn-danger');
            deleteButton.innerText = 'Delete';
            deleteButton.addEventListener('click', function() {
                deleteRow(this);
            });

            actionsCell.innerHTML = '';
            actionsCell.appendChild(editButton);
            actionsCell.appendChild(deleteButton);
        }

        function deleteRow(element) {
            var row = element.closest('tr');
            row.remove();
        }
    </script>


</body>

</html>