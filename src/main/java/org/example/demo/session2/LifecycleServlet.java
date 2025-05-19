package org.example.demo.session2;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class LifecycleServlet extends HttpServlet {

    @Override
    public void init() throws ServletException {
        System.out.println("init được gọi khi Servlet đang được khởi tạo.");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        out.println("<html>");
        out.println("<body>");
        out.println("<h1>Vòng đời của Servlet</h1>");
        out.println("<ul>");
        out.println("<li><strong>init()</strong>: Được gọi một lần duy nhất khi Servlet được khởi tạo.</li>");
        out.println("<li><strong>service() / doGet()</strong>: Được gọi mỗi khi có request đến Servlet.</li>");
        out.println("<li><strong>destroy()</strong>: Được gọi một lần khi Servlet bị gỡ bỏ khỏi bộ nhớ.</li>");
        out.println("</ul>");
        out.println("</body>");
        out.println("</html>");
    }

    @Override
    public void destroy() {
        System.out.println("destroy được gọi khi Servlet đang bị huỷ.");
    }
}
