/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import ConnectManager.Connection;
import Model.TaiKhoan;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Quang Vinh
 */
public class TaiKhoanSv {
    public TaiKhoan checkLogin(String username, String password)
    {
        try
        {
            String query = "select * from taikhoan where username = ? and password = ?";
            PreparedStatement ps = Connection.connection().prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                TaiKhoan a = new TaiKhoan(rs.getString(1), rs.getString(2));
                return a;
            }
        }catch(Exception e){}
        return null;
    }
    public TaiKhoan dkTaiKhoan(String username, String password)
    {
        TaiKhoan a = new TaiKhoan(username, password);
        String query = "insert into taikhoan values (?, ?, ?)";
        try
        {
            PreparedStatement ps = Connection.connection().prepareStatement(query);
            ps.setString(1, a.getUsername());
            ps.setString(2, a.getPassword());
            ps.setString(3, a.getRole());
            ps.executeUpdate();
            return a;
        }catch(Exception e){}
        return null;
    }
}
