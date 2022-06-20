package testCoding_Programmers;

public class classcar {
	public static void main(String[] args) {
		int[] prices = {7,6,5,5,5,5,5,5};
		int answer=0;
		int min=1000001;
		int max=0;
		int sum=0;
		for(int i = 0;i<prices.length;i++) {
			max = Math.max(prices[i], max);
			if(min>prices[i] && i!=(prices.length-1)) {
				min = Math.min(prices[i], min);
				max=-1;
			}
			if((max-min)>sum) sum=(max-min);
		}
		answer=sum;
		System.out.println(answer);
	}
}
