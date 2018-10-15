<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
	
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport"
			content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
		<title>인사공통코드 리스트</title>
		
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
			
			#c:if {
				text-align : right;
			}
		</style>
		
		<script>
			function addPersonnelCommonCode(){
			    window.location.href="${pageContext.request.contextPath}/personnelCode/addPersonnelCommonCode";
			}
			
			function personnelCommonCodeList(){
			    window.location.href="${pageContext.request.contextPath}/personnelCode/personnelCommonCodeList?a=" + 'click';
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
				<h1>인사관리 > 인사공통코드</h1>
				<br>
				<p id="enrolScoreMain">* 인사공통코드 리스트</p>
				<form action="${pageContext.request.contextPath}/personnelCode/personnelCommonCodeList" method="get" id="form">
					<input type="submit" class="btn btn-default" value="검색">
					<input type="text" name="keyWord">
					<select name="optionSearch">
						<option value=" "></option>
						<option value="신규">신규</option>
						<option value="공채">공채</option>
					</select>
					<input type='button' class="btn btn-info" name='a' onclick='personnelCommonCodeList()' value='조회'/>
					<input type='button' class="btn btn-success" onclick='addPersonnelCommonCode()' value='입력'/>
					<input type='button' class="btn btn-primary" onclick='' value='저장'/>
				</form>
				<br><br>
                <table class="table table-bordered">
                  <thead>
						<tr>
							<th>발령코드</th>
							<th>발령코드명</th>
							<th>사용유무</th>
							<th>시스템등록일자</th>
							<th>최종수정일자</th>
						</tr>
					</thead>
					<tbody>
						<c:choose>
							<c:when test="${param.a eq 'click'}">
								<c:forEach var="personnel" items="${PersonnelCommonCode}">
										<tr>
											<td>${personnel.personnelCommonAppointmentCode}</td>
											<td>${personnel.personnelCommonAppointmentCodeName}</td>
											<td>${personnel.personnelCommonUseExistenceNonexistence}</td>
											<td>${personnel.personnelCommonRegistrationDate}</td>
											<td>${personnel.personnelCommonModificationDate}</td>
										</tr>
								</c:forEach>
							</c:when>
							<c:when test="${empty keyWord}&&${empty optionSearch}">
								<c:forEach var="personnel" items="${PersonnelCommonCode}">
										<tr>
											<td>${personnel.personnelCommonAppointmentCode}</td>
											<td>${personnel.personnelCommonAppointmentCodeName}</td>
											<td>${personnel.personnelCommonUseExistenceNonexistence}</td>
											<td>${personnel.personnelCommonRegistrationDate}</td>
											<td>${personnel.personnelCommonModificationDate}</td>
										</tr>
								</c:forEach>
							</c:when>
							<c:when test="${!empty optionSearch}">
								<c:forEach var="personnel" items="${PersonnelCommonCode}">
										<tr>
											<td>${personnel.personnelCommonAppointmentCode}</td>
											<td>${personnel.personnelCommonAppointmentCodeName}</td>
											<td>${personnel.personnelCommonUseExistenceNonexistence}</td>
											<td>${personnel.personnelCommonRegistrationDate}</td>
											<td>${personnel.personnelCommonModificationDate}</td>
										</tr>
								</c:forEach>
							</c:when>
							<c:when test="${!empty optionSearch}&&${!empty keyWord}">
								<c:forEach var="personnel" items="${PersonnelCommonCode}">
										<tr>
											<td>${personnel.personnelCommonAppointmentCode}</td>
											<td>${personnel.personnelCommonAppointmentCodeName}</td>
											<td>${personnel.personnelCommonUseExistenceNonexistence}</td>
											<td>${personnel.personnelCommonRegistrationDate}</td>
											<td>${personnel.personnelCommonModificationDate}</td>
										</tr>
								</c:forEach>
							</c:when>
						</c:choose>
					</tbody>
				</table>
				</div>
				<form id="form">
					<c:if test="${param.a eq 'click'}">
						<c:if test="${currentPage > 1}" >
							<a href="${pageContext.request.contextPath}/personnelCode/personnelCommonCodeList?currentPage=${currentPage - 1}&&a=click"">이전</a>
						</c:if>
						
						<!-- 번호 페이징 부여 -->
						<c:forEach var="i" begin="1" end="${lastPage}" step="1">
							<a href="${pageContext.request.contextPath}/personnelCode/personnelCommonCodeList?currentPage=${i}&&a=click"><c:out value="${i}" /></a>
						</c:forEach>
						
						<c:if test="${currentPage < lastPage }">
							<a href="${pageContext.request.contextPath}/personnelCode/personnelCommonCodeList?currentPage=${currentPage + 1}&&a=click"">다음</a>
						</c:if>
					</c:if>
				</form>
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