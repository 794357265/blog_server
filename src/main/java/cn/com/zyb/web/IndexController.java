package cn.com.zyb.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

/**
* @author zhangyibing  zhangyibing@bmsoft.com.cn
* @Date 2019/11/20
* @desription 
**/
@Controller
public class IndexController {

    @GetMapping("/")
    public String index2(){
        System.out.println("-----index2------");
        return "index";
    }
    @GetMapping("/blog")
    public String blog(){
        System.out.println("-----blog------");
        return "blog";
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
