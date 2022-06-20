package testCoding_baekjoon;

import java.util.Arrays;
import java.util.Scanner;

public class minsuGold {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int ni = sc.nextInt();
		
		String n = String.valueOf(ni);
		char[] temp = new char[n.length()];
		Arrays.fill(temp, '4');
		

				
		if(Integer.parseInt(n)<Integer.parseInt(String.valueOf(temp))) {
			char[] answer = new char[n.length()-1];
			Arrays.fill(answer, '7');
			
			System.out.println(String.valueOf(answer));
			
		}else {
			char[] answer = new char[n.length()];
			Arrays.fill(answer, '7');
			for(int i=1;i<(Math.pow(2, n.length()));i++) {
				if(ni>=Integer.parseInt(String.valueOf(answer))) break;
				
				for(int j=0;j<n.length();j++) {
					if(i % Math.pow(2, j)==0) {
						if(answer[answer.length-1-j]=='7') answer[answer.length-1-j] = '4';
						else answer[answer.length-1-j] = '7';
					}
				}
			}
			
			System.out.println(Integer.parseInt(String.valueOf(answer)));
		}

		
		
	}
	
	
}
