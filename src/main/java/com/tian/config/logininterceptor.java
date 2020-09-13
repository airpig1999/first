package com.tian.config;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class logininterceptor implements HandlerInterceptor {
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        HttpSession session=request.getSession();

//        有session放行
        if (session.getAttribute("userLoginInfo")!=null){
            return true;
        }

//        已经在登录页面也放行,request.getRequestURI().contains("login")意思是看这个请求的地址有没有包含login关键字

        if (request.getRequestURI().contains("login")){
            return true;
        }

        request.getRequestDispatcher("/WEB-INF/adminjsp/admin_login.jsp").forward(request,response);
        return false;
    }

    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }

    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }
}
