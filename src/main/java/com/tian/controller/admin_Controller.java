package com.tian.controller;

import com.tian.pojo.Article;
import com.tian.pojo.Category;
import com.tian.pojo.User;
import com.tian.service.ArticleService;
import com.tian.service.CategoryService;
import com.tian.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.sql.Date;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class admin_Controller {
    @Autowired
    @Qualifier("ArticleServiceImpl")
    private ArticleService articleService;

    @Autowired
    @Qualifier("CategoryServiceImpl")
    private CategoryService categoryService;

    @Autowired
    @Qualifier("UserServiceImpl")
    private UserService userService;

    @RequestMapping("/article/all")
    public String article_all(Model model){
        List<Article> articles=articleService.select_not_content();
        model.addAttribute("articles",articles);
        return "WEB-INF/adminjsp/admin_article_list";
    }

    @RequestMapping("/article/add")
    public String article_add(Model model){
        List<Category> categories=categoryService.select_all();
        List<User> users=userService.select_all_no_pwd();
        model.addAttribute("categories",categories);
        model.addAttribute("users",users);
        return "WEB-INF/adminjsp/admin_add_article";
    }

    @RequestMapping("/article/add/do")
    public String article_add_do(Article article){
        article.setPublish_time(new Date(System.currentTimeMillis()));
        articleService.insert_one_article(article);
        return "redirect:/admin/article/all";
    }

    @RequestMapping("/article/update/{aid}")
    public String article_add(@PathVariable("aid") int aid, Model model){
        List<Category> categories=categoryService.select_all();
        Article article=articleService.select_all_byaid(aid);
        model.addAttribute("categories",categories);
        model.addAttribute("article",article);
        return "WEB-INF/adminjsp/admin_update_article";
    }

    @RequestMapping("/article/update/do/{aid}")
    public String article_update_do(@PathVariable("aid") int aid,Article article){
        article.setAid(aid);
        articleService.update_one_article(article);
        return "redirect:/admin/article/all";
    }

    @RequestMapping("/article/delete/do/{aid}")
    public String article_delete_do(@PathVariable("aid") int aid){
        articleService.delete_one_article(aid);
        return "redirect:/admin/article/all";
    }


    @RequestMapping("/login/form")
    public String login_form(){
        return "WEB-INF/adminjsp/admin_login";
    }

    @RequestMapping("/login/judge")
    public String login(HttpSession session, String user_name, String user_password){
        if ((user_name!=null&&user_name!="")&&(user_password!=null&&user_password!="")){
            User user=userService.select_by_name(user_name);
            if((user_name.equals(user.getUser_name()))&&(user_password.equals(user.getUser_password()))&&user.getUid()==1){
                session.setAttribute("userLoginInfo",user_name);
                return "redirect:/admin/article/all";
            }else {
                return "redirect:/admin/login/form";
            }
        }else {
            return "redirect:/admin/login/form";
        }
    }

}
