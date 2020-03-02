package com.qianluohan.dao;

import com.qianluohan.po.User;
import org.springframework.data.jpa.repository.JpaRepository;

/**
* @auther zhangyibing  zhangyibing@bmsoft.com.cn
* @Date 2020/2/1
* @desription 
**/
public interface UserRepository extends JpaRepository<User, Long> {

    User findByUsernameAndPassword(String username, String password);

}
