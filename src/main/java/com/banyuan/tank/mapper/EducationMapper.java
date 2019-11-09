package com.banyuan.tank.mapper;

import com.banyuan.tank.domain.Education;

import java.util.List;

/**
 * @author huangmingyang
 */
public interface EducationMapper {

    /**
     * 添加内容
     * 向表输入内容
     * insertUser 插入接口方法
     *
     * user Education 类型
     */
    void insertUser(Education user);

    /**
     * 查询方法
     * @return
     */
    List<Education> findAll();


}
