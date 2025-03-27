package model.conexaobd;

import java.sql.*;
import javax.swing.JOptionPane;


public class ConexaoBD {

    private Connection conexao;

    public Connection getConexao() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String caminhoDoBD = "jdbc:mysql://localhost:3306/matriculaaluno_sql?useSSL=false&serverTimezone=UTC&user=root&password=root";
            this.conexao = DriverManager.getConnection(caminhoDoBD);
        } catch (ClassNotFoundException | SQLException e) {
            JOptionPane.showMessageDialog(null, "Erro ao conectar o banco - classe ConexaoBD - método getConexao() - Erro: " + e);
        }
        return this.conexao;
    } 
    public void criarAlunos() {
        String sql = "CREATE TABLE IF NOT EXISTS alunos (" +
                "id INT PRIMARY KEY AUTOINCREMENT," +
                "nome VARCHAR(45) NOT NULL," +
                "cpf VARCHAR(45) NOT NULL," +
                "turma VARCHAR(45) NOT NULL);";

        try (Statement stmt = this.conexao.createStatement()) {
            stmt.execute(sql);
            System.out.println("Tabela criada com sucesso");
        } catch(Exception e) {
            System.out.println("Erro ao criar tabela" + e.getMessage());
        }
    }
}
