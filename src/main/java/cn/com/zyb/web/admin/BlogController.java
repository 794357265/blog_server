package cn.com.zyb.web.admin;

import cn.com.zyb.po.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/admin")
public class BlogController {

    @GetMapping("/blogs")
    public String blogs(HttpSession session) {
        User user = new User();
        user.setAvatar("xxx");
        user.setNickName("zyb");

        session.setAttribute("user", user);
        return "admin/blogs";
    }

}
