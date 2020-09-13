package com.tian.service;

import com.tian.dao.CategoryMapper;
import com.tian.pojo.Category;

import java.util.List;

public class CategoryServiceImpl implements CategoryService{
    private CategoryMapper categoryMapper;

    public void setCategoryMapper(CategoryMapper categoryMapper) {
        this.categoryMapper = categoryMapper;
    }

    public List<Category> select_all() {
        return categoryMapper.select_all();
    }
}
