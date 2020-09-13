package com.tian.dao;

import com.tian.pojo.Category;

import java.util.List;

public interface CategoryMapper {
    List<Category> select_all();
}
