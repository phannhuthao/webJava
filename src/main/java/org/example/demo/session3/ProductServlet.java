package org.example.demo.session3;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/product")
public class ProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Lấy danh sách sản phẩm từ ServletContext
        ServletContext context = getServletContext();
        List<Product> productList = (List<Product>) context.getAttribute("productList");
        if (productList == null) {
            productList = new ArrayList<>();
            context.setAttribute("productList", productList);
        }
        request.setAttribute("productList", productList);
        request.getRequestDispatcher("/Session3/bt6.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String id = request.getParameter("id");
        String productName = request.getParameter("productName");
        int price = Integer.parseInt(request.getParameter("price"));
        String description = request.getParameter("description");
        int stock = Integer.parseInt(request.getParameter("quantity"));
        // checkbox có giá trị nếu được chọn
        boolean status = request.getParameter("status") != null;

        Product product = new Product(id, productName, price, description, stock, status);

        // Lấy danh sách sản phẩm từ ServletContext và thêm sản phẩm mới
        ServletContext context = getServletContext();
        List<Product> productList = (List<Product>) context.getAttribute("productList");
        if (productList == null) {
            productList = new ArrayList<>();
        }
        productList.add(product);
        context.setAttribute("productList", productList);

        response.sendRedirect("/Session3/bt6.jsp");
    }
}
