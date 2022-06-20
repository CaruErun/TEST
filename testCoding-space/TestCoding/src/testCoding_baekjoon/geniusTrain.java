package testCoding_baekjoon;

import java.util.Scanner;

public class geniusTrain {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int sum=0;
		int answer=0;
		int n=0;
		for(int i=1;i<=8;i++) {
			n = sc.nextInt();
			sum = sum + ((i%2==1) ? (n*-1) : n);
			if(sum>answer) answer=sum;
		}

	}

}
