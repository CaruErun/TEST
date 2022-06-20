package testCoding_baekjoon;

import java.util.Scanner;

public class kaisar {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		String str = sc.next();
		
		String answer = "";
		char[] temp = new char[str.length()];
		
		for(int i=0;i<str.length();i++) {
			if(str.charAt(i)-3 < 65) answer+=(char)(90-(67-str.charAt(i)));
			else answer += (char)(str.charAt(i)-3);
		}
		System.out.println(answer);
	}

}
