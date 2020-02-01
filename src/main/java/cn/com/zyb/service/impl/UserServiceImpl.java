package cn.com.zyb.service.impl;

import cn.com.zyb.dao.UserRepository;
import cn.com.zyb.po.User;
import cn.com.zyb.service.UserService;
import cn.com.zyb.util.MD5Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public User checkUser(String username, String password) {
        User user = userRepository.findByUsernameAndPassword(username, MD5Utils.code(password));
        return user;
    }
}
