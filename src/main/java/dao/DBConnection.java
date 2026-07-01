package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

    private static final String URL =
            "jdbc:mysql://localhost:3306/campusconnect";

    private static final String USER = "studentuser";

    private static final String PASSWORD = "student123";

    public static Connection getConnection() {

        Connection con = null;

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            con = DriverManager.getConnection(URL, USER, PASSWORD);

            System.out.println("Database Connected");

        } catch (Exception e) {

            e.printStackTrace();

        }

        return con;
    }

}