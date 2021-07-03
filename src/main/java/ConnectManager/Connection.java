package ConnectManager;

import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author dfean
 */
public class Connection {
    public static final String DBurl = "jdbc:mysql://localhost:3306/quanlysanpham";
    public static final String username = "root";
    public static final String password = "";

    public static java.sql.Connection connection() throws SQLException {
        DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
        return DriverManager.getConnection(DBurl, username, password);
    }
}
