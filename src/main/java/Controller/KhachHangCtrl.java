package Controller; /**
 *
 * @author dfean
 */

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.KhachHang;
import Service.KhachHangSv;


public class KhachHangCtrl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        KhachHangSv kh = new KhachHangSv();
        try {
            List<KhachHang> list = kh.getAll();
            request.setAttribute("khachhang", list);
            request.getRequestDispatcher("viewkhachhang.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
