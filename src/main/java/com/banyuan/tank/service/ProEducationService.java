package com.banyuan.tank.service;


import com.banyuan.tank.domain.Education;
import com.banyuan.tank.mapper.EducationMapper;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/**
 * @author huangmingyang
 */
public class ProEducationService {


    public static void getSelect() {
        String jdbc = "mybatis.config.xml";
        InputStream inputStream = null;
        try {
            inputStream = Resources.getResourceAsStream(jdbc);

            SqlSession sqlSession = new SqlSessionFactoryBuilder().build(inputStream).openSession(true);
            EducationMapper mapper = sqlSession.getMapper(EducationMapper.class);
            List<Education> users = mapper.findAll();
            for (Education user : users) {
                System.out.println(user);
            }

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void getInsert(Education user) {
//            Education user=new Education("gdfGdGg","fdSfDs","dfDgDg");
        String jdbc = "mybatis.config.xml";
        InputStream inputStream = null;
        try {
            inputStream = Resources.getResourceAsStream(jdbc);
            System.out.println(inputStream);
            SqlSession sqlSession = new SqlSessionFactoryBuilder().build(inputStream).openSession(true);
            System.out.println("=="+sqlSession);
            EducationMapper mapper = sqlSession.getMapper(EducationMapper.class);
            System.out.println(mapper);

            mapper.insertUser(user);

        } catch (IOException e) {
            e.printStackTrace();
        }
    }


}



