package org.example.demo.session1.bt3;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(name = "bt3", value = "/bt3")
public class bt3Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = "Phan Nhựt Hào";
        int age = 20;

        request.setAttribute("name", name);
        request.setAttribute("age", age);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/Session1/bt3.jsp");
        dispatcher.forward(request, response);
    }
}
