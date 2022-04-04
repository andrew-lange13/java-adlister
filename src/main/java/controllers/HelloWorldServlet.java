package controllers;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.HelloWorldServlet", urlPatterns = {"/", "/hello"})
public class HelloWorldServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String outputResp = "<h1>Hello, World!</h1>";
        if (request.getParameter("name") != null){
            outputResp = "<h1>Hello, " + request.getParameter("name") + "!</h1>";
        }
        response.getWriter().println(outputResp);
    }
}
