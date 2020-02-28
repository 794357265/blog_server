package cn.com.zyb.web.admin;

import cn.com.zyb.po.Blog;
import cn.com.zyb.po.User;
import cn.com.zyb.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/admin")
public class BlogController {

    @Autowired
    private BlogService blogService;

    @GetMapping("/blogs")
    public String blogs(@PageableDefault(size = 2, sort = {"updateTime"}, direction = Sort.Direction.DESC) Pageable pageable
                        , Blog blog, Model model, HttpSession session) {
        model.addAttribute("page", blogService.listBlog(pageable, blog));

        User user = new User();
        user.setAvatar("xxx");
        user.setNickName("zyb");
        session.setAttribute("user", user);
        return "admin/blogs";
    }

}
