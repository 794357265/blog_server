package com.qianluohan.dao;

import com.qianluohan.po.User;
import org.springframework.data.jpa.repository.JpaRepository;

/**
* @auther zhangyibing  zhangyibing@bmsoft.com.cn
* @Date 2019/11/20
* @desription
**/
public interface UserRepository extends JpaRepository<User,Long> {

    User findByUsernameAndPassword(String username, String password);
}
