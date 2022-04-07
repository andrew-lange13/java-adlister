package dao;

import com.mysql.jdbc.Driver;
import controllers.Config;
import models.User;

import java.sql.*;

public class MySQLUsersDao implements Users {

    private Connection connection;

    public MySQLUsersDao(Config config, Connection connection) {
        try {
            DriverManager.registerDriver(new Driver());
            this.connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    @Override
    public User findByUsername(String username) {
        User user = null;
        String userSearch = "SELECT * FROM users WHERE username = ?";
        try{
            PreparedStatement stmt = connection.prepareStatement(userSearch, Statement.RETURN_GENERATED_KEYS);

            stmt.setString(1, username);

            ResultSet rs = stmt.executeQuery();

            rs.next();
            user = new User(
                    rs.getLong("id"),
                    rs.getString("username"),
                    rs.getString("email"),
                    rs.getString("password"));

        } catch (SQLException e){
            e.printStackTrace();
        }
        return user;
    }

    @Override
    public Long insert(User user) {
        return null;
    }
}
