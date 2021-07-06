/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.TaiKhoan;
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
@WebServlet(name = "dangnhap", value = "/DangNhap")
public class DangNhap extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try
        {
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            TaiKhoanSv taiKhoanSv = new TaiKhoanSv();
            TaiKhoan a = taiKhoanSv.checkLogin(username, password);
            if(a == null)
                response.sendRedirect("DangNhap.jsp");
            else
            {
                if(a.getRole() == "user")
                    response.sendRedirect("viewsanpham.jsp");
                else if(a.getRole() == "admin")
                    response.sendRedirect("AdminControl.jsp");
                else
                    response.sendRedirect("DangNhap.jsp");
            }
        }catch(Exception e){}
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
