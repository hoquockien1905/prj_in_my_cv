package model.service;

import model.bean.Account;
import model.bean.Category;
import model.bean.Product;

import java.util.List;
import java.util.Map;

public interface IService {

    void addNewCategory(Category category);

    List<Category> findAllCategory();

    Account login(String username, String password);

    Account checkAccountExist(String username);

    void signUpAccount(String username, String password);

    void signUpAccountAccess(String username, String password, int isAdmin);

    void updateAccount(String username, String password, int isAdmin, int idAdmin);

    void deleteCategory(int id);

    void deleteProduct(int id);

    void updateProduct(String name, String image, double oldPrice, double currentPrice, String description, int categoryId, int id);

    Category findByIdCategory(int id);

    List<Category> getAllCategory();

    void addNewProduct(Product product);

    List<Product> findProductByCategoryId(int id);

    Product findById(int id);

    List<Product> getProductLimit10();

    List<Product> getProductNextLimit10(int amount);

    List<Product> searchNameByAjax(String name);

    Product lastProduct();

    Product productSale();

    List<Product> getProductNextLimit10ByCategory(int amount, int categoryId);

    List<Account> findAllAccount();

    void deleteAccount(int id);

    Account findAccountId(int id);

    List<Product> findAll();
}
