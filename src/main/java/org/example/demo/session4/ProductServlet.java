package org.example.demo.session4;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/products")
public class ProductServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Product> productList = new ArrayList<>();
        productList.add(new Product(1, "iPhone 15", 30000, "Hãng táo"));
        productList.add(new Product(2, "Samsung S24", 25000, "mãi keo"));
        productList.add(new Product(3, "Oppo Reno", 18000, "Chịu"));

        request.setAttribute("products", productList);
        request.getRequestDispatcher("/Session4/bt1.jsp").forward(request, response);
    }
}
