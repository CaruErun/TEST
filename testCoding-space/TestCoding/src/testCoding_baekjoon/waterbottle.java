package testCoding_baekjoon;

public class waterbottle {

	public static void main(String[] args) {
		int i=0;
		int count=0;
		int[] c = new int[10];
		int ccount=0;
		for(i=1000000;i>5;i=i/5) {
			if(i%5!=0) c[ccount]=i%5;
			count = count + i%5;
			ccount++;
		}
		count = count + i%5;
		c[ccount]=i%5;
		System.out.println(count);
		for(i=0;i<10;i++) System.out.println(c[i]);
		
		
	}
	


}
