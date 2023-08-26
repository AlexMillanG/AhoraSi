package mx.edu.utez.integradora.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySQLConnection {
    final String DBNAME = "BDHITUAlpha",
            USER = "ec2-user",
            PASSWORD = "B>T9pRffdybq",
            TIMEZONE = "America/Mexico_City",
            USESSL = "false",
            PUBLICKEY = "true",
            DDLAUTO = "true",
            HOST = "34.196.17.66";

    public Connection connect() {
        String dataSource = String.format(
                "jdbc:mysql://%s:3306/%s?user=%s&password=%s&serverTimezone=%s&useSSL=%s&allowPublicKeyRetrieval=%s&createDatabaseIfNotExist=%s", HOST, DBNAME, USER, PASSWORD, TIMEZONE, USESSL, PUBLICKEY, DDLAUTO
        );
        try {
            DriverManager.registerDriver(
                    new com.mysql.cj.jdbc.Driver()
            );
            return DriverManager.getConnection(dataSource);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void main(String[] args) {
        try {
            Connection conn = new MySQLConnection().connect();
            if (conn != null) {
                System.out.println("Conexión realizada");
                conn.close();
            } else {
                System.out.println("Conexión fallida");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
