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

@WebServlet(name = "detail", value = "/detail")
public class detail extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("sp"));
        SanPhamSv sanPhamSv = new SanPhamSv();
        SanPham sp = sanPhamSv.FindById(id);
        request.setAttribute("sp", sp);
        request.getRequestDispatcher("detailsanpham.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
