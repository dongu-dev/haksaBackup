<!-- 비정규직임용페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
	
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport"
			content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
		<title>비정규직 임용정보 입력 페이지</title>
		
		<!-- Bootstrap core CSS-->
		<link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		
		<!-- Custom fonts for this template-->
		<link href="/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
		
		<!-- Page level plugin CSS-->
		<link href="/resources/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
		
		<!-- Custom styles for this template-->
		<link href="/resources/css/sb-admin.css" rel="stylesheet">
		
		<style>
			#enrolScoreMain{
				text-align : left;
				font-weight: bold;
				font-size: 30px;
			}
			
			#form {
				text-align : right;
			}
		</style>
		
		<script>  
			// 입력 버튼 눌렀을 시 페이지 이동	
			function addTemporaryAppointment(){
			    window.location.href="${pageContext.request.contextPath}/personnelAppoint/addTemporaryAppointment";
			}
			
			// 조회 버튼 눌렀을 시 페이지 이동
			function temporaryAppointmentList(){
			    window.location.href="${pageContext.request.contextPath}/personnelAppoint/temporaryAppointmentList";
			}
		</script>
	</head>
	
	<body id="page-top">
	
		<jsp:include page="/WEB-INF/views/module/nav.jsp"/>
	
		<div id="wrapper">
	
			<jsp:include page="/WEB-INF/views/module/sidebar.jsp"/>
	
			<div id="content-wrapper">
	
				<div class="container-fluid">
				<!-- 여기에 내용이 담긴다 -->
				<h1>인사관리 > 임명관리</h1>
				<br>
				<p id="enrolScoreMain">* 비정규직 임용 정보 입력</p>
				<form id="form">
					<input type='button' class="btn btn-info" onclick='temporaryAppointmentList()' value='조회'/>
					<input type='button' class="btn btn-success" onclick='addTemporaryAppointment()' value='입력'/>
					<input type='button' class="btn btn-primary" id='savePersonnelAppointment' value='저장'/>
				</form>
				<br>
				<table id="table" class="table table-bordered">
					<tr>
						<th>교직원번호</th>
						<td><input type="text" class="form-control" name="promotionNumber" id="promotionNumber" placeholder="승진번호"></td>
						
						<th>경력구분</th>
						<td>
							<select class="form-control" id="">
								<option>신입</option>
								<option>경력</option>
							</select>
						</td>
						
						<th>계약시작기간</th>
						<td><input type="date" class="form-control" name="promotionAppointmentDay" id="promotionAppointmentDay" placeholder="임용일"></td>
						
						<th>계약만료기간</th>
						<td><input type="date" class="form-control" name="promotionAppointmentDay" id="promotionAppointmentDay" placeholder="임용일"></td>
					</tr>
				  	<tr>
						<th>임용시작기간</th>
						<td><input type="date" class="form-control" name="promotionAppointmentDay" id="promotionAppointmentDay" placeholder="임용일"></td>
						
						<th>임용만료기간</th>
						<td><input type="date" class="form-control" name="promotionAppointmentDay" id="promotionAppointmentDay" placeholder="임용일"></td>	
						
						<th>등록일자</th>
						<td><input type="date" class="form-control" name="promotionModificationDate" id="promotionModificationDate" placeholder="수정일자"></td>
				
						<th>수정일자</th>
						<td><input type="date" class="form-control" name="promotionModificationDate" id="promotionModificationDate" placeholder="수정일자"></td>
					</tr>
					<tr>
						<th>임명사유</th>
						<td colspan="6"><textarea class="form-control" name="promotionAppointReason" id="promotionAppointReason" ></textarea></td>
					</tr>
				</table>
			</div>
			<!-- /.content-wrapper -->
		</div>
		<!-- /#wrapper -->
		</div>
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