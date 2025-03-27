<%@page import="model.dao.AlunoDAO"%>
<%@page import="model.dto.Aluno"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta http-equiv="refresh" content="0.001; ../view/listar_page.jsp">
    </head>
    <body>
        <%
            Aluno objAluno = new Aluno();
            objAluno.setId(Integer.parseInt(request.getParameter("n_id")));
       
            AlunoDAO objAlunoDAO = new AlunoDAO();
            objAlunoDAO.excluirAluno(objAluno);
        %>
    </body>
</html>
