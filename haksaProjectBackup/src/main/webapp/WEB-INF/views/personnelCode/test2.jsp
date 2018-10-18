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
							</ul>
							<div class="tab-content">
								<div class="tab-pane active" id="panel-933367">
									<!--GUIA GERAL-->
									<div id="geral">
										<div class="portlet-body">
											<div class="tab-pane active" id="Geral">
												<div class="form-horizontal">
													<div class="form-group">
														<label class="col-md-2 control-label" for="Vendedor">사진</label>
														<div class="col-md-10">
															<img src="resources/img/m.jpg"> <span
																class="field-validation-valid"
																data-valmsg-for="Representante"
																data-valmsg-replace="true"></span>
														</div>
													</div>

													<div class="form-group">
														<label class="col-md-2 control-label">학번</label>
														<div class="col-md-3">
															<input type="text" placeholder="학번" class="form-control">

														</div>
													</div>
													<div class="form-group">
														<label class="col-md-2 control-label">주민번호</label>
														<div class="col-md-5">
															<div class="input-group">
																<input type="text" placeholder="주민번호"
																	class="form-control">
																<p>-</p>
																<input type="text" placeholder="주민번호"
																	class="form-control">
															</div>
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-2 control-label"
															for="InscricaoEstadual">성명</label>
														<div class="col-md-3">
															<input type="text" placeholder="성명" class="form-control">
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-2 control-label"
															for="InscricaoEstadual">성명(영어)</label>
														<div class="col-md-3">
															<input type="text" placeholder="성명(영어)"
																class="form-control">
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-2 control-label">국가</label>
														<div class="col-md-4">
															<select class="form-control">
																<option>대한민국</option>
																<option>일본</option>
																<option>중국</option>
																<option>미국</option>
																<option>등등</option>
															</select>
														</div>
													</div>
													<hr />
													<div class="form-group">
														<label class="col-md-2 control-label">성별</label>
														<div class="col-md-2">
															<select class="form-control">
																<option>남자</option>
																<option>여자</option>
															</select>
														</div>
													</div>

													<div class="form-group">
														<label class="col-md-2 control-label">학생상태</label>
														<div class="col-md-2">
															<input class="form-control" type="text" id="comprador"
																name="comprador" placeholder="Comprador" value="" />

														</div>
													</div>
													<div class="form-group">
														<label class="col-md-2 control-label"
															for="CompradorTelefone">Telefone</label>
														<div class="col-md-2">
															<input class="form-control"
																onblur="copiarPara('compradorTelefone', ['telefone', 'cobrancaTelefone'])"
																type="text" id="compradorTelefone"
																name="compradorTelefone"
																placeholder="Telefone do comprador" value="" />
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-2 control-label" for="CompradorEmail">E-mail</label>
														<div class="col-md-2">
															<input class="form-control"
																onblur="copiarPara('compradorEmail', ['emailLoja', 'emailNFe', 'cobrancaEmail'])"
																type="email" id="compradorEmail" name="compradorEmail"
																placeholder="E-mail do comprador" value="" />

														</div>
													</div>
												</div>

											</div>

										</div>
									</div>
								</div>
								<div class="tab-pane" id="panel-503976">
									<div id="faturamento">

										<div class="form-horizontal">
											<h4>Endereço</h4>
											<div class="form-group">
												<label class="col-md-2 control-label" for="Endereco">Endereço</label>
												<div class="col-md-10">
													<input class="form-control" type="text" id="endereco"
														name="endereco" placeholder="Endereço (rua, número)"
														value="" />
												</div>
											</div>
											<div class="form-group">
												<label class="col-md-2 control-label" for="Complemento">Complemento</label>
												<div class="col-md-10">
													<input class="form-control" type="text" id="complemento"
														name="complemento"
														placeholder="Complemento (apto, lote, etc.)" value="" />
												</div>
											</div>
											<div class="form-group">
												<label class="col-md-2 control-label" for="Bairro">Bairro</label>
												<div class="col-md-10">
													<input class="form-control" type="text" id="bairro"
														name="bairro" placeholder="Bairro" value="" />
												</div>
											</div>
											<div class="form-group">
												<label class="col-md-2 control-label" for="Estado">Estado</label>
												<div class="col-md-1">
													<input class="form-control" onblur="buscarTabelaPrecos()"
														type="text" data-val="true"
														data-val-required="O estado (UF) é obrigatório"
														id="Estado" name="Estado" placeholder="UF" value="" /> <span
														class="field-validation-valid" data-valmsg-for="Estado"
														data-valmsg-replace="true"></span>
												</div>
											</div>
											<div class="form-group">
												<label class="col-md-2 control-label" for="Municipio">Municipio</label>
												<div class="col-md-2">
													<input class="form-control" type="text" id="municipio"
														name="municipio" placeholder="Município" value="" />
												</div>
											</div>
											<div class="form-group">
												<label class="col-md-2 control-label" for="CEP">CEP</label>
												<div class="col-md-2">
													<input class="form-control" type="text" id="cep" name="cep"
														placeholder="CEP" />
												</div>
											</div>
											<hr />
											<h4>Telefones</h4>
											<div class="form-group">
												<label class="col-md-2 control-label" for="Telefone">Telefone</label>
												<div class="col-md-2">
													<input class="form-control"
														onblur="copiarPara('Telefone', ['CompradorTelefone', 'CobrancaTelefone'])"
														type="text" id="telefoneFaturamento"
														name="telefoneFaturamento" placeholder="Telefone" />
												</div>
											</div>
											<div class="form-group">
												<label class="col-md-2 control-label" for="Fax">FAX</label>
												<div class="col-md-2">
													<input class="form-control" type="text" id="fax" name="fax"
														placeholder="FAX" value="" />
												</div>
											</div>
											<div class="form-group">
												<label class="col-md-2 control-label" for="Celular">Celular</label>
												<div class="col-md-2">
													<input class="form-control" type="text" id="celular"
														name="celular" placeholder="celular" value="" />
												</div>
											</div>
											<hr />
											<h4>Lista de e-mails</h4>
											<div class="form-group">
												<label class="col-md-2 control-label" for="EmailLoja">E-mail
													loja</label>
												<div class="col-md-2">
													<input class="form-control"
														onblur="copiarPara('emailLoja', ['compradorEmail', 'emailNFe', 'cobrancaEmail'])"
														type="email" id="emailLoja" name="emailLoja"
														placeholder="E-mail contato da loja" value="" />
												</div>
											</div>
											<div class="form-group">
												<label class="col-md-2 control-label" for="EmailNFe">E-mail
													NF-e</label>
												<div class="col-md-2">
													<input class="form-control"
														onblur="copiarPara('emailNFe', ['compradorEmail', 'emailLoja', 'cobrancaEmail'])"
														type="email" id="emailNFe" name="emailNFe"
														placeholder="E-mail Nota Fiscal Eletrônica" value="" /> <span
														class="field-validation-valid" data-valmsg-for="EmailNFe"
														data-valmsg-replace="true"></span>
												</div>
											</div>
											<hr />
											<h4>Tabela de preço</h4>
											<div class="form-group">
												<label class="col-md-2 control-label" for="TabelaPreco">Tabela
													de preço</label>
												<div class="col-md-2" id="tabelaPreco">
													<select class="form-control select2 col-md-10"
														id="tabelaPreco" name="tabelaPreco"></select>
												</div>
											</div>
										</div>
									</div>
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