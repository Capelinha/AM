package com.atento.conexao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexao {
	private static Connection connection;
    private static final String DRIVER = "oracle.jdbc.driver.OracleDriver";
    private static final String URL = "jdbc:oracle:thin:@localhost:1521:xe";
    private static final String USUARIO = "am";
    private static final String SENHA = "am";

    public Conexao() {}

    public static synchronized Connection getConnection() {
        if(connection == null) {
            try {
                Class.forName(DRIVER);
                connection = DriverManager.getConnection(URL, USUARIO, SENHA);
            }
            catch(ClassNotFoundException e) {
                System.out.println("Erro ao carregar o driver de conexão\n"+e);
            }
            catch(SQLException e) {
            	System.out.println("Erro ao estabelecer conexão com o banco de dados\n"+e);
            }
        }
        return connection;
    }
}