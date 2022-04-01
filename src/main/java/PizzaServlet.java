import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

@WebServlet(name = "PizzaServlet", urlPatterns = "/pizza-order")
public class PizzaServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.getRequestDispatcher("pizza.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String crust = request.getParameter("crust");
        String sauce = request.getParameter("sauce");
        String size = request.getParameter("size");
        String[] toppings = request.getParameterValues("toppings");
        String address = request.getParameter("address");

        System.out.println(crust);
        System.out.println(sauce);
        System.out.println(size);
        System.out.println(Arrays.toString(toppings));

        response.sendRedirect("/pizza-order");

//        request.setAttribute("crust", crust);
//        request.setAttribute("sauce", sauce);
//        request.setAttribute("size", size);
//        request.setAttribute("toppings", Arrays.toString(toppings));
//        request.setAttribute("address", address);
//        request.getRequestDispatcher("/pizza.jsp").forward(request, response);


    }
}
