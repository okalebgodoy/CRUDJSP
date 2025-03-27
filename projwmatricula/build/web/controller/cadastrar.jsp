<%@page import="model.dao.AlunoDAO"%>
<%@page import="model.dto.Aluno"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro</title>
        <meta http-equiv="refresh" content="0.001; ../view/listar_page.jsp">
    </head>
    <body>
        <h1>Cadastrado com sucesso!</h1>
        <%
            Aluno objAluno = new Aluno(
                request.getParameter("n_nome"),
                request.getParameter("n_cpf"),
                request.getParameter("n_turma")
            );
            
            AlunoDAO objAlunoDAO = new AlunoDAO();
            objAlunoDAO.cadastrarAluno(objAluno);
        %>
    </body>
</html>
