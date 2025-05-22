package org.example.demo.session4;

public class Product {
    private int id;
    private String productName;
    private int price;
    private String description;

    public Product(int id, String productName, int price, String description) {
        this.id = id;
        this.productName = productName;
        this.price = price;
        this.description = description;
    }

    public int getId() {
        return id;
    }
    public String getProductName() {
        return productName;
    }
    public int getPrice() {
        return price;
    }
    public String getDescription() {
        return description;
    }
}

