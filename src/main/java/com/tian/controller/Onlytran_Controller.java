package com.tian.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Onlytran_Controller {
    @RequestMapping("/about")
    public String to_about(){
        return "jsp/about";
    }

    @RequestMapping("/resource")
    public String to_resource(){
        return "jsp/unfinish";
    }

    @RequestMapping("/timeline")
    public String to_timeline(){
        return "jsp/timeline";
    }

    @RequestMapping("/unfinish")
    public String to_unfinish(){
        return "jsp/unfinish";
    }


}
