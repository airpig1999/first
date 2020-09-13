package com.tian.service;

import com.tian.dao.ArticleMapper;
import com.tian.pojo.Article;

import java.util.List;

public class ArticleServiceImpl implements ArticleService {
    private ArticleMapper articleMapper;

    public void setArticleMapper(ArticleMapper articleMapper) {
        this.articleMapper = articleMapper;
    }

    public Article select_all_byaid(int aid) {
        return articleMapper.select_all_byaid(aid);
    }

    public int update_one_article(Article article) {
        articleMapper.update_one_article(article);
        return 0;
    }

    public int insert_one_article(Article article) {
        articleMapper.insert_one_article(article);
        return 0;
    }

    public int delete_one_article(int aid) {
        articleMapper.delete_one_article(aid);
        return 0;
    }

    public int update_one_page_view(int aid) {
        articleMapper.update_one_page_view(aid);
        return 0;
    }

    public List<Article> select_all_by_cid(int cid) {
        return articleMapper.select_all_by_cid(cid);
    }

    public List<Article> select_not_content() {
        return articleMapper.select_not_content();
    }
}
