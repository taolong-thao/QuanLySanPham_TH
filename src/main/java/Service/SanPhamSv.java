package Service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import ConnectManager.Connection;
import Model.SanPham;

/**
 *
 * @author dfean
 */
public class SanPhamSv {

    public List<SanPham> getAll() {
        List<SanPham> list = new ArrayList<>();
        try {

            Statement st = Connection.connection().createStatement();
            String sql = "SELECT*FROM SANPHAM";
            ResultSet rs = st.executeQuery(sql);
            while (rs.next()) {
                SanPham sp = new SanPham(rs.getInt(1), rs.getString(2),
                        rs.getString(3), rs.getLong(4), rs.getInt(5));
                list.add(sp);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public static void main(String[] args) {
        SanPhamSv a = new SanPhamSv();
        List<SanPham> b = a.getAll();
        for (SanPham x : b) {
            System.out.println(x.toString());
        }
    }
}
