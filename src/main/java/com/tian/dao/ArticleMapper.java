package com.tian.dao;

import com.tian.pojo.Article;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ArticleMapper {
    List<Article> select_not_content();
    Article select_all_byaid(@Param("aid") int aid);
    List<Article> select_all_by_cid(@Param("cid") int cid);
    int insert_one_article(@Param("article") Article article);
    int update_one_article(@Param("article") Article article);
    int delete_one_article(@Param("aid") int aid);
    int update_one_page_view(@Param("aid") int aid);
}
