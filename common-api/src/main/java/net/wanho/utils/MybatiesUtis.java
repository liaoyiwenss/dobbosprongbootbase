package net.wanho.utils;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;

public class MybatiesUtis {



    static ThreadLocal<SqlSession> threadlocaL=new ThreadLocal<SqlSession>();
    static SqlSessionFactory sqlSessionFactory;
    static{
        InputStream is = null;
        try {
            is = Resources.getResourceAsStream("mybatisconfig1.xml");
        } catch (IOException e) {
            e.printStackTrace();
        }

        sqlSessionFactory = new SqlSessionFactoryBuilder().build(is);

    }


    public static SqlSession getSqlSession() {
        SqlSession sqlSession=threadlocaL.get();
        if(sqlSession==null)
        {
            sqlSession=sqlSessionFactory.openSession();
        }
        threadlocaL.set(sqlSession);
        return sqlSession;
    }


    public static void closesqlSession(){
        threadlocaL.remove();
    }
}
