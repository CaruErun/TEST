package testCoding_baekjoon;

import java.util.Scanner;

public class fibonacci {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int n = sc.nextInt();
		int sum=0,a=0,b=1,temp=0;
		if(n==1) sum=1;
		for(int i=1;i<n;i++) {
			sum=a+b;
			a=b;
			b=sum;

		}
		
		System.out.println(sum);

	}

}
