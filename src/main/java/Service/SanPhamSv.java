package Service;

import java.sql.PreparedStatement;
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

    public void addSp(int a, String tenSp, String moTa, long giaBan, int soLuong) {
        String sql = "insert into sanpham values(?,?,?,?,?)";
        try {
            PreparedStatement st = Connection.connection().prepareStatement(sql);
            st.setInt(1, a);
            st.setString(2, tenSp);
            st.setString(3, moTa);
            st.setLong(4, giaBan);
            st.setInt(5, soLuong);
            st.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public SanPham FindById(int Id) {
        String sql = "Select*from sanpham where maSp='" + Id + "'";
        try {
            Statement st = Connection.connection().createStatement();
            ResultSet rs = st.executeQuery(sql);
            while (rs.next()) {
                return new SanPham(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getLong(4), rs.getInt(5));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public void updateSp(int idSp, String tenSp, String moTa, long giaBan, int soLuong) {
        String sql = "UPDATE Sanpham SET tenSp=?,mota=?,giaban=?, SoLuong = ? WHERE maSp = ?";
        try {
            PreparedStatement st = Connection.connection().prepareStatement(sql);
            st.setString(1, tenSp);
            st.setString(2, moTa);
            st.setLong(3, giaBan);
            st.setLong(4, soLuong);
            st.setInt(5, idSp);
            st.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteSp(int maSp) {
        String sql = "delete  from sanpham where maSp=?";
        try {
            PreparedStatement st = Connection.connection().prepareStatement(sql);
            st.setInt(1, maSp);
            st.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<SanPham> search(String name) {
        List<SanPham> list = new ArrayList<>();
        String sql = "Select*from sanpham where  tenSp='" + name + "'";
        try {
            Statement st = Connection.connection().createStatement();
            ResultSet rs = st.executeQuery(sql);
            while (rs.next()) {
                SanPham sp = new SanPham(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getLong(4), rs.getInt(5));
                list.add(sp);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public static void main(String[] args) {

    }
}
