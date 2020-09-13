<%--
  Created by IntelliJ IDEA.
  User: tian
  Date: 2020/6/28
  Time: 12:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>新增文章</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>
                        新增文章
                    </small>
                </h1>
            </div>
        </div>


    </div>


    <form action="${pageContext.request.contextPath}/admin/article/add/do" method="post">
        <div class="form-group">
            <label for="uid">作者编号</label>
            <select class="form-control" id="uid" name="uid" required>
                <c:forEach items="${users}" var="user">
                    <option value="${user.uid}">${user.user_name}</option>
                </c:forEach>
            </select>
        </div>


        <div class="form-group">
            <label for="cid">文章类别</label>
            <select class="form-control" id="cid" name="cid" required>
                <c:forEach items="${categories}" var="category">
                    <option value="${category.cid}">${category.cname}</option>
                </c:forEach>
            </select>
        </div>

        <div class="form-group">
            <label for="title">文章标题</label>
            <input type="text" class="form-control" id="title" name="title" required>
        </div>


        <div class="form-group">
            <label for="preface">前言</label>
            <textarea class="form-control" rows="3"  id="preface" name="preface" required></textarea>
        </div>

        <div class="form-group">
            <label for="content">正文</label>
            <textarea class="form-control" rows="6" id="content" name="content"required></textarea>
        </div>

        <div class="form-group">
            <label for="code">代码</label>
            <textarea class="form-control" rows="6" id="code" name="code" required></textarea>
        </div>


        <button type="submit" class="btn btn-default">提交</button>
    </form>

</div>
</body>
</html>
