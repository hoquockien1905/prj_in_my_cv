package model.repository.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBContext {
    private String jdbcUrl = "jdbc:mysql://localhost:3306/swp391?useSSL=false&serverTimezone=UTC";
    private String jdbcUsername = "root";
    private String jdbcPassword = "quockien200000";
    private Connection connection;

    public DBContext() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            this.connection = DriverManager.getConnection(jdbcUrl, jdbcUsername, jdbcPassword);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    public Connection getConnection() {
        return this.connection;
    }
}
