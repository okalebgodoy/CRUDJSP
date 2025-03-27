<%@page import="model.dto.Aluno"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.dao.AlunoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listagem</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <link href="../css/estilo.css" rel="stylesheet" type="text/css"/>
    </head>
    <body id="listar">

        <header id="topo">
            <a href="cadastrar_page.jsp" class="btn btn-success">Novo Aluno</a>
            <h1 id="titulo-listar">Listagem dos aluno</h1>
            <a href="../index.html" class="btn btn-danger" >Sair</a>
        </header>
        <main id="principal">
            <%
                AlunoDAO objAlunoDAO = new AlunoDAO();

                ArrayList<Aluno> l = objAlunoDAO.listarAlunos();

                for (int i = 0; i < l.size(); i++) {
                    out.print("<div class='container jumbotron'>");
                    out.print("<p>ID: " + l.get(i).getId() + "</p>");
                    out.print("<p>Nome: " + l.get(i).getNome() + "</p>");
                    out.print("<p>Telefone: " + l.get(i).getCpf() + "</p>");
                    out.print("<p>E-mail: " + l.get(i).getTurma() + "</p>");

                    out.print("<a href='alterar_page.jsp?"
                            + "id=" + l.get(i).getId() + ""
                            + "&nome=" + l.get(i).getNome() + ""
                            + "&fone=" + l.get(i).getCpf() + ""
                            + "&email=" + l.get(i).getTurma() + "'><button class='btn btn-warning btn-contato'>Alterar</button></a>");

                    out.print("<a href='excluir_page.jsp?"
                            + "id=" + l.get(i).getId() + ""
                            + "&nome=" + l.get(i).getNome() + ""
                            + "&fone=" + l.get(i).getCpf() + ""
                            + "&email=" + l.get(i).getTurma() + "'><button class='btn btn-danger btn-contato'>Excluir</button></a>");

                    out.print("</div>");
                }


            %>
        </main>
    </body>
</html>
