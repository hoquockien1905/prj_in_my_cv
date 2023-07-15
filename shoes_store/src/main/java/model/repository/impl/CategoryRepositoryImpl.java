package model.repository.impl;

import model.bean.Category;
import model.bean.Product;
import model.repository.ICategoryRepository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CategoryRepositoryImpl implements ICategoryRepository {

    private DBContext dbContext = new DBContext();
    private static final String SELECT_ALL_PRODUCT = "SELECT * FROM category";

    @Override
    public List<Category> findAllCategory() {
        List<Category> listCategory = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = dbContext.getConnection()
                    .prepareStatement(SELECT_ALL_PRODUCT);
            ResultSet resultSet = preparedStatement.executeQuery();
            Category category;
            while (resultSet.next()) {
                category = new Category();
                category.setId(resultSet.getInt("category_id"));
                category.setName(resultSet.getString("category_name"));
                listCategory.add(category);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return listCategory;
    }

    @Override
    public void addNewCategory(Category category) {
        try {
            PreparedStatement preparedStatement = dbContext.getConnection()
                    .prepareStatement("INSERT INTO category(category_name) " +
                            "VALUES (?)");
            preparedStatement.setString(1, category.getName());
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public void deleteCategory(int id) {
        try {
            PreparedStatement preparedStatement = dbContext.getConnection()
                    .prepareStatement("DELETE FROM category WHERE category_id = ?");
            preparedStatement.setInt(1, id);
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public Category findByIdCategory(int id) {
        Category category = new Category();
        try {
            PreparedStatement preparedStatement = dbContext.getConnection()
                    .prepareStatement(" SELECT * FROM category WHERE category_id = ?");
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                category.setId(resultSet.getInt("category_id"));
                category.setName(resultSet.getString("category_name"));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return category;
    }
}
