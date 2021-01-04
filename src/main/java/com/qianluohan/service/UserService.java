package com.qianluohan.service;


import com.qianluohan.po.User;

/**
* @auther zhangyibing  zhangyibing@bmsoft.com.cn
* @Date 2019/11/20
* @desription
**/
public interface UserService {

    User checkUser(String username, String password);
}
