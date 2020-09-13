package com.tian.service;

import com.tian.pojo.Article;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ArticleService {
    List<Article> select_not_content();
    Article select_all_byaid(int aid);
    List<Article> select_all_by_cid(int cid);
    int insert_one_article(Article article);
    int update_one_article(Article article);
    int delete_one_article(int aid);
    int update_one_page_view(int aid);
}
