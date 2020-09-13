<%--
  Created by IntelliJ IDEA.
  User: tian
  Date: 2020/5/1
  Time: 21:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; Charset=UTF-8">
    <meta http-equiv="Content-Language" content="zh-CN">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <title>含光 - 文章专栏</title>
    <link rel="shortcut icon" href="../images/Logo_40.png" type="image/x-icon">
    <!--Layui-->
    <link href="../plug/layui/css/layui.css" rel="stylesheet" />
    <!--font-awesome-->
    <link href="../plug/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <!--全局样式表-->
    <link href="../css/global.css" rel="stylesheet" />
    <!--本页样式表-->
    <link href="../css/article.css" rel="stylesheet" />
</head>
<body>
<!-- 导航 -->
<nav class="blog-nav layui-header">
    <div class="blog-container">
        <!-- QQ互联登陆 -->
        <a href="javascript:;" class="blog-user">
            <i class="fa fa-qq"></i>
        </a>
        <a href="${pageContext.request.contextPath}/unfinish" class="blog-user layui-hide">
        </a>
        <!-- 不落阁 -->
        <a class="blog-logo" href="${pageContext.request.contextPath}/home">含光</a>
        <!-- 导航菜单 -->
        <ul class="layui-nav" lay-filter="nav">
            <li class="layui-nav-item">
                <a href="${pageContext.request.contextPath}/home"><i class="fa fa-home fa-fw"></i>&nbsp;网站首页</a>
            </li>
            <li class="layui-nav-item layui-this">
                <a href="${pageContext.request.contextPath}/article/all"><i class="fa fa-file-text fa-fw"></i>&nbsp;文章专栏</a>
            </li>
            <li class="layui-nav-item">
                <a href="${pageContext.request.contextPath}/resource"><i class="fa fa-tags fa-fw"></i>&nbsp;资源分享</a>
            </li>
            <li class="layui-nav-item">
                <a href="${pageContext.request.contextPath}/timeline"><i class="fa fa-hourglass-half fa-fw"></i>&nbsp;点点滴滴</a>
            </li>
            <li class="layui-nav-item">
                <a href="${pageContext.request.contextPath}/about"><i class="fa fa-info fa-fw"></i>&nbsp;关于本站</a>
            </li>
        </ul>
        <!-- 手机和平板的导航开关 -->
        <a class="blog-navicon" href="javascript:;">
            <i class="fa fa-navicon"></i>
        </a>
    </div>
</nav>
<!-- 主体（一般只改变这里的内容） -->
<div class="blog-body">
    <div class="blog-container">
        <blockquote class="layui-elem-quote sitemap layui-breadcrumb shadow">
            <a href="${pageContext.request.contextPath}/" title="网站首页">网站首页</a>
            <a href="${pageContext.request.contextPath}/article/all"><cite>文章专栏</cite></a>
        </blockquote>
        <div class="blog-main">
            <div class="blog-main-left">
                <c:forEach items="${articles}" var="article">
                    <div class="article shadow">
                        <div class="article-left">
                            <img src="../images/cover/201703181909057125.jpg" alt="基于laypage的layui扩展模块（pagesize.js）！" />
                        </div>
                        <div class="article-right">
                            <div class="article-title">
                                <a href="${pageContext.request.contextPath}/detail/${article.aid}">${article.title}</a>
                            </div>
                            <div class="article-abstract">
                                ${article.preface}
                            </div>
                        </div>
                        <div class="clear"></div>
                        <div class="article-footer">
                            <span><i class="fa fa-clock-o"></i>&nbsp;&nbsp;${article.publish_time}</span>
                            <span class="article-author"><i class="fa fa-user"></i>&nbsp;&nbsp;${article.user.user_name}</span>
                            <span><i class="fa fa-tag"></i>&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/article/${article.cid}">${article.category.cname}</a></span>
                            <span class="article-viewinfo"><i class="fa fa-eye"></i>&nbsp;${article.page_view}</span>
                            <span class="article-viewinfo"><i class="fa fa-commenting"></i>&nbsp;${article.comments.size()}</span>
                        </div>
                    </div>
                </c:forEach>


            </div>
            <div class="blog-main-right">
                <div class="blog-search">
                </div>
                <div class="article-category shadow">
                    <div class="article-category-title">分类导航</div>
                    <c:forEach var="category" items="${categorys}">
                        <a href="${pageContext.request.contextPath}/article/${category.cid}">${category.cname}</a>
                    </c:forEach>
                    <div class="clear"></div>
                </div>

                <!--右边悬浮 平板或手机设备显示-->
                <div class="category-toggle"><i class="fa fa-chevron-left"></i></div>
            </div>
            <div class="clear"></div>
        </div>
    </div>
</div>
<!-- 底部 -->
<footer class="blog-footer">
    <p><span>Copyright</span><span>&copy;</span><span>2020</span><a href="http://www.answer.top">含光</a><span>Design By TXY</span></p>
</footer>
<!--侧边导航-->
<ul class="layui-nav layui-nav-tree layui-nav-side blog-nav-left layui-hide" lay-filter="nav">
    <li class="layui-nav-item">
        <a href="${pageContext.request.contextPath}/"><i class="fa fa-home fa-fw"></i>&nbsp;网站首页</a>
    </li>
    <li class="layui-nav-item layui-this">
        <a href="${pageContext.request.contextPath}/article/all"><i class="fa fa-file-text fa-fw"></i>&nbsp;文章专栏</a>
    </li>
    <li class="layui-nav-item">
        <a href="${pageContext.request.contextPath}/resource"><i class="fa fa-tags fa-fw"></i>&nbsp;资源分享</a>
    </li>
    <li class="layui-nav-item">
        <a href="${pageContext.request.contextPath}/timeline"><i class="fa fa-road fa-fw"></i>&nbsp;点点滴滴</a>
    </li>
    <li class="layui-nav-item">
        <a href="${pageContext.request.contextPath}/about"><i class="fa fa-info fa-fw"></i>&nbsp;关于本站</a>
    </li>
</ul>
<!--分享窗体-->
<div class="blog-share layui-hide">
    <div class="blog-share-body">
        <div style="width: 200px;height:100%;">
            <div class="bdsharebuttonbox">
                <a class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a>
                <a class="bds_weixin" data-cmd="weixin" title="分享到微信"></a>
                <a class="bds_sqq" data-cmd="sqq" title="分享到QQ好友"></a>
            </div>
        </div>
    </div>
</div>
<!--遮罩-->
<div class="blog-mask animated layui-hide"></div>
<!-- layui.js -->
<script src="../plug/layui/layui.js"></script>
<!-- 全局脚本 -->
<script src="../js/global.js"></script>
</body>
</html>
