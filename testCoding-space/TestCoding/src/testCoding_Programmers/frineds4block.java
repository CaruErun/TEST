package testCoding_Programmers;

import java.util.Arrays;

public class frineds4block {
	public static void main(String[] args) {
		int m = 6;
		int n = 6;
		String[] board = {"TTTANT", "RRFACC", "RRRFCC", "TRRRAA", "TTMMMF", "TMMTTJ"};
		char[][] boardC = new char[m][n];
		
		int[][] check = new int[m][n];
		for(int i=0;i<m;i++) Arrays.fill(check[i], 0);
		
		int count =0;
		
		for(int i=0;i<m;i++) {
			for(int j=0;j<n;j++) boardC[i][j] = board[i].charAt(j);
		}
		
		for(int i=0;i<m;i++) {
			
			for(int j=0;j<n;j++) {
				boardC[i][j] = board[i].charAt(j);
				if((i+1)!=m && boardC[i][j]==board[i+1].charAt(j)) {
					
				}
			}
		}
		
		
	}
	public static int oc() {
		return 1;
	}
}
