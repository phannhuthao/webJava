package org.example.demo.session1.bt5;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/bt5")
public class bt5Servlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            int result = 10 / 0;
            response.getWriter().println("Kết quả: " + result);

        } catch (Exception e) {
            request.setAttribute("error", "Xảy ra lỗi khi bạn chia vượt mức pickleball" + e.getMessage());
            RequestDispatcher dispatcher = request.getRequestDispatcher("/bt5.jsp");
            dispatcher.forward(request, response);
        }
    }
}
