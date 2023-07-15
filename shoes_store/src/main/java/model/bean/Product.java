package model.bean;

public class Product {
    private int id;
    private String name;
    private String image;
    private double oldPrice;
    private double currentPrice;
    private String title;
    private String description;
    private int idCategory;
    private String nameCategory;

    public Product(int id, String name, String image, double oldPrice, double currentPrice, String title, String description, int idCategory, String nameCategory) {
        this.id = id;
        this.name = name;
        this.image = image;
        this.oldPrice = oldPrice;
        this.currentPrice = currentPrice;
        this.title = title;
        this.description = description;
        this.idCategory = idCategory;
        this.nameCategory = nameCategory;
    }

    public Product() {
    }

    public Product(String name, String image, double oldPrice, double currentPrice, String title, String description, int idCategory) {
        this.name = name;
        this.image = image;
        this.oldPrice = oldPrice;
        this.currentPrice = currentPrice;
        this.title = title;
        this.description = description;
        this.idCategory = idCategory;
    }

    public Product(int id, String name, String image, double oldPrice, double currentPrice, String title, String description) {
        this.id = id;
        this.name = name;
        this.image = image;
        this.oldPrice = oldPrice;
        this.currentPrice = currentPrice;
        this.title = title;
        this.description = description;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public double getOldPrice() {
        return oldPrice;
    }

    public void setOldPrice(double oldPrice) {
        this.oldPrice = oldPrice;
    }

    public double getCurrentPrice() {
        return currentPrice;
    }

    public void setCurrentPrice(double currentPrice) {
        this.currentPrice = currentPrice;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getNameCategory() {
        return nameCategory;
    }

    public void setNameCategory(String nameCategory) {
        this.nameCategory = nameCategory;
    }

    public int getIdCategory() {
        return idCategory;
    }

    public void setIdCategory(int idCategory) {
        this.idCategory = idCategory;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", image='" + image + '\'' +
                ", oldPrice=" + oldPrice +
                ", currentPrice=" + currentPrice +
                ", title='" + title + '\'' +
                ", description='" + description + '\'' +
                '}';
    }
}
