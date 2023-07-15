package model.service.impl;

import model.bean.Account;
import model.bean.Category;
import model.bean.Product;
import model.repository.ICategoryRepository;
import model.repository.IRepository;
import model.repository.impl.CategoryRepositoryImpl;
import model.repository.impl.RepositoryImpl;
import model.service.IService;
import model.service.common.Validator;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ServiceImpl implements IService {
    private IRepository repository = new RepositoryImpl();
    private ICategoryRepository categoryRepository = new CategoryRepositoryImpl();

    @Override
    public void addNewCategory(Category category) {
        categoryRepository.addNewCategory(category);
    }

    @Override
    public List<Category> findAllCategory() {
        return categoryRepository.findAllCategory();
    }

    @Override
    public List<Product> searchNameByAjax(String name) {
        return repository.searchNameByAjax(name);
    }

    @Override
    public void addNewProduct(Product product) {
        repository.addNewProduct(product);
    }

    @Override
    public List<Product> getProductLimit10() {
        return repository.getProductLimit10();
    }

    @Override
    public List<Product> getProductNextLimit10(int amount) {
        return repository.getProductNextLimit10(amount);
    }

    @Override
    public Product findById(int id) {
        return repository.findById(id);
    }

    @Override
    public List<Product> findProductByCategoryId(int id) {
        return repository.findProductByCategoryId(id);
    }

    @Override
    public List<Category> getAllCategory() {
        return repository.getAllCategory();
    }

    @Override
    public Category findByIdCategory(int id) {
        return categoryRepository.findByIdCategory(id);
    }

    @Override
    public void deleteAccount(int id) {
        repository.deleteAccount(id);
    }

    @Override
    public Account findAccountId(int id) {
        return repository.findAccountId(id);
    }

    @Override
    public List<Product> findAll() {
        return repository.findAll();
    }

    @Override
    public List<Account> findAllAccount() {
        return repository.findAllAccount();
    }

    @Override
    public void deleteCategory(int id) {
        categoryRepository.deleteCategory(id);
    }

    @Override
    public void signUpAccount(String username, String password) {
            repository.signUpAccount(username, password);
    }

    @Override
    public void signUpAccountAccess(String username, String password, int isAdmin) {
            repository.signUpAccountAccess(username, password, isAdmin);
    }

    @Override
    public void deleteProduct(int id) {
        repository.deleteProduct(id);
    }

    @Override
    public void updateProduct(String name, String image, double oldPrice, double currentPrice, String description, int categoryId, int id) {
        repository.updateProduct(name, image, oldPrice, currentPrice, description, categoryId, id);
    }

    @Override
    public void updateAccount(String username, String password, int isAdmin, int idAdmin) {
        repository.updateAccount(username, password, isAdmin, idAdmin);
    }

    @Override
    public Account checkAccountExist(String username) {
        return repository.checkAccountExist(username);
    }

    @Override
    public Account login(String username, String password) {
        return repository.login(username, password);
    }

    @Override
    public Product lastProduct() {
        return repository.lastProduct();
    }

    @Override
    public Product productSale() {
        return repository.productSale();
    }

    @Override
    public List<Product> getProductNextLimit10ByCategory(int amount, int categoryId) {
        return repository.getProductNextLimit10ByCategory(amount, categoryId);
    }
}
