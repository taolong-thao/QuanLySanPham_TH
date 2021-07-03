/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.KhachHang;
import Model.TaiKhoan;
import Service.KhachHangSv;
import Service.TaiKhoanSv;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Quang Vinh
 */
@WebServlet(name = "dangky", value = "/DangKy")
public class DangKy extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String tenKh = request.getParameter("tenKh");
        String diaChi = request.getParameter("diaChi");
        String SDT = request.getParameter("SDT");
        String ngSinh = request.getParameter("ngSinh");
        TaiKhoanSv taiKhoanSv = new TaiKhoanSv();
        TaiKhoan a = taiKhoanSv.dkTaiKhoan(username, password);
        KhachHangSv khachHangSv = new KhachHangSv();
        KhachHang k = khachHangSv.dkKhachHang(tenKh, diaChi, SDT, ngSinh, a.getId());
        if(k == null)
            response.sendRedirect("DangKy.jsp");
        else
            response.sendRedirect("DangNhap.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
