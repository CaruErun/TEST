package com.kh.mybatis.common.template;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class Template {
		public static SqlSession getSqlSession() {
			//mybatis-config.xml 파일을 읽어 해당 DB에 접속 SqlSession 객체 생성 및 반환
			SqlSession sqlSession = null;
			
			//SqlSession 객체 생성 위해서는 SqlSessionFactory 객체가 필요
			//SqlSessionFactory 객체를 생서하기 위해서는 SqlSessionFactoryBuilder 객체가 필요
			String resource = "/mybatis-config.xml"; // /는 최상위 폴더
			try {
				InputStream inputStream = Resources.getResourceAsStream(resource);
				
//				SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
//				SqlSession session = sqlSessionFactory.openSession();
			//위의 두 문장을 아래 한 줄로 정리
				sqlSession = new SqlSessionFactoryBuilder().build(inputStream).openSession();
				
				
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			return sqlSession;
		}
}
