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

import Model.KhachHang;
import Service.KhachHangSv;

@WebServlet(name = "searchkh", value = "/searchkh")
public class searchkh extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        KhachHangSv khachHangSv = new KhachHangSv();
        List<KhachHang> list = khachHangSv.searchkh(name);
        request.setAttribute("khachhang", list);
        request.getRequestDispatcher("searchkh.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
