package com.qianluohan.web;

import com.qianluohan.po.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpSession;

/**
* @author zhangyibing  zhangyibing@bmsoft.com.cn
* @Date 2019/11/20
* @desription 
**/
@Controller
public class IndexController {

    @GetMapping("/")
    public String index2(HttpSession session){
        User user = new User();
        user.setAvatar("xxx");
        user.setNickName("zyb");
        session.setAttribute("user", user);
        return "index";
    }
    @GetMapping("/blog")
    public String blog(){
        System.out.println("-----blog------");
        return "admin/login";
    }

    @GetMapping("/type")
    public String type(){
        System.out.println("-----type------");
        return "type";
    }

    @GetMapping("/about")
    public String about(){
        System.out.println("-----about------");
        return "about";
    }

    @GetMapping("/archives")
    public String archives(){
        System.out.println("-----archives------");
        return "archives";
    }

    @GetMapping("/tags")
    public String tags(){
        System.out.println("-----tags------");
        return "tags";
    }

}
