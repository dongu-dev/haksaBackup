<!-- 상벌코드 리스트 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>상벌코드 리스트</title>

<!-- Bootstrap core CSS-->
<link href="/resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom fonts for this template-->
<link href="/resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">

<!-- Page level plugin CSS-->
<link href="/resources/vendor/datatables/dataTables.bootstrap4.css"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="/resources/css/sb-admin.css" rel="stylesheet">

<style>
	 #form1 {
	 	display: table-caption;
	 }
</style>

<script>
	
</script>
</head>

<body id="page-top">

	<jsp:include page="/WEB-INF/views/module/nav.jsp" />

	<div id="wrapper">

		<jsp:include page="/WEB-INF/views/module/sidebar.jsp" />

		<div id="content-wrapper">


			<div class="container-fluid">
				<!-- 여기에 내용이 담긴다 -->
				<button type="button" class="btn btn-secondary" data-toggle="modal"
					data-target="#exampleModal">Launch demo modal top</button>
				<button type="button" class="btn btn-secondary" data-toggle="modal"
					data-target="#exampleModal1">Launch demo modal v center</button>
				<div class="row">

					<div class="col-md-12">
						<div class="tabbable" id="tabs-967254">
							<ul class="nav nav-tabs">
								<li class="nav-item"><a class="nav-link active"
									href="#panel-933367" data-toggle="tab">인사기본</a></li>
								<li class="nav-item"><a class="nav-link"
									href="#panel-503976" data-toggle="tab">학력사항</a></li>
							</ul><br>
							<div class="tab-content">
								<div class="tab-pane active" id="panel-933367">
									<!--GUIA GERAL-->

										<div class="form-row">
											<div class="col-md-2" id="form1">
												<label for="validationCustom01">First name</label>
												<input type="image" src="/resources/img/m.jpg">
											</div>
											<div class="col-md-3 mb-2">
												<label for="validationCustomUsername">Username</label>
												<div class="input-group">
													<div class="input-group-prepend">
														<span class="input-group-text" id="inputGroupPrepend">@</span>
													</div>
													<input type="text" class="form-control"
														id="validationCustomUsername" placeholder="Username"
														aria-describedby="inputGroupPrepend" required>
													<div class="invalid-feedback">Please choose a
														username.</div>
												</div>
											</div>
											<div class="col-md-3 mb-2">
												<label for="validationCustom01">sname</label> <input
													type="text" class="form-control" id="validationCustom01"
													placeholder="First name" value="Mark" required>
												<div class="valid-feedback">Looks good!</div>
											</div>
											<div class="col-md-3 mb-2">
												<label for="validationCustom02">Last name</label> <input
													type="text" class="form-control" id="validationCustom02"
													placeholder="Last name" value="Otto" required>
												<div class="valid-feedback">Looks good!</div>
											</div>
											<div class="col-md-2" id="form1">
											</div>
											<div class="col-md-3 mb-2">
												<label for="validationCustomUsername">Username</label>
												<div class="input-group">
													<div class="input-group-prepend">
														<span class="input-group-text" id="inputGroupPrepend">@</span>
													</div>
													<input type="text" class="form-control"
														id="validationCustomUsername" placeholder="Username"
														aria-describedby="inputGroupPrepend" required>
													<div class="invalid-feedback">Please choose a
														username.</div>
												</div>
											</div>
											<div class="col-md-3 mb-2">
												<label for="validationCustom01">First name</label> <input
													type="text" class="form-control" id="validationCustom01"
													placeholder="First name" value="Mark" required>
												<div class="valid-feedback">Looks good!</div>
											</div>
											<div class="col-md-3 mb-2">
												<label for="validationCustom02">Last name</label> <input
													type="text" class="form-control" id="validationCustom02"
													placeholder="Last name" value="Otto" required>
												<div class="valid-feedback">Looks good!</div>
											</div>
											
										</div>
											
										
										<div class="form-row">
											<div class="col-md-6 mb-3">
												<label for="validationCustom03">City</label> <input
													type="text" class="form-control" id="validationCustom03"
													placeholder="City" required>
												<div class="invalid-feedback">Please provide a valid
													city.</div>
											</div>
											<div class="col-md-3 mb-3">
												<label for="validationCustom04">State</label> <input
													type="text" class="form-control" id="validationCustom04"
													placeholder="State" required>
												<div class="invalid-feedback">Please provide a valid
													state.</div>
											</div>
											<div class="col-md-3 mb-3">
												<label for="validationCustom05">Zip</label> <input
													type="text" class="form-control" id="validationCustom05"
													placeholder="Zip" required>
												<div class="invalid-feedback">Please provide a valid
													zip.</div>
											</div>
										</div>
										<div class="form-group">
											<div class="form-check">
												<input class="form-check-input" type="checkbox" value=""
													id="invalidCheck" required> <label
													class="form-check-label" for="invalidCheck"> Agree
													to terms and conditions </label>
												<div class="invalid-feedback">You must agree before
													submitting.</div>
											</div>
											<div class="tab-pane" id="panel-503976">
												<div id="faturamento"></div>
											</div>
										</div>
								</div>
					</div>
				</div>
			</div>
			<!-- /.container-fluid -->

			<!-- Sticky Footer -->
			<footer class="sticky-footer">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Copyright © Haksa 2018</span>
					</div>
				</div>
			</footer>

		</div>
		<!-- /.content-wrapper -->

	</div>
	<!-- /#wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">Ã</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="login.html">Logout</a>
				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap core JavaScript-->
	<script src="/resources/vendor/jquery/jquery.min.js"></script>
	<script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Page level plugin JavaScript-->
	<script src="/resources/vendor/chart.js/Chart.min.js"></script>
	<script src="/resources/vendor/datatables/jquery.dataTables.js"></script>
	<script src="/resources/vendor/datatables/dataTables.bootstrap4.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="/resources/js/sb-admin.min.js"></script>

	<!-- Demo scripts for this page-->
	<script src="/resources/js/demo/datatables-demo.js"></script>
	<script src="/resources/js/demo/chart-area-demo.js"></script>

</body>
</html>