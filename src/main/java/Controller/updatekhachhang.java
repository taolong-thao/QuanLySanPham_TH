package Controller; /**
 *
 * @author dfean
 */

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Service.KhachHangSv;

@WebServlet(name = "updatekhachhang", value = "/updatekh")
public class updatekhachhang extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        KhachHangSv khachHangSv = new KhachHangSv();
        request.setAttribute("list", khachHangSv.FindKh(id));
        request.getRequestDispatcher("updatekhachhang.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        KhachHangSv khachHangSv = new KhachHangSv();
        String tenkh = request.getParameter("tenKh");
        String ngSinh = request.getParameter("ngSinh");
        String diaChi = request.getParameter("diaChi");
        String sdt = request.getParameter("SDT");
        khachHangSv.updateKh(id, tenkh, ngSinh, diaChi, sdt);
        response.sendRedirect("viewkhachhang");

    }
}
