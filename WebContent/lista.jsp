<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*" %>
<jsp:useBean id="produto" class="com.tabela.beans.Produto"/>
<jsp:useBean id="dao" class="com.tabela.dao.Conexao"/>
<html>
    <head>
 <link href="./bootstrap/css/bootstrap.min.css" rel="stylesheet">
 <link href="./bootstrap/css/style.css" rel="stylesheet">    
    </head>

    <body>     
    <jsp:include page="barra_superior_cadastrar_lente.jspf" />   
    <jsp:include page="barra_busca_visao_simples.jspf"/>  
    
  <!--   <div id="main" class="container-fluid"> -->
  
  <h3 class="page-header">Consultar Tabela</h3>
        <div class="container">
                          
              
                        <table  class="table table-striped">
                            <thead>
                                <tr>
                                    <td>Nome</td>
                                    <td>Material</td>
                                    <td>I.Refração</td>
                                    <td>Tratamento</td>
                                    <td>Descrição</td>
                                    <td>Disponibilidade</td>
                                </tr>
                            </thead>

                            <c:forEach var="produto" items="${requestScope.produtos}">
                                                                                   
                                    <tr>                                
                                    <td>${produto.nomeLente}</td>
                                    <td>${produto.material}</td>
                                    <td>${produto.indice}</td>
                                    <td>${produto.tratamento}</td>
                                    <td>${produto.descricao}</td>
                                    <td>${produto.chave}</td>
                                    </tr>
                            </c:forEach>               
                        </table>  
                   
           
        </div>
    </body>
</html>