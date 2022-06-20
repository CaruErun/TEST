package testCoding_baekjoon;

import java.util.Scanner;

public class roomAssign {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int p = sc.nextInt();
		int room = sc.nextInt();
		int[][] person = new int[6][2];
		
		int gender=0, grade=0;
		int count=0;
		for(int i=0;i<p;i++) {
			for(int j=0;j<2;j++) {
				if(j==0) gender = sc.nextInt();
				else {
					grade = sc.nextInt();
					person[grade-1][gender]++;
					if(person[grade-1][gender]>room) {
						person[grade-1][gender]-=room;
						count++;
					}
				}
			}
		}
		for(int i=0;i<6;i++) {
			for(int j=0;j<2;j++) {
				if(person[i][j]>0) count++;
			}
		}
		System.out.println(count);
	}

}
