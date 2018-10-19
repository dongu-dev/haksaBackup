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
.mail-box {
	border-collapse: collapse;
	border-spacing: 0;
	display: table;
	table-layout: fixed;
	width: 100%;
}

.mail-box aside {
	display: table-cell;
	float: none;
	height: 100%;
	padding: 0;
	vertical-align: top;
}

.mail-box .sm-side {
	background: none repeat scroll 0 0 #e5e8ef;
	border-radius: 4px 0 0 4px;
	width: 25%;
}

.mail-box .lg-side {
	background: none repeat scroll 0 0 #fff;
	border-radius: 0 4px 4px 0;
	width: 75%;
}

.mail-box .sm-side .user-head {
	background: none repeat scroll 0 0 #00a8b3;
	border-radius: 4px 0 0;
	color: #fff;
	min-height: 80px;
	padding: 10px;
}

.user-head .inbox-avatar {
	float: left;
	width: 65px;
}

.user-head .inbox-avatar img {
	border-radius: 4px;
}

.user-head .user-name {
	display: inline-block;
	margin: 0 0 0 10px;
}

.user-head .user-name h5 {
	font-size: 14px;
	font-weight: 300;
	margin-bottom: 0;
	margin-top: 15px;
}

.user-head .user-name h5 a {
	color: #fff;
}

.user-head .user-name span a {
	color: #87e2e7;
	font-size: 12px;
}

a.mail-dropdown {
	background: none repeat scroll 0 0 #80d3d9;
	border-radius: 2px;
	color: #01a7b3;
	font-size: 10px;
	margin-top: 20px;
	padding: 3px 5px;
}

.inbox-body {
	padding: 20px;
}

.btn-compose {
	background: none repeat scroll 0 0 #ff6c60;
	color: #fff;
	padding: 12px 0;
	text-align: center;
	width: 100%;
}

.btn-compose:hover {
	background: none repeat scroll 0 0 #f5675c;
	color: #fff;
}

ul.inbox-nav {
	display: inline-block;
	margin: 0;
	padding: 0;
	width: 100%;
}

.inbox-divider {
	border-bottom: 1px solid #d5d8df;
}

ul.inbox-nav li {
	display: inline-block;
	line-height: 45px;
	width: 100%;
}

ul.inbox-nav li a {
	color: #6a6a6a;
	display: inline-block;
	line-height: 45px;
	padding: 0 20px;
	width: 100%;
}

ul.inbox-nav li a:hover, ul.inbox-nav li.active a, ul.inbox-nav li a:focus
	{
	background: none repeat scroll 0 0 #d5d7de;
	color: #6a6a6a;
}

ul.inbox-nav li a i {
	color: #6a6a6a;
	font-size: 16px;
	padding-right: 10px;
}

ul.inbox-nav li a span.label {
	margin-top: 13px;
}

ul.labels-info li h4 {
	color: #5c5c5e;
	font-size: 13px;
	padding-left: 15px;
	padding-right: 15px;
	padding-top: 5px;
	text-transform: uppercase;
}

ul.labels-info li {
	margin: 0;
}

ul.labels-info li a {
	border-radius: 0;
	color: #6a6a6a;
}

ul.labels-info li a:hover, ul.labels-info li a:focus {
	background: none repeat scroll 0 0 #d5d7de;
	color: #6a6a6a;
}

ul.labels-info li a i {
	padding-right: 10px;
}

.nav.nav-pills.nav-stacked.labels-info p {
	color: #9d9f9e;
	font-size: 11px;
	margin-bottom: 0;
	padding: 0 22px;
}

.inbox-head {
	background: none repeat scroll 0 0 #41cac0;
	border-radius: 0 4px 0 0;
	color: #fff;
	min-height: 80px;
	padding: 20px;
}

.inbox-head h3 {
	display: inline-block;
	font-weight: 300;
	margin: 0;
	padding-top: 6px;
}

