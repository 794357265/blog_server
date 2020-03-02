package com.qianluohan.dao;

import com.qianluohan.po.Blog;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

public interface BlogRespsitory extends JpaRepository<Blog, Long>, JpaSpecificationExecutor<Blog> {



}
