public class DaoFactory {
    private static Products productsDao; //field for the DAO we created

    public static Products getProductsDao() {
        if (productsDao == null) {
            productsDao = new ListProductsDao();
        } // make a new data access object if one not found
        return productsDao;// return the one you found or created
    }


}
