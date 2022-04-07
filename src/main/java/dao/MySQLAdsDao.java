package dao;

import com.mysql.jdbc.Driver;
import controllers.Config;
import models.Ad;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {

    private Connection connection;

    public MySQLAdsDao(Config config) {
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
    public List<Ad> all() {
        String searchString = "SELECT * FROM ads";
        List<Ad> ads = new ArrayList<>();

        try {
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery(searchString);

            while (rs.next()) {
                ads.add(new Ad(
                        rs.getInt("user_id"),
                        rs.getString("title"),
                        rs.getString("description")
                ));

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return ads;
    }

    @Override
    public Long insert(Ad ad) {
        String insertString = "INSERT INTO ads (user_id, title, description) values (?, ?, ?)";

        try {
            PreparedStatement stmt = connection.prepareStatement(insertString, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, ad.getUserId());
            stmt.setString(2, ad.getTitle());
            stmt.setString(3, ad.getDescription());
            stmt.executeUpdate();

            ResultSet rs = stmt.getGeneratedKeys();

            return rs.getLong(1);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }
}
