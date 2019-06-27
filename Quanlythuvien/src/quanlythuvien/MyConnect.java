package quanlythuvien;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MyConnect {

    private final String className = "com.mysql.cj.jdbc.Driver";
    private final String url = "jdbc:mysql://localhost:3306/quanlythuvien"
            + "? useUnicode=true&characterEncoding=UTF-8";
    private final String user = "root";
    private final String pass = "";
    Connection connect;

    public Connection connect() {
        try {
            Class.forName(className);
            connect = DriverManager.getConnection(url, user, pass);

            if (connect != null) {
                System.out.println("Connection Successfully");
            }
        } catch (ClassNotFoundException e) {
            System.out.println("Class Not Found");
        } catch (SQLException e) {
            System.out.println("Error Connection" + e.getMessage());    //thông báo lỗi
        }
        return connect;
    }

    public static void main(String[] args) {
        MyConnect myConnect = new MyConnect();
        Connection conn = myConnect.connect();
    }
}
