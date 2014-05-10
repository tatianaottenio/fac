<%@page import="java.sql.ResultSet"%>
<%@page import="br.com.fac.disciplina.DisciplinaController"%>
<%@page import="br.com.fac.teste.TesteController"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>GestÃ£o de Classe</title>

<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/datepicker.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap-combobox.css">

<style type="text/css">
.menu {
	
}

.menu li {
	float: left;
	list-style-type: none;
	width: 200px;
}

.menu a {
	padding: 8px;
	background-color: gray;
	font-family: Arial;
	font-size: 17px;
	text-align: center;
	text-decoration: none;
	color: white;
}

.menu a {
	display: block;
}

.menu a:hover {
	background-color: silver;
}

.clear {
	clear: both;
}

{
margin
:
0px;

                
padding
:
0px;

            
}

/*
            div{
              border:1px dashed #f00;
            }
            */
#menu {
	height: 100px;
}

#content {
	float: center;
	clear: none;
	width: 100%;
}

#divBody {
	display: table;
	margin: 33px auto;
}

.default-title {
	margin-left: 400px;
	margin-top: 20px;
}
</style>

<script language="javascript">

            function loadPage(pageName) {

                $("#content").load(pageName);

            }

        </script>

</head>

<body>

	<div id="divBody" style="width: 900px">
		<div>

			<nav class="navbar navbar-default" role="navigation">
			<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand"
						href="javascript:loadPage('cadastroCurso.html');">Curso</a> <a
						class="navbar-brand"
						href="javascript:loadPage('cadastroTurma.html');">Turma</a> <a
						class="navbar-brand" href="javascript:loadPage('disciplina.jsp');">Disciplina</a>
					<a class="navbar-brand"
						href="javascript:loadPage('cadastroProfessor.html');">Professor</a>
					<a class="navbar-brand"
						href="javascript:loadPage('cadastroAluno.html');">Aluno</a> <a
						class="navbar-brand"
						href="javascript:loadPage('cadastroSala.html');">Sala</a> <a
						class="navbar-brand"
						href="javascript:loadPage('cadastroAula.html');">Aula</a> <a
						class="navbar-brand"
						href="javascript:loadPage('cadastroFrequencia.html');">FrequÃªncia</a>
				</div>
			</div>
			<!-- /.container-fluid --> </nav>
		</div>

		<div id="content">
			<form action="<%=request.getContextPath()%>/DisciplinaServlet"
				method="POST">
				<div class="well">
					<div class="media">
						<a class="pull-left" href="#"> <img
							class="media-object img-thumbnail " src="../Imagens/artwork.png"
							alt="Responsive image" style="width: 70%">
						</a>
						<div class="default-title">
							<h4>Disciplina</h4>
						</div>
					</div>
				</div>

				<div>&nbsp;</div>
				<div class="row">
					<div class="col-sm-6">
						<div class="input-group">
							<span class="input-group-addon"> Nome : </span> <input
								type="text" class="form-control" name="nome">
						</div>
						<!-- /input-group -->
					</div>
					<!-- /.col-lg-6 -->
					<div class="col-sm-3">
						<div class="input-group">
							<span class="input-group-addon"> Nível : </span> <select
								class="combobox form-control" name="nivel">
								<option></option>
								<option value="t1">Curso 1</option>
								<option value="t2">Curso 2</option>
								<option value="t3">Curso 3</option>
							</select>
						</div>
						<!-- /input-group -->
					</div>
					<!-- /.col-lg-6 -->
				</div>
				<!-- /.row -->

				<div>&nbsp;</div>

				<div class="btn-group">
					<button type="button" class="btn btn-default">Pesquisar</button>
					<button type="submit" class="btn btn-default">Salvar</button>
					<button type="button" class="btn btn-default">Cancelar</button>
				</div>

			</form>

			<div>&nbsp;</div>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th colspan="5" class="well">Resultado :</th>
					</tr>
					<tr>
						<th>Nome</th>
						<th>Curso</th>
						<th>Editar</th>
						<th>Excluir</th>

					</tr>
				</thead>
				<tbody>
					<%	
	DisciplinaController disciplinaController = new DisciplinaController();

	ResultSet result = disciplinaController.listar();
	while (result.next()) {
%>
					<tr>
						<td><%=result.getString("nome")%></td>
						<td><%=result.getString("nivel")%></td>
						<td><img src="../Imagens/edit.png" style="width: 25px"></td>
						<td><img src="../Imagens/delete.png" style="width: 25px"></td>
					</tr>

					<% } %>

				</tbody>
			</table>
		</div>
	</div>


	<script language="javascript" src="js/jquery.min.js"></script>
	<script language="javascript" src="js/bootstrap.js"></script>
	<script language="javascript" src="js/bootstrap-datepicker.js"></script>
	<script language="javascript" src="js/bootstrap-combobox.js"></script>
	<script type="text/javascript">
            $(document).ready(function() {
                $('.combobox').combobox();
            });
        </script>
</body>
</html>
