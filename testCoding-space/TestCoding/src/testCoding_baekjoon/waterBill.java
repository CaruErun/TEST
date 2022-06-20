package testCoding_baekjoon;

import java.util.Scanner;

public class waterBill {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int x = sc.nextInt();
		int[] y = new int[3];
		int xbill, ybill, answer;
		for(int i=0;i<3;i++) y[i] = sc.nextInt();
		int joi = sc.nextInt();
		
		xbill=x*joi;
		ybill=y[0]+((joi>y[1]) ? ((joi-y[1])*y[2]) : 0);
		
		answer = (xbill<=ybill) ? xbill : ybill;
		
		System.out.println(answer);
		
		

	}

}
