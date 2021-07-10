/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import ConnectManager.Connection;
import Model.TaiKhoan;

/**
 *
 * @author Quang Vinh
 */
public class TaiKhoanSv {
    public TaiKhoan checkLogin(String username, String password) {
        try {
            String query = "select * from taikhoan where UserName = ? and Password = ?";
            PreparedStatement ps = Connection.connection().prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                TaiKhoan a = new TaiKhoan(0, rs.getString(1), rs.getString(2), "user");
                return a;
            }
        } catch (Exception e) {
        }
        return null;
    }


    public TaiKhoan dkTaiKhoan(int a, String username, String password, String b) {
        TaiKhoan taiKhoan = new TaiKhoan(a, username, password, b);
        String query = "insert into taikhoan values (?,?, ?, ?)";
        try {
            PreparedStatement ps = Connection.connection().prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            ps.setInt(1, taiKhoan.getId());
            ps.setString(2, taiKhoan.getUsername());
            ps.setString(3, taiKhoan.getPassword());
            ps.setString(4, taiKhoan.getRole());
            ps.executeUpdate();
            ResultSet rs = ps.getGeneratedKeys();
            if (rs.next()) {
                taiKhoan.setKey(rs.getInt(1));
            }
            return taiKhoan;
        } catch (Exception e) {
        }
        return null;
    }
}
