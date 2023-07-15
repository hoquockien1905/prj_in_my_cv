package model.repository.impl;

import model.bean.Account;
import model.bean.Category;
import model.bean.Product;
import model.repository.IRepository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class RepositoryImpl implements IRepository {

    private DBContext dbContext = new DBContext();
    private static final String SELECT_ALL_PRODUCT = "SELECT * FROM products";

    @Override
    public List<Product> findAll() {
        List<Product> products = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = dbContext.getConnection()
                    .prepareStatement(SELECT_ALL_PRODUCT);
            ResultSet resultSet = preparedStatement.executeQuery();
            Product product;
            while (resultSet.next()) {
                product = new Product();
                product.setId(resultSet.getInt("product_id"));
                product.setName(resultSet.getString("product_name"));
                product.setImage(resultSet.getString("image"));
                product.setOldPrice(resultSet.getDouble("old_price"));
                product.setCurrentPrice(resultSet.getDouble("current_price"));
                product.setTitle(resultSet.getString("title"));
                product.setDescription(resultSet.getString("descriptions"));
                products.add(product);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return products;
    }

    @Override
    public Account login(String username, String password) {
        try {
            PreparedStatement preparedStatement = dbContext.getConnection()
                    .prepareStatement("SELECT * FROM accounts\n" +
                            "WHERE username = ? AND password = ?");
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                return new Account(
                        resultSet.getInt(1),
                        resultSet.getString(2),
                        resultSet.getString(3),
                        resultSet.getInt(4)
                );
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Product> getProductLimit10() {
        List<Product> products = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = dbContext.getConnection()
                    .prepareStatement("SELECT * FROM products LIMIT 10");
            ResultSet resultSet = preparedStatement.executeQuery();
            Product product;
            while (resultSet.next()) {
                product = new Product();
                product.setId(resultSet.getInt("product_id"));
                product.setName(resultSet.getString("product_name"));
                product.setImage(resultSet.getString("image"));
                product.setOldPrice(resultSet.getDouble("old_price"));
                product.setCurrentPrice(resultSet.getDouble("current_price"));
                product.setTitle(resultSet.getString("title"));
                product.setDescription(resultSet.getString("descriptions"));
                products.add(product);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return products;
    }

    @Override
    public List<Product> getProductNextLimit10(int amount) {
        List<Product> products = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = dbContext.getConnection()
                    .prepareStatement("SELECT * FROM products \n" +
                            "ORDER BY product_id\n" +
                            "LIMIT 10\n" +
                            "OFFSET ?");
            preparedStatement.setInt(1, amount);
            ResultSet resultSet = preparedStatement.executeQuery();
            Product product;
            while (resultSet.next()) {
                product = new Product();
                product.setId(resultSet.getInt("product_id"));
                product.setName(resultSet.getString("product_name"));
                product.setImage(resultSet.getString("image"));
                product.setOldPrice(resultSet.getDouble("old_price"));
                product.setCurrentPrice(resultSet.getDouble("current_price"));
                product.setTitle(resultSet.getString("title"));
                product.setDescription(resultSet.getString("descriptions"));
                products.add(product);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return products;
    }

    @Override
    public List<Product> getProductNextLimit10ByCategory(int amount, int categoryId) {
        List<Product> products = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = dbContext.getConnection()
                    .prepareStatement("SELECT * FROM products WHERE category_id = ? LIMIT 10 OFFSET ?");
            preparedStatement.setInt(1, categoryId);
            preparedStatement.setInt(2, amount);
            ResultSet resultSet = preparedStatement.executeQuery();
            Product product;
            while (resultSet.next()) {
                product = new Product();
                product.setId(resultSet.getInt("product_id"));
                product.setName(resultSet.getString("product_name"));
                product.setImage(resultSet.getString("image"));
                product.setOldPrice(resultSet.getDouble("old_price"));
                product.setCurrentPrice(resultSet.getDouble("current_price"));
                product.setTitle(resultSet.getString("title"));
                product.setDescription(resultSet.getString("descriptions"));
                products.add(product);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return products;
    }

    @Override
    public Account checkAccountExist(String username) {
        try {
            PreparedStatement preparedStatement = dbContext.getConnection()
                    .prepareStatement("SELECT * FROM accounts\n" +
                            "WHERE username = ?");
            preparedStatement.setString(1, username);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                return new Account(
                        resultSet.getInt(1),
                        resultSet.getString(2),
                        resultSet.getString(3),
                        resultSet.getInt(4)
                );
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    @Override
    public void signUpAccount(String username, String password) {
        try {
            PreparedStatement preparedStatement = dbContext.getConnection()
                    .prepareStatement("INSERT INTO accounts(username, password, is_admin) VALUES (?,?,0)");
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public void signUpAccountAccess(String username, String password, int isAdmin) {
        try {
            PreparedStatement preparedStatement = dbContext.getConnection()
                    .prepareStatement("INSERT INTO accounts(username, password, is_admin) VALUES (?,?,?)");
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);
            preparedStatement.setInt(3, isAdmin);
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public void deleteProduct(int id) {
        try {
            PreparedStatement preparedStatement = dbContext.getConnection()
                    .prepareStatement("DELETE FROM products WHERE product_id = ?");
            preparedStatement.setInt(1, id);
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public void updateAccount(String username, String password, int isAdmin, int idAdmin) {
        try {
            PreparedStatement preparedStatement = dbContext.getConnection()
                    .prepareStatement("UPDATE accounts SET username = ?, password = ?, is_admin = ? WHERE account_id = ?");
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);
            preparedStatement.setInt(3, isAdmin);
            preparedStatement.setInt(4, idAdmin);
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public void updateProduct(String name, String image, double oldPrice, double currentPrice, String description, int categoryId, int id) {
        try {
            PreparedStatement preparedStatement = dbContext.getConnection()
                    .prepareStatement("UPDATE products SET product_name = ?, image = ?, old_price = ?, current_price = ?, title = ?, descriptions =?, category_id = ? WHERE product_id = ?");
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, image);
            preparedStatement.setDouble(3, oldPrice);
            preparedStatement.setDouble(4, currentPrice);
            preparedStatement.setString(5, name);
            preparedStatement.setString(6, description);
            preparedStatement.setInt(7, categoryId);
            preparedStatement.setInt(8, id);
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public Product findById(int id) {
        Product product = new Product();
        try {
            PreparedStatement preparedStatement = dbContext.getConnection()
                    .prepareStatement("SELECT * FROM products WHERE product_id = ?");
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                product.setId(resultSet.getInt("product_id"));
                product.setName(resultSet.getString("product_name"));
                product.setImage(resultSet.getString("image"));
                product.setOldPrice(resultSet.getDouble("old_price"));
                product.setCurrentPrice(resultSet.getDouble("current_price"));
                product.setTitle(resultSet.getString("title"));
                product.setDescription(resultSet.getString("descriptions"));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return product;
    }

    @Override
    public void addNewProduct(Product product) {
        try {
            PreparedStatement preparedStatement = dbContext.getConnection()
                    .prepareStatement("INSERT INTO products (product_name, image, old_price, current_price, title, descriptions, category_id) " +
                            "VALUES (?,?,?,?,?,?,?)");
            preparedStatement.setString(1, product.getName());
            preparedStatement.setString(2, product.getImage());
            preparedStatement.setDouble(3, product.getOldPrice());
            preparedStatement.setDouble(4, product.getCurrentPrice());
            preparedStatement.setString(5, product.getTitle());
            preparedStatement.setString(6, product.getDescription());
            preparedStatement.setInt(7, product.getIdCategory());
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public List<Product> findProductByCategoryId(int id) {
        List<Product> products = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = dbContext.getConnection()
                    .prepareStatement("SELECT * FROM products WHERE category_id = ?");
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                products.add(new Product(
                        resultSet.getInt(1),
                        resultSet.getString(2),
                        resultSet.getString(3),
                        resultSet.getDouble(4),
                        resultSet.getDouble(5),
                        resultSet.getString(6),
                        resultSet.getString(7)
                ));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return products;
    }

    @Override
    public List<Category> getAllCategory() {
        List<Category> categories = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = dbContext.getConnection()
                    .prepareStatement("SELECT * FROM category");
            ResultSet resultSet = preparedStatement.executeQuery();
            Category category = null;
            while (resultSet.next()) {
                categories.add(new Category(
                        resultSet.getInt(1),
                        resultSet.getString(2)
                ));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return categories;
    }

    @Override
    public List<Product> searchNameByAjax(String name) {
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = dbContext.getConnection()
                    .prepareStatement(" SELECT * FROM products WHERE product_name LIKE ? LIMIT 10");
            preparedStatement.setString(1, "%" + name + "%");
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                list.add(new Product(
                        resultSet.getInt(1),
                        resultSet.getString(2),
                        resultSet.getString(3),
                        resultSet.getDouble(4),
                        resultSet.getDouble(5),
                        resultSet.getString(6),
                        resultSet.getString(7)
                ));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return list;
    }

    @Override
    public Product lastProduct() {
        try {
            PreparedStatement preparedStatement = dbContext.getConnection()
                    .prepareStatement(" SELECT * FROM products \n" +
                            " ORDER BY product_id DESC\n" +
                            " LIMIT 1");
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                return new Product(
                        resultSet.getInt(1),
                        resultSet.getString(2),
                        resultSet.getString(3),
                        resultSet.getDouble(4),
                        resultSet.getDouble(5),
                        resultSet.getString(6),
                        resultSet.getString(7)
                );
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    @Override
    public Product productSale() {
        try {
            PreparedStatement preparedStatement = dbContext.getConnection()
                    .prepareStatement("  SELECT * FROM products \n" +
                            " ORDER BY current_price\n" +
                            " LIMIT 1");
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                return new Product(
                        resultSet.getInt(1),
                        resultSet.getString(2),
                        resultSet.getString(3),
                        resultSet.getDouble(4),
                        resultSet.getDouble(5),
                        resultSet.getString(6),
                        resultSet.getString(7)
                );
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Account> findAllAccount() {
        List<Account> listAccount = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = dbContext.getConnection()
                    .prepareStatement("SELECT * FROM accounts");
            ResultSet resultSet = preparedStatement.executeQuery();
            Account account;
            while (resultSet.next()) {
                account = new Account();
                account.setId(resultSet.getInt("account_id"));
                account.setUsername(resultSet.getString("username"));
                account.setPassword(resultSet.getString("password"));
                account.setIsAdmin(resultSet.getInt("is_admin"));
                listAccount.add(account);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return listAccount;
    }

    @Override
    public void deleteAccount(int id) {
        try {
            PreparedStatement preparedStatement = dbContext.getConnection()
                    .prepareStatement("DELETE FROM accounts WHERE account_id = ?");
            preparedStatement.setInt(1, id);
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public Account findUsername(String username) {
        Account account = new Account();
        try {
            PreparedStatement preparedStatement = dbContext.getConnection()
                    .prepareStatement("SELECT * FROM accounts WHERE username = ?");
            preparedStatement.setString(1, username);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                account.setId(resultSet.getInt("account_id"));
                account.setUsername(resultSet.getString("username"));
                account.setPassword(resultSet.getString("password"));
                account.setIsAdmin(resultSet.getInt("is_admin"));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return account;
    }

    @Override
    public Account findAccountId(int id) {
        Account account = new Account();
        try {
            PreparedStatement preparedStatement = dbContext.getConnection()
                    .prepareStatement("SELECT * FROM accounts WHERE account_id = ?");
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                account.setId(resultSet.getInt("account_id"));
                account.setUsername(resultSet.getString("username"));
                account.setPassword(resultSet.getString("password"));
                account.setIsAdmin(resultSet.getInt("is_admin"));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return account;
    }
}
