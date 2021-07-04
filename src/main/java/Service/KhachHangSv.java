package Service;

import java.sql.PreparedStatement;
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
                KhachHang kh = new KhachHang(rs.getInt(1), rs.getString(2),
                        rs.getString(3), rs.getString(4), rs.getString(5), rs.getInt(6));
                list.add(kh);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public void deleteKh(int maKh) {
        String sql = "delete  from khachhang where maKh=?";
        try {
            PreparedStatement st = Connection.connection().prepareStatement(sql);
            st.setInt(1, maKh);
            st.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void dkKhachHang(int makh, String tenKh, String diaChi, String SDT, String ngSinh, int taiKhoan) {

        String query = "insert into khachhang values (?,?, ?, ?, ?, ?)";
        try {
            PreparedStatement ps = Connection.connection().prepareStatement(query);
            ps.setInt(1, makh);
            ps.setString(2, tenKh);
            ps.setString(3, diaChi);
            ps.setString(4, SDT);
            ps.setString(5, ngSinh);
            ps.setInt(6, taiKhoan);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public KhachHang FindKh(int id) {
        String sql = "Select*from khachhang where makh='" + id + "'";
        try {
            Statement st = Connection.connection().createStatement();
            ResultSet rs = st.executeQuery(sql);
            if (rs.next()) {
                return new KhachHang(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getInt(6));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<KhachHang> searchkh(String name) {
        String sql = "Select*from khachhang where tenKh='" + name + "'";
        List<KhachHang> list = new ArrayList<>();
        try {
            Statement st = Connection.connection().createStatement();
            ResultSet rs = st.executeQuery(sql);
            if (rs.next()) {
                KhachHang a = new KhachHang(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getInt(6));
                list.add(a);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public void updateKh(int id, String nameKh, String ngSInh, String diaChi, String SDT) {
        String sql = "update khachhang set tenkh=?,diachi=?,sdt=?,ngaysinh=? where makh=?";
        try {
            PreparedStatement st = Connection.connection().prepareStatement(sql);
            st.setString(1, nameKh);
            st.setString(2, diaChi);
            st.setString(3, SDT);
            st.setString(4, ngSInh);
            st.setInt(5, id);
            st.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public static void main(String[] args) throws SQLException {
        KhachHangSv a = new KhachHangSv();
        List<KhachHang> list = a.getAll();
        for (KhachHang x : list) {
            System.out.println(x.toString());
        }
    }
}
