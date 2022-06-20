package testCoding_baekjoon;

import java.util.Arrays;
import java.util.Scanner;

public class kingchess {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		String king = sc.next();
		String rock = sc.next();
		char[] kingMove = king.toCharArray();
		char[] rockMove = rock.toCharArray();
		int n = sc.nextInt();
		for(int i=0;i<n;i++) {
			String button = sc.next();
			int[] move = {0,0};
			switch(button) {
			case "R" : move[0]=1;move[1]=0;break;
			case "L" : move[0]=-1;move[1]=0;break;
			case "B" : move[0]=0;move[1]=-1;break;
			case "T" : move[0]=0;move[1]=1;break;
			case "RT" : move[0]=1;move[1]=1;break;
			case "LT" : move[0]=-1;move[1]=1;break;
			case "RB" : move[0]=1;move[1]=-1;break;
			case "LB" : move[0]=-1;move[1]=-1;break;			
			}
			if(((int)kingMove[0]+move[0])<65 || ((int)kingMove[0]+move[0])>90 || 
					(Character.getNumericValue(kingMove[1])+move[1])<1 || (Character.getNumericValue(kingMove[1])+move[1])>8) {
				continue;
			}else{
			kingMove[0]=(char)((int)kingMove[0]+Character.getNumericValue(move[0]));
			kingMove[1]=(char)(Character.getNumericValue(kingMove[1])+move[1]);
			System.out.println(Character.getNumericValue(kingMove[1])+move[1]);
			System.out.println(Arrays.toString(kingMove));
			}
			
			
		}

	}

}
