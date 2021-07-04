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

@WebServlet(name = "search", value = "/search")
public class search extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String ten = request.getParameter("ten");
        try {
            SanPhamSv sanPhamSv = new SanPhamSv();
            List<SanPham> list = sanPhamSv.search(ten);
            request.setAttribute("listsearch", list);
            request.getRequestDispatcher("searchsanpham.jsp").forward(request, response);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
