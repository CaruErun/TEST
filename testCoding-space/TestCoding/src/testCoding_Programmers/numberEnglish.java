package testCoding_Programmers;

public class numberEnglish {

	public static void main(String[] args) {
		int num = 23785131;
		String numS = String.valueOf(num);
		char[] numC = numS.toCharArray();
		String answer = "";
		for(int i=0;i<numC.length;i++) {
			switch(numC[i]) {
			case '0' : answer+="zero"; break;
			case '1' : answer+="one"; break;
			case '2' : answer+="two"; break;
			case '3' : answer+="three"; break;
			case '4' : answer+="four"; break;
			case '5' : answer+="five"; break;
			case '6' : answer+="six"; break;
			case '7' : answer+="seven"; break;
			case '8' : answer+="eieght"; break;
			case '9' : answer+="nine"; break;
			}
		}
		System.out.println(answer);
	}

}
