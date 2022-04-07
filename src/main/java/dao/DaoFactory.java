package dao;

import controllers.Config;

import java.sql.SQLException;

public class DaoFactory {
    private static Products productsDao; //field for the DAO we created

    public static Products getProductsDao() {
        if (productsDao == null) {
            productsDao = new ListProductsDao();
        } // make a new data access object if one not found
        return productsDao;// return the one you found or created
    }

    private static Ads adsDao;

    public static Ads getAdsDao() throws SQLException {
        if (adsDao == null) {
            adsDao = new MySQLAdsDao(new Config());
        }
        return adsDao;
    }

    private static Users usersDao;

    public static Users getUsersDao() throws SQLException {
        if (usersDao == null) {
            usersDao = new MySQLUsersDao(new Config());
        }
        return usersDao;
    }
}
