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

import Service.SanPhamSv;

@WebServlet(name = "addsanpham", value = "/add")
public class addsanpham extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String tenSp = request.getParameter("tenSp");
        String moTa = request.getParameter("moTa");
        long giaBan = Long.parseLong(request.getParameter("giaBan"));
        int soLuong = Integer.parseInt(request.getParameter("soLuong"));
        int a = 0;
        SanPhamSv sanPhamSv = new SanPhamSv();
        sanPhamSv.addSp(a, tenSp, moTa, giaBan, soLuong);
        response.sendRedirect("viewsanpham");
    }
}
