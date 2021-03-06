import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "GuessServlet", urlPatterns = "/guess")
public class GuessServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("guessPicker.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String guess = req.getParameter("guess");
        double guessDouble = Integer.parseInt(guess);
        req.setAttribute("guess", guess);
        double correctGuess = Math.floor(Math.random()* 3)+1;
        if (guessDouble == correctGuess){
            req.getRequestDispatcher("guessViewer.jsp").forward(req, resp);
        }
    }
}
