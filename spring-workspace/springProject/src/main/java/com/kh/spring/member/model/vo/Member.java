package com.kh.spring.member.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;


/*
 * lombok
 * - 자동 코드 생성 라이브러리
 * - 반복 getter, setter, toString 등의 메소드 작성 코드 줄여주는 코드 라이브러리
 * - 코드 라이브러리
 * 
 * lombok 설치 방법
 * 1. 라이브러리 다운 후 적용(Maven pom.xml)
 * 2. 다운로드된 jar파일 찾아 설치(작업할 IDE 선택)
 * 3. IDE 재실행
 * 
 * lombok 주의 사항
 *  - 앞 글자가 소문자 외자인 필드명은 사용 불가(필드명은 소문자 두글자 이상으로 시작해야함.) / getter Method 사용 시 소/대문자로 경계선을 나누기 때문
 *  - 
 *  
 */
@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
@ToString
@Data // 위에 있는 메소드를 포함하는 
public class Member {
	private String userId;
	private String userPwd;
	private String userName;
	private String email;
	private String gender;
	private String age;
	private String phone;
	private String address;
	private Date enrollDate;
	private Date modifyDate;
	private String status;
	
}