.inbox-head .sr-input {
	border: medium none;
	border-radius: 4px 0 0 4px;
	box-shadow: none;
	color: #8a8a8a;
	float: left;
	height: 40px;
	padding: 0 10px;
}

.inbox-head .sr-btn {
	background: none repeat scroll 0 0 #00a6b2;
	border: medium none;
	border-radius: 0 4px 4px 0;
	color: #fff;
	height: 40px;
	padding: 0 20px;
}

.table-inbox {
	border: 1px solid #d3d3d3;
	margin-bottom: 0;
}

.table-inbox tr td {
	padding: 12px !important;
}

.table-inbox tr td:hover {
	cursor: pointer;
}

.table-inbox tr td .fa-star.inbox-started, .table-inbox tr td .fa-star:hover
	{
	color: #f78a09;
}

.table-inbox tr td .fa-star {
	color: #d5d5d5;
}

.table-inbox tr.unread td {
	background: none repeat scroll 0 0 #f7f7f7;
	font-weight: 600;
}

ul.inbox-pagination {
	float: right;
}

ul.inbox-pagination li {
	float: left;
}

.mail-option {
	display: inline-block;
	margin-bottom: 10px;
	width: 100%;
}

.mail-option .chk-all, .mail-option .btn-group {
	margin-right: 5px;
}

.mail-option .chk-all, .mail-option .btn-group a.btn {
	background: none repeat scroll 0 0 #fcfcfc;
	border: 1px solid #e7e7e7;
	border-radius: 3px !important;
	color: #afafaf;
	display: inline-block;
	padding: 5px 10px;
}

.inbox-pagination a.np-btn {
	background: none repeat scroll 0 0 #fcfcfc;
	border: 1px solid #e7e7e7;
	border-radius: 3px !important;
	color: #afafaf;
	display: inline-block;
	padding: 5px 15px;
}

.mail-option .chk-all input[type="checkbox"] {
	margin-top: 0;
}

.mail-option .btn-group a.all {
	border: medium none;
	padding: 0;
}

.inbox-pagination a.np-btn {
	margin-left: 5px;
}

.inbox-pagination li span {
	display: inline-block;
	margin-right: 5px;
	margin-top: 7px;
}

.fileinput-button {
	background: none repeat scroll 0 0 #eeeeee;
	border: 1px solid #e6e6e6;
}

.inbox-body .modal .modal-body input, .inbox-body .modal .modal-body textarea
	{
	border: 1px solid #e6e6e6;
	box-shadow: none;
}

.btn-send, .btn-send:hover {
	background: none repeat scroll 0 0 #00a8b3;
	color: #fff;
}

.btn-send:hover {
	background: none repeat scroll 0 0 #009da7;
}

.modal-header h4.modal-title {
	font-family: "Open Sans", sans-serif;
	font-weight: 300;
}

.modal-body label {
	font-family: "Open Sans", sans-serif;
	font-weight: 400;
}

.heading-inbox h4 {
	border-bottom: 1px solid #ddd;
	color: #444;
	font-size: 18px;
	margin-top: 20px;
	padding-bottom: 10px;
}

.sender-info {
	margin-bottom: 20px;
}

.sender-info img {
	height: 30px;
	width: 30px;
}

.sender-dropdown {
	background: none repeat scroll 0 0 #eaeaea;
	color: #777;
	font-size: 10px;
	padding: 0 3px;
}

.view-mail a {
	color: #ff6c60;
}

.attachment-mail {
	margin-top: 30px;
}

.attachment-mail ul {
	display: inline-block;
	margin-bottom: 30px;
	width: 100%;
}

.attachment-mail ul li {
	float: left;
	margin-bottom: 10px;
	margin-right: 10px;
	width: 150px;
}

.attachment-mail ul li img {
	width: 100%;
}

.attachment-mail ul li span {
	float: right;
}

.attachment-mail .file-name {
	float: left;
}

.attachment-mail .links {
	display: inline-block;
	width: 100%;
}

