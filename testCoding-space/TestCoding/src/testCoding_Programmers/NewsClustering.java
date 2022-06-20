package testCoding_Programmers;

import java.util.Arrays;
import java.util.regex.Pattern;

public class NewsClustering {

	public static void main(String[] args) {
		String str1 = "abbbc";
		String str2 = "cbbe";
		int answer=0;
		
		str1 = str1.toLowerCase();
		str2 = str2.toLowerCase();
	
		String[] str11 = new String[str1.length()-1];
		String[] str22 = new String[str2.length()-1];

		int countStr1 = 0, countStr2 = 0, ins=0, union, count=0;
		int length = (str11.length>=str22.length) ? str11.length : str22.length;
		String[] insStr = new String[length-1];
		for(int i=0;i<length;i++) {
			if(i<str11.length) {
				str11[i] = str1.substring(i,i+2);
				if(str11[i].matches("^[a-z]?[0-9\\W_]+[a-z]?")) {
					countStr1++;
					str11[i]="0";
				}
			}
			if(i<str22.length) {
				str22[i] = str2.substring(i,i+2);
				if(str22[i].matches("^[a-z]?[0-9\\W_]+[a-z]?")) {
					countStr2++;
					str22[i]="0";
				}
			}
		}
		for(int i=0;i<str11.length;i++) {
			for(int j=0;j<str22.length;j++) {
				if(str11[i]=="0") break;
				if(str11[i].equals(str22[j])) {
					str22[j]="1";
					ins++;
					break;
				}
			}
		}
		union = (str11.length-countStr1)+(str22.length-countStr2)-ins;
		System.out.println(ins);
		System.out.println(union);
		double temp = ((double)ins/(double)union)*65536;
		answer = (int)temp;
		System.out.println(temp);
		System.out.println(answer);
		

	}

}
