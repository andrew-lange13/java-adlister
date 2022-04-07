package dao;

import com.mysql.jdbc.Driver;
import controllers.Config;
import models.Ad;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads{

    private final Connection connection;

    public MySQLAdsDao(Config config) throws SQLException {
        DriverManager.registerDriver(new Driver());
        connection = DriverManager.getConnection(
                config.getUrl(),
                config.getUser(),
                config.getPassword()
        );
    }

    @Override
    public List<Ad> all(){
        String searchString = "SELECT * FROM ads";
        List<Ad> ads = new ArrayList<>();

        try {
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery(searchString);

            while (rs.next()){
                ads.add(new Ad(
                        rs.getInt("user_id"),
                        rs.getString("title"),
                        rs.getString("description")
                ));

            }
        } catch(SQLException e){
            e.printStackTrace();
        }
        return ads;
    }

    @Override
    public Long insert(Ad ad) {
        String insertString = String.format(
                "INSERT INTO ads (id, user_id, title, description) values (%d, %d, '%s', '%s')",
                ad.getId(),
                1,
                ad.getTitle(),
                ad.getDescription()
        );

        try {
            Statement stmt = connection.createStatement();
            stmt.executeUpdate(insertString, Statement.RETURN_GENERATED_KEYS);

            ResultSet rs = stmt.getGeneratedKeys();

            return rs.getLong(1);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }
}
