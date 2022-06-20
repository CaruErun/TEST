package testCoding_Programmers;

import java.text.DecimalFormat;
import java.util.Arrays;

public class shuttleBus2 {

	public static void main(String[] args) {
		DecimalFormat deft = new DecimalFormat("");
		String[] timetable = 	{"09:10", "09:09", "08:00"};
		int ctime = 900;
		String answer="";
		int n = 2;
		int t = 10;
		int m = 2;
		
		int[] time = new int[timetable.length];
		int count=0;
		for(int i=0;i<timetable.length;i++) {
			time[i] = Integer.parseInt(timetable[i].replace(":", ""));
			if(time[i]>=0 && time[i]<=859) count++;
		}
		Arrays.sort(time);
		
		int crew = n*m;
		int plustime = (((int)Math.floor(((n-1)*t)/60))*100) + ((n-1)*t%60);
		
		int cctime = ctime + plustime;
		while((cctime%100)>59) {
			cctime=cctime-60;
			cctime=cctime+100;
		}
		
		
		if((crew>timetable.length && count==timetable.length) || time[0]>cctime) {
			ctime = cctime;
			if(ctime>=2400) ctime=ctime-2400;
			answer = String.valueOf(ctime);
		}
		
		else {
			int timeTemp = 0;
			if(count==timetable.length) timeTemp = time[0]-1;
			else if(count!=0 && count!=timetable.length) timeTemp = time[crew-1-count]-1;
			else timeTemp = time[crew-1]-1;
			if((timeTemp%100)==99) timeTemp=timeTemp-40;
			if(timeTemp>=2400) timeTemp = timeTemp-2400;
			answer = String.valueOf(timeTemp);
		}
		
		while(answer.length()!=4) answer=answer.format("0%s", answer);
		answer = answer.format("%s:%s", answer.substring(0, 2), answer.substring(2, 4));
		System.out.println(answer);
		System.out.println(Arrays.toString(time));

	}

}
