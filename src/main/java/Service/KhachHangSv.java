package Service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import ConnectManager.Connection;
import Model.KhachHang;

/**
 *
 * @author dfean
 */
public class KhachHangSv {
    public List<KhachHang> getAll() throws SQLException {
        List<KhachHang> list = new ArrayList<>();
        try {
            Statement st = Connection.connection().createStatement();
            String sql = "Select * from khachhang";
            ResultSet rs = st.executeQuery(sql);
            while (rs.next()) {
                KhachHang kh = new KhachHang(rs.getString(1), rs.getString(2),
                        rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6));
                list.add(kh);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public static void main(String[] args) throws SQLException {
        KhachHangSv a = new KhachHangSv();
        List<KhachHang> list = a.getAll();
        for (KhachHang x : list) {
            System.out.println(x.toString());
        }
    }
}
