<%--
  Created by IntelliJ IDEA.
  User: tian
  Date: 2020/6/28
  Time: 12:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>所有文章</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<h1>文章管理</h1>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>
                        显示所有文章
                    </small>
                </h1>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4 column">
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/admin/article/add">新增文章</a>
            </div>
        </div>

    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>文章编号</tr>
                <tr>文章标题</tr>
                <tr>文章类别</tr>
                <tr>文章作者</tr>
                <tr>文章发表时间</tr>
                <tr>操作</tr>
                </thead>
                <tbody>
                <c:forEach var="article" items="${articles}">
                    <tr>
                        <td>${article.aid}</td>
                        <td>${article.title}</td>
                        <td>${article.category.cname}</td>
                        <td>${article.user.user_name}</td>
                        <td>${article.publish_time}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/admin/article/update/${article.aid}">修改</a>
                            &nbsp; | &nbsp;
                            <a href="${pageContext.request.contextPath}/admin/article/delete/do/${article.aid}">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

</div>
</body>
</html>