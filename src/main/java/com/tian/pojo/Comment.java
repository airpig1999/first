package com.tian.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Comment {
    int aid;
    int comment_id;
    String comment_content;
    Timestamp comment_time;
    User user;
}
