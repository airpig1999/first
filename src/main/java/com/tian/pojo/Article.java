package com.tian.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Article {
    int aid;
    int uid;
    int cid;
    String content;
    String code;
    String title;
    String preface;
    Date publish_time;
    int page_view;
    Category category;
    User user;
    List<Comment> comments;
}
