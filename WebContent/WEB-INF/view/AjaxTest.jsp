<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<c:import url="header.jsp"/>
<script>
    $(document).ready(function(){
        $("#loadData").click(function() {
            $.ajax({
                url: "empresas",
                data: { dataAbertura: "teste"},
                type: 'GET',
                dataType: 'json', 
                success: function(data) {
                  $.each(data, function(key, value){
                    var row = "<tr><td>" + value.nome + "</td><td>" + value.dataAbertura + "</td></tr>";
                    $('#empresasTable > tbody').append(row);
                  });
              }
          });
        });
    });
</script>
</head>    
<body>
	<button id="loadData">Carregar Dados</button>
	
     <table id="empresasTable">
        <thead>
           <tr><th>Nome da Empresa</th><th>Data de Abertura</th></tr>
        </thead>
        <tbody></tbody>
     </table>
  </body>
</html>