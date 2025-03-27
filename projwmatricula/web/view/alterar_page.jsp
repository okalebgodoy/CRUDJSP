<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulário de alteraçãoo</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <link href="../css/estilo.css" rel="stylesheet" type="text/css"/>
    </head>
    <body id="alterar">
        <h1>Altere os dados desejados:</h1>
        <div class="container jumbotron">
             <h2>ID: <%=request.getParameter("id")%></h2>
            <form action="../controller/alterar.jsp">
                <input style="display: none" type="text" name="n_id" value="<%=request.getParameter("id")%>">
                <label>Nome: <input type="text" name="n_nome" required value="<%=request.getParameter("nome")%>"></label>
                <label>CPF: <input type="text" name="n_cpf" required value="<%=request.getParameter("cpf")%>"></label>
                <label>Turma: <input type="text" name="n_turma" required value="<%=request.getParameter("turma")%>"></label>

                <input type="submit" class='btn btn-warning btn-ajuste' value="Alterar">
                <a href="listar_page.jsp" class="btn btn-info btn-ajuste">Cancelar</a>
            </form>
        </div>
    </body>
</html>
