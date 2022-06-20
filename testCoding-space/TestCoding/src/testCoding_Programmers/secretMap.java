package testCoding_Programmers;

import java.util.Arrays;

public class secretMap {

	public static void main(String[] args) {
		int n = 5;

		String[] answer = new String[n];
	
		int[] arr1 = {0,0,0,0,0};
		int[] arr2 = {30,1,21,17,28};
		
		
		
		for(int i=0;i<n;i++) {
			answer[i] = Integer.toBinaryString((arr1[i] | arr2[i]));
			if(answer[i].length()<n) {
				int temp = answer[i].length();
				for(int j=0;j<n-temp;j++) {
					answer[i]=" "+answer[i];
				}
			}
			answer[i] = answer[i].replaceAll("1", "#");
			answer[i] = answer[i].replaceAll("0", " ");
			

		}
		System.out.println(answer[1].length());
		System.out.println(Arrays.toString(answer));
		System.out.println(answer[1]);
		System.out.println(Integer.toBinaryString(2 | 64));
		

	}

}
