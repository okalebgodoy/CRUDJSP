package model.dao;

import javax.swing.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.conexaobd.ConexaoBD;
import model.dto.Aluno;

public class AlunoDAO {
    private Connection conexao;
    private PreparedStatement ps;
    private ResultSet resultado;

    public AlunoDAO() {
        ConexaoBD conexaoBD = new ConexaoBD();
        this.conexao = conexaoBD.getConexao();
        conexaoBD.criarAlunos();
    }
    public void cadastrarAluno(Aluno objAluno) {
        String sql = "insert into alunos(nome,cpf,turma) values (?, ?, ?)";
        try {
            this.ps = this.conexao.prepareStatement(sql);
            this.ps.setString(1, objAluno.getNome());
            this.ps.setString(2, objAluno.getCpf());
            this.ps.setString(3, objAluno.getTurma());

            this.ps.execute();
            this.ps.close();

        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Erro ao cadastrar no banco - classe AlunoDAO - método cadastrarAluno() - Erro: " + e);
        }
    }
    public ArrayList<Aluno> listarAlunos() {
        this.conexao = new ConexaoBD().getConexao();
        String sql = "SELECT * FROM alunos;";

        ArrayList<Aluno> listaDeContatos = new ArrayList<>();

        try {
            this.ps = this.conexao.prepareStatement(sql);
            this.resultado = this.ps.executeQuery(sql);

            while (this.resultado.next()) {
                Aluno objAluno = new Aluno(
                        this.resultado.getString("nome"),
                        this.resultado.getString("cpf"),
                        this.resultado.getString("turma")
                );

                objAluno.setId(this.resultado.getInt("id"));

                listaDeContatos.add(objAluno);
            }

        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Erro ao listar do banco - classe ContatoDAO - método listarContato() - Erro: " + e);
        }
        return listaDeContatos;
    }
    public void alterarAluno(Aluno objAluno) {
        this.conexao = new ConexaoBD().getConexao();
        String sql = "update alunos set nome = ?, cpf = ?, turma = ? where id = ?;";

        try {
            this.ps = this.conexao.prepareStatement(sql);
            this.ps.setString(1, objAluno.getNome());
            this.ps.setString(2, objAluno.getCpf());
            this.ps.setString(3, objAluno.getTurma());
            this.ps.setInt(4, objAluno.getId());

            this.ps.execute();
            this.ps.close();

        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Erro ao cadastrar no banco - classe AlunoDAO - método alterarAluno() - Erro: " + e);
        }
    }

    public void excluirAluno(Aluno objAluno) {
        this.conexao = new ConexaoBD().getConexao();
        String sql = "delete from alunos where id = ?;";

        try {
            this.ps = this.conexao.prepareStatement(sql);
            this.ps.setInt(1, objAluno.getId());

            this.ps.execute();
            this.ps.close();

        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Erro ao cadastrar no banco - classe AlunoDAO - método excluirAluno() - Erro: " + e);
        }
    }
}
