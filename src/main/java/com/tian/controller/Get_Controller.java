package com.tian.controller;



import com.tian.pojo.Article;
import com.tian.pojo.Category;
import com.tian.pojo.Comment;
import com.tian.pojo.User;
import com.tian.service.ArticleService;
import com.tian.service.CategoryService;
import com.tian.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.sql.Timestamp;
import java.util.List;

@Controller
public class Get_Controller {


    @Autowired
    @Qualifier("ArticleServiceImpl")
    private ArticleService articleService;

    @Autowired
    @Qualifier("CategoryServiceImpl")
    private CategoryService categoryService;

    @Autowired
    @Qualifier("CommentServiceImpl")
    private CommentService commentService;

    @RequestMapping("/home")
    public String home(Model model){
        List<Article> articles=articleService.select_not_content();
        model.addAttribute("articles",articles);
        return "jsp/home";
    }

    @RequestMapping("/detail/{aid}")
    public String detail(@PathVariable("aid") int aid,Model model){
        articleService.update_one_page_view(aid);
        Article article=articleService.select_all_byaid(aid);
        List<Category> categorys =categoryService.select_all();
        model.addAttribute("categorys",categorys);
        model.addAttribute("article",article);
        return "jsp/detail";
    }

    @RequestMapping("/article/all")
    public String article_all(Model model){
        List<Article> articles=articleService.select_not_content();
        List<Category> categorys =categoryService.select_all();
        model.addAttribute("categorys",categorys);
        model.addAttribute("articles",articles);
        return "jsp/article";
    }

    @RequestMapping("/article/{cid}")
    public String article_by_cid(@PathVariable("cid") int cid,Model model){
        List<Article> articles=articleService.select_all_by_cid(cid);
        List<Category> categorys =categoryService.select_all();
        model.addAttribute("categorys",categorys);
        model.addAttribute("articles",articles);
        return "jsp/article";
    }

    @RequestMapping("/comment/insert/{aid}")
    public String insert_comment(@PathVariable("aid") int aid,Comment comment){
        User user=new User();
        user.setUid(2);
        comment.setUser(user);
        comment.setAid(aid);
        comment.setComment_time(new Timestamp(System.currentTimeMillis()));
        System.out.println(comment);
        commentService.insert_one_comment(comment);
        return "redirect:/detail/"+aid;
    }


}
