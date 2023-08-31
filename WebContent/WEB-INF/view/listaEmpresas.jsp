<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List,br.com.alura.gerenciador.modelo.Empresa"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css"
	rel="stylesheet">
<link href="<c:url value="/assets/css/bootstrap.min.css"/>"
	rel="stylesheet" id="bootstrap-css">
<script type="text/javascript" src="<c:url value="/assets/js/bootstrap.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/js/jquery-1.11.1.min.js"/>"></script>
<link href="<c:url value="/assets/css/style.css"/>" rel="stylesheet">


<title>Bootstrap 4 Template with Sidebar Menu</title>

</head>
<body>

	<div id="wrapper">
		<div id="sidebar-wrapper">
			<ul class="sidebar-nav" style="margin-left: 0;">
				<li class="sidebar-brand">
                    
                       <a href="#menu-toggle" id="menu-toggle" style="margin-top:20px;float:right;" > <i class="fa fa-bars " style="font-size:20px !Important;" aria-hidden="true" aria-hidden="true"></i> 
                    
                </li>
				<li><a href="#"><i class="fa fa-sort-alpha-asc "
						aria-hidden="true"> </i> <span style="margin-left: 10px;">Section</span>
				</a></li>
				<li><a href="#"> <i class="fa fa-play-circle-o "
						aria-hidden="true"> </i> <span style="margin-left: 10px;">
							Section</span>
				</a></li>
				<li><a href="#"> <i class="fa fa-puzzle-piece"
						aria-hidden="true"> </i> <span style="margin-left: 10px;">
							Section</span>
				</a></li>
				<li><a href="#"> <i class="fa fa-font" aria-hidden="true">
					</i> <span style="margin-left: 10px;"> Section</span>
				</a></li>
				<li><a href="#"><i class="fa fa-info-circle "
						aria-hidden="true"> </i> <span style="margin-left: 10px;">Section
					</span> </a></li>
				<li><a href="#"> <i class="fa fa-comment-o"
						aria-hidden="true"> </i> <span style="margin-left: 10px;">
							Section</span>
				</a></li>
			</ul>
		</div>
		
		<script>
        // Espera que o DOM esteja pronto antes de adicionar o listener
        document.addEventListener('DOMContentLoaded', function () {
            document.getElementById('menu-toggle').addEventListener('click', function (e) {
                e.preventDefault();
                document.getElementById('wrapper').classList.toggle('toggled');
            });
        });
    </script>


		<c:import url="logout-parcial.jsp" />

		Usuario Logado: ${usuarioLogado.login} <br> <br> <br>

		<c:if test="${not empty empresa}">
		Empresa ${ empresa } cadastrada com sucesso!
	</c:if>

		Lista de empresas: <br />

		<ul>
			<c:forEach items="${empresas}" var="empresa">

				<li>${empresa.nome }-<fmt:formatDate
						value="${empresa.dataAbertura }" pattern="dd/MM/yyyy" /> <a
					href="/gerenciador/entrada?acao=MostraEmpresa&id=${empresa.id }">edita</a>
					<a href="/gerenciador/entrada?acao=RemoveEmpresa&id=${empresa.id }">remove</a>
				</li>
			</c:forEach>
		</ul>

	</div>
</body>
</html>



