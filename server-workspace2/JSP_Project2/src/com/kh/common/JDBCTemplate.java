package com.kh.common;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class JDBCTemplate {
	//1.Connection 객체 생성(DB 접속) 한 후 해당 Connection을 반환하는 메소드
	
	public static Connection getConnection() {
		
		//Map 계열 컬렉션 (key -value)
		Properties prop = new Properties();
		
		//읽어들이고자 하는 driver.properties 파일 물리적 경로
		//실질적으로 배포되는 폴더는 WebContent이기때문에 src/db/driver/driver.properties로 읽으면 안된다
		//WebContent/WEB-INF/classes에 있는 파일을 읽기 때문
		String fileName = JDBCTemplate.class.getResource("/db/driver/driver.properties").getPath();
		
		try {
			prop.load(new FileInputStream(fileName));
		} catch (FileNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		
		//1) jdbc driver 등록
		Connection conn=null;
		try {
			//Class.forName("oracle.jdbc.driver.OracleDricver");
			Class.forName(prop.getProperty("driver"));
			//conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SERVER","SERVER");
			conn=DriverManager.getConnection(prop.getProperty("url"),
					prop.getProperty("username"),prop.getProperty("password"));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
	//2.전달받은 Connection 객체를 가지고 commit 해주는 메소드
	public static void commit(Connection conn) {
		try {
			if(conn!=null&&!conn.isClosed()) {
				conn.commit();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	//3.전달받은 Connection 객체를 가지고 rollback 해주는 메소드
	public static void rollback(Connection conn) {
		try {
			if(conn!=null&&!conn.isClosed()) {
				conn.rollback();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	//4.전달받은 Connection 객체를 반납시켜주는 메소드
	public static void close(Connection conn) {
		try {
			if(conn!=null&&!conn.isClosed()) {
				conn.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	//5.전달받은 Statement 객체를 반납시켜주는 메소드
	public static void close(Statement stmt) {
		try {
			if(stmt!=null&&!stmt.isClosed()) {
				stmt.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	//6.전달받은 ResultSet 객체를 반납시켜주는 메소드
	public static void close(ResultSet rset) {
		try {
			if(rset!=null&&!rset.isClosed()) {
				rset.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
