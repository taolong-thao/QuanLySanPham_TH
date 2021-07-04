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

@WebServlet(name = "deleteKh", value = "/deletekh")
public class deleteKh extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int maKh = Integer.parseInt(request.getParameter("id"));
        KhachHangSv kh = new KhachHangSv();
        kh.deleteKh(maKh);
        response.sendRedirect("/viewkhachhang");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
