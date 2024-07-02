package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DatabaseConfiguration {
    private static final String JDBC_URL = "jdbc:mysql://100.28.191.91:3307/psGaming";
	//private static final String JDBC_URL = "jdbc:mysql://localhost:3306/test";
    private static final String JDBC_USER = "tomcatdb";
    private static final String JDBC_PASSWORD = "GamesDB123@";
    private static Connection conn = null;
    
    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
            System.out.println(conn);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return conn;
    }
    
    public static void closeConnection() {
        try {
            if (conn != null && !conn.isClosed()) {
                System.out.println(conn);
                conn.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
