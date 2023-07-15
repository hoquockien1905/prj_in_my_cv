package model.repository;

import model.bean.Account;
import model.bean.Category;
import model.bean.Product;

import java.util.List;

public interface IRepository {
    List<Product> findAll();

    Account login(String username, String password);

    Account checkAccountExist(String username);

    void signUpAccount(String username, String password);

    void signUpAccountAccess(String username, String password, int isAdmin);

    void updateAccount(String username, String password, int isAdmin, int idAdmin);

    void deleteProduct(int id);

    void updateProduct(String name, String image, double oldPrice, double currentPrice, String description, int categoryId, int id);

    Account findUsername(String username);

    Product findById(int id);

    void addNewProduct(Product product);

    List<Category> getAllCategory();

    List<Product> findProductByCategoryId(int id);

    List<Product> getProductLimit10();

    List<Product> getProductNextLimit10(int amount);

    List<Product> getProductNextLimit10ByCategory(int amount, int categoryId);

    List<Product> searchNameByAjax(String name);

    Product lastProduct();

    Product productSale();

    List<Account> findAllAccount();

    void deleteAccount(int id);

    Account findAccountId(int id);
}

