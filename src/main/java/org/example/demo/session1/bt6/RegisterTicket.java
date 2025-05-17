package org.example.demo.session1.bt6;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "RegisterTicket", value = "/register-ticket")
public class RegisterTicket extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String userName = request.getParameter("userName");
        String classroom = request.getParameter("classroom");
        String type = request.getParameter("type");
        String numberCar = request.getParameter("numberCar");

        request.setAttribute("userName", userName);
        request.setAttribute("classroom", classroom);
        request.setAttribute("type", type);
        request.setAttribute("numberCar", numberCar);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/Session1/resultRegister.jsp");
        dispatcher.forward(request, response);
    }
}
