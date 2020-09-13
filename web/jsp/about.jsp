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
    <title>含光 - 关于本站</title>
    <link rel="shortcut icon" href="./images/Logo_40.png" type="image/x-icon">
    <!--Layui-->
    <link href="./plug/layui/css/layui.css" rel="stylesheet" />
    <!--font-awesome-->
    <link href="./plug/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <!--全局样式表-->
    <link href="./css/global.css" rel="stylesheet" />
    <!-- 本页样式表 -->
    <link href="./css/about.css" rel="stylesheet" />
</head>
<body>
<!-- 导航 -->
<nav class="blog-nav layui-header">
    <div class="blog-container">
        <!-- QQ互联登陆 -->
        <a href="${pageContext.request.contextPath}/unfinish" class="blog-user">
        </a>
        <a href="${pageContext.request.contextPath}/unfinish" class="blog-user layui-hide">
        </a>
        <!-- 不落阁 -->
        <a class="blog-logo" href="${pageContext.request.contextPath}/">含光</a>
        <!-- 导航菜单 -->
        <ul class="layui-nav" lay-filter="nav">
            <li class="layui-nav-item">
                <a href="${pageContext.request.contextPath}/"><i class="fa fa-home fa-fw"></i>&nbsp;网站首页</a>
            </li>
            <li class="layui-nav-item">
                <a href="${pageContext.request.contextPath}/article/all"><i class="fa fa-file-text fa-fw"></i>&nbsp;文章专栏</a>
            </li>
            <li class="layui-nav-item">
                <a href="${pageContext.request.contextPath}/resource"><i class="fa fa-tags fa-fw"></i>&nbsp;资源分享</a>
            </li>
            <li class="layui-nav-item">
                <a href="${pageContext.request.contextPath}/timeline"><i class="fa fa-hourglass-half fa-fw"></i>&nbsp;点点滴滴</a>
            </li>
            <li class="layui-nav-item layui-this">
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
            <a><cite>关于本站</cite></a>
        </blockquote>
        <div class="blog-main">
            <div class="layui-tab layui-tab-brief shadow" lay-filter="tabAbout">
                <ul class="layui-tab-title">
                    <li lay-id="1">关于博客</li>
                    <li lay-id="2">关于作者</li>
                    <li lay-id="3" id="frinedlink">友情链接</li>
                </ul>
                <div class="layui-tab-content">
                    <div class="layui-tab-item">
                        <div class="aboutinfo">
                            <div class="aboutinfo-figure">
                                <img src="./images/Logo_100.png" alt="含光" />
                            </div>
                            <p class="aboutinfo-nickname">含光</p>
                            <p class="aboutinfo-introduce">一个并蛋程序员的个人博客，记录博主学习和成长之路</p>
                            <p class="aboutinfo-location"><i class="fa fa-link"></i>&nbsp;&nbsp;<a target="_blank" href="http://www.answer.top">www.answer.top</a></p>
                            <hr />
                            <div class="aboutinfo-contact">
                                <a target="_blank" title="网站首页" href="${pageContext.request.contextPath}/"><i class="fa fa-home fa-2x" style="font-size:2.5em;position:relative;top:3px"></i></a>
                                <a target="_blank" title="文章专栏" href="${pageContext.request.contextPath}/article/all"><i class="fa fa-file-text fa-2x"></i></a>
                                <a target="_blank" title="资源分享" href="${pageContext.request.contextPath}/resource"><i class="fa fa-tags fa-2x"></i></a>
                                <a target="_blank" title="点点滴滴" href="${pageContext.request.contextPath}/timeline"><i class="fa fa-hourglass-half fa-2x"></i></a>
                                <a target="_blank" title="后台管理" href="${pageContext.request.contextPath}/admin/login/form"><i class="layui-icon-username"></i></a>
                            </div>

                            <fieldset class="layui-elem-field layui-field-title">
                                <legend>简介</legend>
                                <div class="layui-field-box aboutinfo-abstract">
                                    <p style="text-align:center;">含光是一个由ssm开发的个人博客网站，诞生于2020年6月29日，暂且称为含光1.0。</p>
                                    <h1>第一个版本</h1>
                                    <p>诞生的版本，采用ssm作为后台框架，前端几乎自己手写，在github上使用他人基于layui的前端模板</p>
                                    <h1>当前版本</h1>
                                    <p>纯粹使用jsp作为前端，没有使用json和ajax</p>
                                    <h1 style="text-align:center;">The End</h1>
                                </div>
                            </fieldset>
                        </div>
                    </div><!--关于网站End-->
                    <div class="layui-tab-item">
                        <div class="aboutinfo">
                            <div class="aboutinfo-figure">
                                <img src="./images/Absolutely.jpg" alt="Absolutely" />
                            </div>
                            <p class="aboutinfo-nickname">无问西东</p>
                            <p class="aboutinfo-introduce">一枚并蛋程序员</p>
                            <p class="aboutinfo-location"><i class="fa fa-location-arrow"></i>&nbsp;广西 - 柳州</p>
                            <hr />
                            <div class="aboutinfo-contact">
                                <a target="_blank" title="QQ交流" href="${pageContext.request.contextPath}/unfinish"><i class="fa fa-qq fa-2x"></i></a>
                                <a target="_blank" title="给我写信" href="${pageContext.request.contextPath}/unfinish"><i class="fa fa-envelope fa-2x"></i></a>
                                <a target="_blank" title="新浪微博" href="${pageContext.request.contextPath}/unfinish"><i class="fa fa-weibo fa-2x"></i></a>
                                <a target="_blank" title="码云" href="${pageContext.request.contextPath}/unfinish"><i class="fa fa-git fa-2x"></i></a>
                            </div>
                            <fieldset class="layui-elem-field layui-field-title">
                                <legend>简介</legend>
                                <div class="layui-field-box aboutinfo-abstract abstract-bloger">
                                    <p style="text-align:center;">一个后浪下面的韭浪，目前是一个学生，更系一个并蛋。</p>
                                    <h1>个性签名</h1>
                                    <p>追风赶月莫停留，平芜尽处是青山</p>
                                    <h1>个人介绍</h1>
                                    <p>一个没有故事的男同学，没什么介绍......</p>
                                    <h1 style="text-align:center;">The End</h1>
                                </div>
                            </fieldset>
                        </div>
                    </div><!--关于作者End-->
                    <div class="layui-tab-item">
                        <div class="aboutinfo">
                            <div class="aboutinfo-figure">
                                <img src="./images/handshake.png" alt="友情链接" />
                            </div>
                            <p class="aboutinfo-nickname">友情链接</p>
                            <p class="aboutinfo-introduce">Name：含光&nbsp;&nbsp;&nbsp;&nbsp;Site：www.anwser.top</p>
                            <p class="aboutinfo-location">
                                <i class="fa fa-close"></i>经常宕机&nbsp;
                                <i class="fa fa-close"></i>不合法规&nbsp;
                                <i class="fa fa-close"></i>插边球站&nbsp;
                                <i class="fa fa-close"></i>红标报毒&nbsp;
                                <i class="fa fa-check"></i>原创优先&nbsp;
                                <i class="fa fa-check"></i>技术优先
                            </p>
                            <hr />
                            <div class="aboutinfo-contact">
                                <p style="font-size:2em;">互换友链，携手并进！</p>
                            </div>
                            <fieldset class="layui-elem-field layui-field-title">
                                <legend>Friend Link</legend>
                                <div class="layui-field-box">
                                    <ul class="friendlink">
                                        <li>
                                            <a target="_blank" href="http://www.layui.com/" title="Layui" class="friendlink-item">
                                                <p class="friendlink-item-pic"><img src="http://www.layui.com/favicon.ico" alt="Layui" /></p>
                                                <p class="friendlink-item-title">Layui</p>
                                                <p class="friendlink-item-domain">layui.com</p>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </fieldset>
                        </div>
                    </div><!--友情链接End-->
                    <div class="layui-tab-item">
                        <div class="aboutinfo">
                            <div class="aboutinfo-figure">
                                <img src="./images/messagewall.png" alt="留言墙" />
                            </div>
                            <p class="aboutinfo-nickname">留言墙</p>
                            <p class="aboutinfo-introduce">本页面可留言、吐槽、提问。欢迎灌水，杜绝广告！</p>
                            <p class="aboutinfo-location">
                                <i class="fa fa-clock-o"></i>&nbsp;<span id="time"></span>
                            </p>
                            <hr />
                            <div class="aboutinfo-contact">
                                <p style="font-size:2em;">沟通交流，拉近你我！</p>
                            </div>
                            <fieldset class="layui-elem-field layui-field-title">
                                <legend>Leave a message</legend>
                                <div class="layui-field-box">
                                    <div class="leavemessage" style="text-align:initial">
                                        <form class="layui-form blog-editor" action="">
                                            <div class="layui-form-item">
                                                <textarea name="editorContent" lay-verify="content" id="remarkEditor" placeholder="请输入内容" class="layui-textarea layui-hide"></textarea>
                                            </div>
                                            <div class="layui-form-item">
                                                <button class="layui-btn" lay-submit="formLeaveMessage" lay-filter="formLeaveMessage">提交留言</button>
                                            </div>
                                        </form>
                                        <ul class="blog-comment">
                                            <li>
                                                <div class="comment-parent">
                                                    <img src="./images/Logo_40.png" alt="含光" />
                                                    <div class="info">
                                                        <span class="username">含光</span>
                                                    </div>
                                                    <div class="content">
                                                        我为大家做了模拟留言与回复！试试吧！
                                                    </div>
                                                    <p class="info info-footer"><span class="time">2017-03-18 18:09</span><a class="btn-reply" href="javascript:;" onclick="btnReplyClick(this)">回复</a></p>
                                                </div>
                                                <hr />
                                                <div class="comment-child">
                                                    <img src="./images/Absolutely.jpg" alt="Absolutely" />
                                                    <div class="info">
                                                        <span class="username">Absolutely</span><span>这是用户回复内容</span>
                                                    </div>
                                                    <p class="info"><span class="time">2017-03-18 18:26</span></p>
                                                </div>
                                                <div class="comment-child">
                                                    <img src="./images/Absolutely.jpg" alt="Absolutely" />
                                                    <div class="info">
                                                        <span class="username">Absolutely</span><span>这是第二个用户回复内容</span>
                                                    </div>
                                                    <p class="info"><span class="time">2017-03-18 18:26</span></p>
                                                </div>
                                                <!-- 回复表单默认隐藏 -->
                                                <div class="replycontainer layui-hide">
                                                    <form class="layui-form" action="">
                                                        <div class="layui-form-item">
                                                            <textarea name="replyContent" lay-verify="replyContent" placeholder="请输入回复内容" class="layui-textarea" style="min-height:80px;"></textarea>
                                                        </div>
                                                        <div class="layui-form-item">
                                                            <button class="layui-btn layui-btn-mini" lay-submit="formReply" lay-filter="formReply">提交</button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </fieldset>
                        </div>
                    </div><!--留言墙End-->
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 底部 -->
<footer class="blog-footer">
    <p><span>Copyright</span><span>&copy;</span><span>2017</span><a href="http://www.answer.top">含光</a><span>Design By TXY</span></p>
</footer>
<!--侧边导航-->
<ul class="layui-nav layui-nav-tree layui-nav-side blog-nav-left layui-hide" lay-filter="nav">
    <li class="layui-nav-item">
        <a href="${pageContext.request.contextPath}/"><i class="fa fa-home fa-fw"></i>&nbsp;网站首页</a>
    </li>
    <li class="layui-nav-item">
        <a href="${pageContext.request.contextPath}/article/all"><i class="fa fa-file-text fa-fw"></i>&nbsp;文章专栏</a>
    </li>
    <li class="layui-nav-item">
        <a href="${pageContext.request.contextPath}/resource"><i class="fa fa-tags fa-fw"></i>&nbsp;资源分享</a>
    </li>
    <li class="layui-nav-item">
        <a href="${pageContext.request.contextPath}/timeline"><i class="fa fa-road fa-fw"></i>&nbsp;点点滴滴</a>
    </li>
    <li class="layui-nav-item layui-this">
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
<script src="./plug/layui/layui.js"></script>
<!-- 全局脚本 -->
<script src="./js/global.js"></script>
<!-- 本页脚本 -->
<script src="./js/about.js"></script>
</body>
</html>
