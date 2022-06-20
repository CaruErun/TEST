package testCoding_Programmers;

import java.util.Arrays;
import java.util.LinkedList;
import java.util.Queue;

public class Cashe {
	public static void main(String[] args) {
		int cacheSize = 0;
		Queue<String> que = new LinkedList<>();
		
		String[] cities = 	{"Jeju", "Pangyo", "Seoul", "NewYork", "LA", "Jeju", "Pangyo", "Seoul", "NewYork", "LA"};
		int cache = 0;
		for(int i=0;i<cities.length;i++) {
			if(que.contains(cities[i].toLowerCase())) {
				cache +=1;
				que.remove(cities[i].toLowerCase());
				que.offer(cities[i].toLowerCase());
			}
			else {
				cache+=5;
				if(cacheSize!=0) {
				if(que.size()==cacheSize) {
					que.poll();
					que.offer(cities[i].toLowerCase());
				}
				else que.offer(cities[i].toLowerCase());
				}
			}
			
		}
		System.out.println(cache);
	}
}
