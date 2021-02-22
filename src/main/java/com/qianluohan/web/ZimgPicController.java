package com.qianluohan.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.websocket.server.PathParam;

/**
* @author zhangyibing  zhangyibing618@163.com
* @Date 2021/2/22
* @desription
**/
@Controller
public class ZimgPicController {

    @RequestMapping("/zimg/getPic/{id}")
    public void getPicById(@PathVariable String id){

    }

}
