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

@WebServlet(name = "DeleteSanPham", value = "/delete")
public class DeleteSanPham extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int maSp = Integer.parseInt(request.getParameter("sp"));
        SanPhamSv sp = new SanPhamSv();
        sp.deleteSp(maSp);
        response.sendRedirect("/viewsanpham");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
