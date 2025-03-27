<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulário de cadastro</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <link href="../css/estilo.css" rel="stylesheet" type="text/css"/>
    </head>
    <body id="cadastrar">
        <h1>Preencha os campos a seguir:</h1>
        <div class="container jumbotron">
            <form action="../controller/cadastrar.jsp">
                <label>Nome: <input type="text" name="n_nome" required></label>
                <label>CPF: <input type="text" name="n_cpf" required></label>
                <label>Turma: <input type="text" name="n_turma" required></label>

                <input type="submit" class="btn btn-success btn-ajuste" value="Cadastrar">
                <a href="listar_page.jsp" class="btn btn-info btn-ajuste">Cancelar</a>
            </form>
        </div>
    </body>
</html>
