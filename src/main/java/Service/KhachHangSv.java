package Service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import ConnectManager.Connection;
import Model.KhachHang;
import java.sql.PreparedStatement;

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
                KhachHang kh = new KhachHang(rs.getString(2),
                        rs.getString(3), rs.getString(4), rs.getString(5), rs.getInt(6));
                list.add(kh);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
    public KhachHang dkKhachHang(String tenKh, String diaChi, String SDT, String ngSinh, int taiKhoan)
    {
        KhachHang a = new KhachHang(tenKh, diaChi, SDT, ngSinh, taiKhoan);
        String query = "insert into khachhang values (?, ?, ?, ?, ?)";
        try
        {
            PreparedStatement ps = Connection.connection().prepareStatement(query);
            ps.setString(1, a.getTenKh());
            ps.setString(2, a.getDiaChi());
            ps.setString(3, a.getSDT());
            ps.setString(3, a.getNgSinh());
            ps.setInt(3, a.getTaiKhoan());
            ps.executeUpdate();
            return a;
        }catch(Exception e){}
        return null;
    }

    public static void main(String[] args) throws SQLException {
        KhachHangSv a = new KhachHangSv();
        List<KhachHang> list = a.getAll();
        for (KhachHang x : list) {
            System.out.println(x.toString());
        }
    }
}
