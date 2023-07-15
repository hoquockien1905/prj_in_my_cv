package model.repository;

import model.bean.Category;

import java.util.List;

public interface ICategoryRepository {
    Category findByIdCategory(int id);

    List<Category> findAllCategory();

    void addNewCategory(Category category);

    void deleteCategory(int id);
}
