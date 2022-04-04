package dao;

import java.util.ArrayList;
import java.util.List;

public class ListProductsDao implements Products {
    private List<Product> products = new ArrayList<>();

    public ListProductsDao(){
        insert(new Product("pressure washer", 299.99));
    }

    public List<Product> all(){
        return this.products;
    }

    public void insert(Product productToInsert){
        this.products.add(productToInsert);
    }
}
