package org.example.demo.session4;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/bt4")
public class bt4Servlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Product> products = new ArrayList<>();

        products.add(new Product(1, "Táo", 20000, "Ngon"));
        products.add(new Product(2, "Nho", 20000, "Ngon"));

        request.setAttribute("products", products);
        request.getRequestDispatcher("/Session4/bt4.jsp").forward(request, response);
    }
}

