package Controller; /**
 *
 * @author dfean
 */

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.SanPham;
import Service.SanPhamSv;

@WebServlet(name = "SanPhamCtrl", value = "/viewsanpham")
public class SanPhamCtrl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        SanPhamSv sp = new SanPhamSv();
        List<SanPham> listsp = sp.getAll();
        request.setAttribute("spsv", listsp);
        request.getRequestDispatcher("viewsanpham.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
