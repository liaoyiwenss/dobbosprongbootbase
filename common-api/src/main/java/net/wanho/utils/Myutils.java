package net.wanho.utils;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;

public class Myutils {
	
	private static SqlSessionFactory factory=null;
	static{
		InputStream is = null;
		try {
			is = Resources.getResourceAsStream("mybatisconfig.xml");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 factory = new SqlSessionFactoryBuilder().build(is);
	}
	
	public void closeSession(SqlSession session){
		session.close();
	}
	public static SqlSession getSession(){
		return factory.openSession(false);
	}
	
}
