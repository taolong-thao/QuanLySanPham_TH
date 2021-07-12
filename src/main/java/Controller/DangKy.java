/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.TaiKhoan;
import Service.KhachHangSv;
import Service.TaiKhoanSv;

/**
 *
 * @author Quang Vinh
 */
@WebServlet(name = "DangKy", value = "/DangKy")
public class DangKy extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String tenKh = request.getParameter("tenKh");
        String diaChi = request.getParameter("diaChi");
        String SDT = request.getParameter("SDT");
        String ngSinh = request.getParameter("ngSinh");
        int temp = 0;
        TaiKhoanSv taiKhoanSv = new TaiKhoanSv();
        TaiKhoan a = taiKhoanSv.dkTaiKhoan(temp, username, password, "user");
        KhachHangSv khachHangSv = new KhachHangSv();
        khachHangSv.dkKhachHang(temp, tenKh, diaChi, SDT, ngSinh, a.getKey());
        response.sendRedirect("index.jsp");
    }
}
