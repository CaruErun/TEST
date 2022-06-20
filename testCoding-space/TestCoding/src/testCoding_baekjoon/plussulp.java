package testCoding_baekjoon;

import java.util.Scanner;

public class plussulp {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		String x = String.valueOf(sc.nextInt());
		String y = String.valueOf(sc.nextInt());
		
		
//		int max = (x.length()>=y.length()) ? x.length() : y.length();
//		int min = (x.length()<=y.length()) ? x.length() : y.length();
//		int sw = (x.length()<=y.length()) ? 1 : 0;
//
//		for(int i=0;i<(max-min);i++) {
//			if(sw==1) x+="0";
//			if(sw==0) y+="0";
//		}
		
		String answer="";
		String RevX = "";
		String RevY = "";
		
		for(int i=(x.length()-1);i>=0;i--) RevX +=x.charAt(i);
		for(int i=(y.length()-1);i>=0;i--) RevY +=y.charAt(i);
		answer = String.valueOf(Integer.parseInt(RevX)+Integer.parseInt(RevY));
		StringBuffer rewna = new StringBuffer(answer);
		answer = rewna.reverse().toString();
		System.out.println(Integer.parseInt(answer));
		
	}
}
