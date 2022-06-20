package testCoding_Programmers;

import java.util.Arrays;

public class dartGame {

	public static void main(String[] args) {
		String dartResult = "10S10S10S";
		
		String[] dartGameS = dartResult.split("\\D+");
		String[] dartGameI = dartResult.split("[0-9]");
		System.out.println(Arrays.toString(dartGameS));
		System.out.println(Arrays.toString(dartGameI));
		int[] dartGameScore = new int[3];
		int answer = 0;
		int c = 0;
		for(int i=0;i<3;i++) {
			while(dartGameI[i+c].isEmpty())  c++;
			if(dartGameI[i+c].indexOf("S")!=-1) dartGameScore[i] = Integer.parseInt(dartGameS[i]);
			if(dartGameI[i+c].indexOf("D")!=-1) dartGameScore[i] = (int) Math.pow(Integer.parseInt(dartGameS[i]), 2);
			if(dartGameI[i+c].indexOf("T")!=-1) dartGameScore[i] = (int) Math.pow(Integer.parseInt(dartGameS[i]), 3);
			if(i==0 && dartGameI[i+c].indexOf("*")!=-1) dartGameScore[i]*=2;
			else if(i!=0 && dartGameI[i+c].indexOf("*")!=-1) {
				System.out.println("i : " + i);
				dartGameScore[i-1] *=2;
				dartGameScore[i] *=2;
			}
			if(dartGameI[i+c].indexOf("#")!=-1) dartGameScore[i]*=-1;
		}
		for(int i=0;i<3;i++) {
			System.out.println(dartGameScore[i]);
			answer+=dartGameScore[i];
		}
		System.out.println(answer);

	}

}
