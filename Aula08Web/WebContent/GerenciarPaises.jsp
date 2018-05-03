<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html >

<html lang="pt-br">


<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE-edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Gerenciar País</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Nunito"
	rel="stylesheet">
</head>


<body>

 <!-- Modal -->
            <div class="modal fade" id="delete-modal" tabindex="-1" role="dialog" aria-labelledby="modalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Fechar"><span aria-hidden="true">&times;</span>
                            </button>
                            <h4 class="modal-title" id="modalLabel">Excluir País</h4>
                        </div>
                        <div class="modal-body">
                            Deseja realmente excluir este País?
                        </div>
                        <div class="modal-footer">
                            <form action="ManterPais.do" method="get">
                                <input type="hidden" name="id" id="id_excluir" />
                                <button type="submit" class="btn btn-primary" name="acao" value="Excluir">Sim</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">N&atilde;o</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.modal -->
            
            
            <!-- Menu superior -->
	<c:import url="Menu.jsp" />
	
	<!-- container principal -->
	<div id="main" class="container">
	
		<form action="ManterPais.do" method="get">

		<h2>Nesta página você pode gerenciar os países cadastrados!!</h2>
		<br>

		<form class="form-inline">
			
			<div class="form-group mx-sm-6 mb-2">
					<input class="form-control mr-sm-2" name = "id" type=text placeholder="Digite um Continente" aria-label="buscar">
			</div>
			<button type="submit" class="btn btn-info mb-2" name="acao"
					value="Visualizar">Visualizar País</button>
					
			<button type="submit" class="btn btn-info mb-2" name="acao"
					value="Editar">Editar País</button>
					
			<button type="submit" id="btn${pais.id }%>" type="button" class="btn btn-info mb-2" data-toggle="modal" data-target="#delete-modal" data-cliente="${pais.id }">Excluir País</button>	
		</form>

					


		</div>
		
		<br><br>
		
		</form>
	</div>
	
	
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script type="text/javascript">
                $("#delete-modal").on('show.bs.modal', function(event) {
                    var button = $(event.relatedTarget); 
                    var recipient = button.data('pais');
                    $("#id_excluir").val(recipient);
                });</script>
</body>
</html>