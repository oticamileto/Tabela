<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="./bootstrap/js/jquery-1.12.3.min.js"></script>
<title>Insert title here</title>
<style type="text/css">
    body{
        font-family:Calibri, Verdana, Tahoma, Arial
    }
    .navBar{
        height:auto;
        overflow:hidden;
    }
 
    .grupo{
        height:auto;
        border:solid 1px;      
    }
 
    .titulo{
        padding:5px;
        height:20px;
    }
 
    .conteudo{
        display:none;
        padding:5px;
    }
 
    .cabecalho{
        border:solid 1px;
        border-radius:5px 5px 0 0;
        padding: 5px;
        height:20px;
        background: rgb(112, 156, 190)
    }
 
    .rodape{
        border:solid 1px;
        border-radius: 0 0 5px 5px;
        padding: 5px;
        height:20px;
        background: rgb(112, 156, 190);
    }  
</style>
<script type="text/javascript">
var corAtiva = "rgb(112, 156, 190)";
var corInativa = "rgb(255, 255, 255)";
$(function(){
    $(".titulo").hover(
        function(){$(this).css("background", corAtiva);},
        function(){$(this).css("background", corInativa)}
    );
 
    $(".titulo").click(function(){
        $(".conteudo").show();
        var cont = $(this).next();
        $(cont).slideDown("fast");  
    });
});
</script>
</head>
<body>
    <div class="navBar">
        <div class="cabecalho">
            Barra de navegação
        </div>
        <div class="grupo">
            <div class="titulo">Grupo 1</div>
            <div class="conteudo">Conteudo 1</div>
        </div>
        <div class="grupo">
            <div class="titulo">Grupo 2</div>
            <div class="conteudo">Conteudo 2</div>
        </div>
        <div class="grupo">
            <div class="titulo">Grupo 3</div>
            <div class="conteudo">Conteudo 3</div>
        </div>
        <div class="rodape">
            Rodapé
        </div>
    </div>   
</body>
</html>