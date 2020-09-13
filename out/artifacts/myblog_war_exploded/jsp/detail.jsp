<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: tian
  Date: 2020/5/1
  Time: 21:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <!-- 比较好用的代码着色插件 -->
    <link href="../css/prettify.css" rel="stylesheet" />
    <!-- 本页样式表 -->
    <link href="../css/detail.css" rel="stylesheet" />
</head>
<body>
<!-- 导航 -->
<nav class="blog-nav layui-header">
    <div class="blog-container">
        <!-- QQ互联登陆 -->
        <a href="${pageContext.request.contextPath}/unfinish" class="blog-user">
            <i class="fa fa-qq"></i>
        </a>
        <a href="javascript:;" class="blog-user layui-hide">
            <img src="../images/Absolutely.jpg" alt="Absolutely" title="Absolutely" />
        </a>
        <!-- 不落阁 -->
        <a class="blog-logo" href="${pageContext.request.contextPath}/home">含光</a>
        <!-- 导航菜单 -->
        <ul class="layui-nav" lay-filter="nav">
            <li class="layui-nav-item">
                <a href="${pageContext.request.contextPath}/home"><i class="fa fa-home fa-fw"></i>&nbsp;网站首页</a>
            </li>
            <li class="layui-nav-item  layui-this">
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
            <a href="${pageContext.request.contextPath}/article/all" title="文章专栏">文章专栏</a>
            <a><cite>${article.title}</cite></a>
        </blockquote>
        <div class="blog-main">
            <div class="blog-main-left">
                <!-- 文章内容（使用Kingeditor富文本编辑器发表的） -->
                <div class="article-detail shadow">
                    <div class="article-detail-title">
                        ${article.title}
                    </div>
                    <div class="article-detail-info">
                        <span>编辑时间：${article.publish_time}</span>
                        <span>作者：${article.user.user_name}</span>
                        <span>浏览量：${article.page_view}</span>
                    </div>
                    <div class="article-detail-content">
                        <p style="text-align:center;">
                            <strong><span style="font-size:18px;">这波啊，这波我在大气层</span></strong>
                        </p>
                        <p style="text-align:center;">
                            <strong>
                                    <span style="font-size:18px;">
                                        <br />
                                    </span>
                            </strong>
                        </p>

                        <p style="text-align:left;">
                            <br />
                        </p>
                        <hr />
                        <p>
                            <br />
                        </p>
                        <div style="text-align:center;">
                            &nbsp; &nbsp; <span style="color:#EE33EE;">前言</span>：${article.preface}
                        </div>
                        <hr />
                        <p>
                            <br />
                        </p>
                        <p>
                            &nbsp;&nbsp;&nbsp;&nbsp;${article.content}
                        </p>

                        <p>
                            <br />
                        </p>
                        <p>
                            &nbsp; &nbsp; 代码如下：
                        </p>
                        <pre class="prettyprint linenums lang-js">${article.code}</pre>

                        <p>
                            <br />
                        </p>


                        <hr />
                        <p>
                            <br />
                        </p>
                        <p>
                            &nbsp; &nbsp; 点赞含光：<a href="${pageContext.request.contextPath}/unfinish" target="_blank"><span style="color:#337FE5;">点击前往</span></a>&nbsp; &nbsp; 完整演示请看后台：<span><a href="${pageContext.request.contextPath}/unfinish" target="_blank"><span style="color:#337FE5;">点击前往</span></a></span>&nbsp; &nbsp; pagesize.js下载地址：<a href="${pageContext.request.contextPath}/unfinish" target="_blank"><span style="color:#337FE5;">点击前往</span></a>
                        </p>
                        <hr />
                        &nbsp; &nbsp; 出自：含光
                        <p>
                            &nbsp; &nbsp; 地址：<a href="http://www.answer.top" target="_blank">www.answer.top</a>
                        </p>
                        <p>
                            <br />
                        </p>
                    </div>
                </div>
                <!-- 评论区域 -->
                <div class="blog-module shadow" style="box-shadow: 0 1px 8px #a6a6a6;">
                    <fieldset class="layui-elem-field layui-field-title" style="margin-bottom:0">
                        <legend>来说两句吧</legend>
                        <div class="layui-field-box">
                            <form class="layui-form blog-editor" action="${pageContext.request.contextPath}/comment/insert/${article.aid}" method="post">
                                <div class="layui-form-item">
                                    <textarea name="comment_content" lay-verify="content" id="remarkEditor" placeholder="请输入内容" class="layui-textarea layui-hide"></textarea>
                                </div>
                                <div class="layui-form-item">
                                    <button class="layui-btn" lay-submit lay-filter="formDemo">提交评论</button>
                                </div>
                            </form>
                        </div>
                    </fieldset>
                    <div class="blog-module-title">最新评论</div>
                    <ul class="blog-comment">
                        <c:forEach var="comment" items="${article.comments}">
                            <li>
                                <div class="comment-parent">
                                    <img src="../images/Absolutely.jpg" alt="absolutely" />
                                    <div class="info">
                                        <span class="username">${comment.user.user_name}</span>
                                        <span class="time">${comment.comment_time}</span>
                                    </div>
                                    <div class="content">
                                        ${comment.comment_content}
                                    </div>
                                </div>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
            <div class="blog-main-right">
                <!--右边悬浮 平板或手机设备显示-->
                <div class="category-toggle"><i class="fa fa-chevron-left"></i></div><!--这个div位置不能改，否则需要添加一个div来代替它或者修改样式表-->
                <div class="article-category shadow">
                    <div class="article-category-title">分类导航</div>
                    <!-- 点击分类后的页面和artile.html页面一样，只是数据是某一类别的 -->
                    <c:forEach var="category" items="${categorys}">
                        <a href="${pageContext.request.contextPath}/article/${category.cid}">${category.cname}</a>
                    </c:forEach>
                    <div class="clear"></div>
                </div>
            </div>
            <div class="clear"></div>
        </div>
    </div>
</div>
<!-- 底部 -->
<footer class="blog-footer">
    <p><span>Copyright</span><span>&copy;</span><span>2017</span><a href="http://www.answer.top">含光</a><span>Design By LY</span></p>
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
<!-- 自定义全局脚本 -->
<script src="../js/global.js"></script>
<!-- 比较好用的代码着色插件 -->
<script src="../js/prettify.js"></script>
<!-- 本页脚本 -->
<script src="../js/detail.js"></script>
</body>
</html>
