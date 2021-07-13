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

import Model.SanPham;
import Service.SanPhamSv;

@WebServlet(name = "updatesp", value = "/update")
public class updatesp extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("sp"));
        SanPhamSv sanPhamSv = new SanPhamSv();
        SanPham sp = sanPhamSv.FindById(id);
        request.setAttribute("sp", sp);
        request.getRequestDispatcher("updatesanpham.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String tenSp = request.getParameter("tenSp");
        String moTa = request.getParameter("moTa");
        long giaBan = Long.parseLong(request.getParameter("giaBan"));
        int soLuong = Integer.parseInt(request.getParameter("soLuong"));
        int id = Integer.parseInt(request.getParameter("idSp"));
        SanPhamSv sanPhamSv = new SanPhamSv();
        sanPhamSv.updateSp(id, tenSp, moTa, giaBan, soLuong);
        response.sendRedirect("viewsanpham");
    }
}
