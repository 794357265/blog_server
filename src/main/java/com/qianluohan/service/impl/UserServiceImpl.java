package com.qianluohan.service.impl;

import com.qianluohan.dao.UserRepository;
import com.qianluohan.po.User;
import com.qianluohan.service.UserService;
import com.qianluohan.util.MD5Utils;
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
