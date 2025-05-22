package org.example.demo.session4;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/bt2")
public class bt2Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String inputUsername = request.getParameter("username");
        String inputPassword = request.getParameter("password");

        String message;
        boolean isSuccess = false;

        if ("admin".equals(inputUsername) && "123456".equals(inputPassword)) {
            message = "Đăng nhập thành công và chào mừng đã đến với tư bản " + inputUsername + "!";
            isSuccess = true;
        } else {
            message = "Sai thông tin đăng nhập rồi thằng ngu này.Nhập lại đi";
        }

        request.setAttribute("message", message);
        request.setAttribute("isSuccess", isSuccess);
        request.getRequestDispatcher("/Session4/bt2.jsp").forward(request, response);
    }
}
