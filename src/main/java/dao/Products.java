package dao;

import java.util.List;

public interface Products {

    List<Product> all(); //get all the products and return it as a List

    void insert(Product productToInsert);
}
