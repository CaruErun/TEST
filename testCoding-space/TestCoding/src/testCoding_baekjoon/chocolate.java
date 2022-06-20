package testCoding_baekjoon;

import java.util.Scanner;

public class chocolate {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int n = sc.nextInt();
		int m = sc.nextInt();
		
		int max = (m>=n) ? m : n;
		int min = (m<n) ? m : n;
		
		System.out.println((min-1)+(max-1)*min);

	}
	
}
