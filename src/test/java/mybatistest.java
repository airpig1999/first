import com.tian.pojo.Article;
import com.tian.pojo.Category;
import com.tian.pojo.Comment;
import com.tian.pojo.User;
import com.tian.service.ArticleService;
import com.tian.service.CategoryService;
import com.tian.service.CommentService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.sql.Date;
import java.sql.Timestamp;

public class mybatistest {


    @Test
    public void test2(){
        ApplicationContext context =new ClassPathXmlApplicationContext("applicationcontext.xml");
        ArticleService bookServiceImpl = (ArticleService) context.getBean("ArticleServiceImpl");
        for (Article books : bookServiceImpl.select_not_content()) {
            System.out.println(books);
        }
    }

    @Test
    public void test3(){
        ApplicationContext context =new ClassPathXmlApplicationContext("applicationcontext.xml");
        ArticleService bookServiceImpl = (ArticleService) context.getBean("ArticleServiceImpl");

            System.out.println(bookServiceImpl.select_all_byaid(1));

    }

    @Test
    public void test4(){
        ApplicationContext context =new ClassPathXmlApplicationContext("applicationcontext.xml");
        CategoryService bookServiceImpl = (CategoryService) context.getBean("CategoryServiceImpl");
        for (Category books : bookServiceImpl.select_all()) {
            System.out.println(books);
        }
    }

    @Test
    public void test5(){
        ApplicationContext context =new ClassPathXmlApplicationContext("applicationcontext.xml");
        ArticleService bookServiceImpl = (ArticleService) context.getBean("ArticleServiceImpl");
        Article article=new Article();
        article.setUid(1);
        article.setCid(6);
        article.setCode("pr1");
        article.setContent("内容");
        article.setTitle("标题");
        article.setPreface("前言");
        article.setPublish_time(new Date(System.currentTimeMillis()));
        bookServiceImpl.insert_one_article(article);
    }

    @Test
    public void test6(){
        ApplicationContext context =new ClassPathXmlApplicationContext("applicationcontext.xml");
        CommentService commentService = (CommentService) context.getBean("CommentServiceImpl");
        User user=new User();
        user.setUid(2);
        Comment comment=new Comment();
        comment.setComment_content("这是评论5");
        comment.setUser(user);
        comment.setAid(1);
        comment.setComment_time(new Timestamp(System.currentTimeMillis()));
        commentService.insert_one_comment(comment);
    }

}
