package cn.com.zyb.service;

import cn.com.zyb.po.User;

public interface UserService {

    User checkUser(String username, String password);
}