.fileinput-button {
	float: right;
	margin-right: 4px;
	overflow: hidden;
	position: relative;
}

.fileinput-button input {
	cursor: pointer;
	direction: ltr;
	font-size: 23px;
	margin: 0;
	opacity: 0;
	position: absolute;
	right: 0;
	top: 0;
	transform: translate(-300px, 0px) scale(4);
}

.fileupload-buttonbar .btn, .fileupload-buttonbar .toggle {
	margin-bottom: 5px;
}

.files .progress {
	width: 200px;
}

.fileupload-processing .fileupload-loading {
	display: block;
}

* html .fileinput-button {
	line-height: 24px;
	margin: 1px -3px 0 0;
}

*+html .fileinput-button {
	margin: 1px 0 0;
	padding: 2px 15px;
}

@media ( max-width : 767px) {
	.files .btn span {
		display: none;
	}
	.files .preview * {
		width: 40px;
	}
	.files .name * {
		display: inline-block;
		width: 80px;
		word-wrap: break-word;
	}
	.files .progress {
		width: 20px;
	}
	.files .delete {
		width: 60px;
	}
}

ul {
	list-style-type: none;
	padding: 0px;
	margin: 0px;
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
				<div class="mail-box">
					<aside class="lg-side">
						<div class="inbox-head">
							<div class="input-append">
								<input type="text" class="sr-input" placeholder="Tìm kiếm">
								<button class="btn sr-btn" type="button">
									<i class="fa fa-search"></i>
								</button>
								&ensp;
								<button class="btn sr-btn" type="button">조회</button>
								&ensp;
								<button class="btn sr-btn" type="button">입력</button>
								&ensp;
								<button class="btn sr-btn" type="button">저장</button>
							</div>
						</div>
						<div class="inbox-body">
							<div class="mail-option">
								<table class="table table-inbox table-hover">
									<tbody>
										<tr class="unread">
											<td class="view-message  dont-show">Mã nhân viên</td>
											<td class="view-message">Họ và tên</td>
											<td></td>
											<td></td>
											<td>Tình trạng</td>
											<td class="view-message  text-left">Chức vụ</td>
										</tr>

										<tr class="">
											<td class="view-message  dont-show">NV0001</td>
											<td colspan="3" class="view-message">Tên của nhân viên</td>
											<td><span class="label label-success">Làm việc</span></td>
											<td class="view-message  text-left">Chức vụ</td>
										</tr>
										<tr class="">
											<td class="view-message dont-show">NV0005</td>
											<td colspan="3" class="view-message">Tên của nhân viên</td>
											<td><span class="label label-danger">Thôi việc</span></td>
											<td class="view-message  text-left">Chức vụ</td>
										</tr>
										<tr class="">
											<td class="view-message dont-show">NV0006</td>
											<td colspan="3" class="view-message">Tên của nhân viên</td>
											<td><span class="label label-success">Làm việc</span></td>
											<td class="view-message  text-left">Chức vụ</td>
										</tr>
										<tr class="">
											<td class="view-message dont-show">NV0007</td>
											<td colspan="3" class="view-message">Tên của nhân viên</td>
											<td><span class="label label-success">Làm việc</span></td>
											<td class="view-message  text-left">Chức vụ</td>
										</tr>
										<tr class="">
											<td class="view-message dont-show">NV0008</td>
											<td colspan="3" class="view-message">Tên của nhân viên</td>
											<td><span class="label label-warning">Tập huấn</span></td>
											<td class="view-message  text-left">Chức vụ</td>
										</tr>
										<tr class="">
											<td class="view-message dont-show">NV0010</td>
											<td colspan="3" class="view-message">Tên của nhân viên</td>
											<td><span class="label label-info">Công tác</span></td>
											<td class="view-message  text-left">Chức vụ</td>
									</tbody>
								</table>
							</div>
						</div>
					</aside>
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
	</div>
	<!-- /.content-wrapper -->
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