package adlister.controllers;

import com.mysql.jdbc.Driver;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;

@WebServlet
public class AlbumServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Config config = new Config();
        try {
            DriverManager.registerDriver(new Driver());
            Connection connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/codeup_test_db?allowPublicKeyRetrieval=true&useSSL=false",
                    "root",
                    "codeup"
            );
            Statement statement = connection.createStatement();

            ResultSet rs = statement.executeQuery("SELECT * FROM albums;");

            ArrayList<String> albumList = new ArrayList<String>();

            while (rs.next()) {
                albumList.add(rs.getString("artist") + " | " + rs.getString("name"));
            }
            request.setAttribute("albumListView", albumList);
            request.getRequestDispatcher("/WEB-INF/albumList/albumList.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
