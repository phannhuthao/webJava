package org.example.demo.session4;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/bt5d")
public class bt5Servlet extends HttpServlet {

    private List<Product> productList = new ArrayList<>();

    @Override
    public void init() throws ServletException {
        productList.add(new Product(1, "Tôi là thằng ngu", 30000, "ngu mới đọc"));
        productList.add(new Product(2, "36 kế chạy là thượng sách", 30000, "Chạy thì lẹ đi còn mở ra đọc rồi chạy"));
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idStr = request.getParameter("id");
        Product foundProduct = null;

        try {
            int id = Integer.parseInt(idStr);
            for (Product p : productList) {
                if (p.getId() == id) {
                    foundProduct = p;
                    break;
                }
            }
        } catch (NumberFormatException e) {
           e.printStackTrace();
        }

        request.setAttribute("product", foundProduct);
        request.getRequestDispatcher("/Session4/bt5.jsp").forward(request, response);
    }
}