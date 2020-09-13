<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: tian
  Date: 2020/6/23
  Time: 22:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; Charset=UTF-8">
  <meta http-equiv="Content-Language" content="zh-CN">
  <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
  <title>含光 - 一个菜鸟程序员的个人博客网站</title>
  <link rel="shortcut icon" href="./images/Logo_40.png" type="image/x-icon">
  <!--Layui-->
  <link href="./plug/layui/css/layui.css" rel="stylesheet" />
  <!--font-awesome-->
  <link href="./plug/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
  <!--全局样式表-->
  <link href="./css/global.css" rel="stylesheet" />
  <!-- 本页样式表 -->
  <link href="./css/home.css" rel="stylesheet" />
    <script>
        function sclick(aid) {
            window.location.href="${pageContext.request.contextPath}/detail/"+aid;
        }
    </script>
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
    <a class="blog-logo" href="${pageContext.request.contextPath}/home">含光</a>
    <!-- 导航菜单 -->
    <ul class="layui-nav" lay-filter="nav">
      <li class="layui-nav-item layui-this">
        <a href="${pageContext.request.contextPath}/home"><i class="fa fa-home fa-fw"></i>&nbsp;网站首页</a>
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
  <!-- canvas -->
  <canvas id="canvas-banner" style="background: #393D49;"></canvas>
  <!--为了及时效果需要立即设置canvas宽高，否则就在home.js中设置-->
  <script type="text/javascript">
    var canvas = document.getElementById('canvas-banner');
    canvas.width = window.document.body.clientWidth - 10;//减去滚动条的宽度
    if (screen.width >= 992) {
      canvas.height = window.innerHeight * 1 / 3;
    } else {
      canvas.height = window.innerHeight * 2 / 7;
    }
  </script>
  <!-- 这个一般才是真正的主体内容 -->
  <div class="blog-container">
    <div class="blog-main">
      <!-- 网站公告提示 -->
      <div class="home-tips shadow">
        <i style="float:left;line-height:17px;" class="fa fa-volume-up"></i>
        <div class="home-tips-container">
          <span style="color: #009688">欢迎大家！</span>
          <span style="color: red">网站可以评论，人人都可以回复！</span>
          <span style="color: #009688">含光 &nbsp;—— &nbsp;一个菜鸟程序员的个人博客，网站采用Layui为前端框架，ssm为后端架构目前正在建设中！</span>
        </div>
      </div>
      <!--左边文章列表-->
      <div class="blog-main-left">

        <c:forEach var="article" items="${articles}">

          <div class="article shadow" onclick="sclick(${article.aid})">
            <div class="article-left">
              <img src="./images/cover/201703181909057125.jpg" alt="基于laypage的layui扩展模块（pagesize.js）！" />
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
      <!--右边小栏目-->
      <div class="blog-main-right">
        <div class="blogerinfo shadow">
          <div class="blogerinfo-figure">
            <img src="./images/Absolutely.jpg" alt="Absolutely" />
          </div>
          <p class="blogerinfo-nickname">无问西东</p>
          <p class="blogerinfo-introduce">一个并蛋</p>
          <p class="blogerinfo-introduce">追风赶月莫停留，平芜尽处是青山</p>
          <p class="blogerinfo-location"><i class="fa fa-location-arrow"></i>&nbsp;广西 - 柳州</p>
          <hr />
          <div class="blogerinfo-contact">
            <a target="_blank" title="QQ交流" href="${pageContext.request.contextPath}/unfinish"><i class="fa fa-qq fa-2x"></i></a>
            <a target="_blank" title="给我写信" href="${pageContext.request.contextPath}/unfinish"><i class="fa fa-envelope fa-2x"></i></a>
            <a target="_blank" title="新浪微博" href="${pageContext.request.contextPath}/unfinish"><i class="fa fa-weibo fa-2x"></i></a>
            <a target="_blank" title="码云" href="${pageContext.request.contextPath}/unfinish"><i class="fa fa-git fa-2x"></i></a>
          </div>
        </div>
        <div></div><!--占位-->

        <div class="blog-module shadow">
          <div class="blog-module-title">一路走来</div>
          <dl class="footprint">
            <dt>2020年06月29日</dt>
            <dd>网站初步完成</dd>
          </dl>
        </div>
        <div class="blog-module shadow">
          <div class="blog-module-title">友情链接</div>
          <ul class="blogroll">
            <li><a target="_blank" href="http://www.layui.com/" title="Layui">Layui</a></li>
          </ul>
        </div>
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
  <li class="layui-nav-item layui-this">
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
<script src="./plug/layui/layui.js"></script>
<!-- 全局脚本 -->
<script src="./js/global.js"></script>
<!-- 本页脚本 -->
<script src="./js/home.js"></script>
</body>
</html>
