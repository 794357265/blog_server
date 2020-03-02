package com.qianluohan.service;

import com.qianluohan.po.User;

public interface UserService {

    User checkUser(String username, String password);
}
