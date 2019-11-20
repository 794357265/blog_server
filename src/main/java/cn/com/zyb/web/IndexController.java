package cn.com.zyb.web;

import cn.com.zyb.NotFoundException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

/**
* @auther zhangyibing  zhangyibing@bmsoft.com.cn
* @Date 2019/11/20
* @desription 
**/
@Controller
public class IndexController {

    @GetMapping("/{id}/{name}")
    public String index(@PathVariable Integer id,@PathVariable String name){
//        int i = 9/0;
//        String blog = null;
//        if (null == blog){
//            throw new NotFoundException("博客不存在");
//        }
        System.out.println("-----index------");
        return "index";
    }

}
