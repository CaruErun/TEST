package testCoding_Programmers;

import java.util.Arrays;

public class getReportResult {

	public static void main(String[] args) {
		String[] id_list = {"muzi", "frodo", "apeach", "neo"};
		String[] report = {"muzi frodo","apeach frodo","frodo neo","muzi neo","apeach muzi"};
		int k = 2;
		int[] answer= new int[id_list.length];
		int[] reportCount = new int[id_list.length];
		int temp = 0, count = 0, sw=0;
		String repoter="",reportUser="";
		

		
		for(int i=0;i<report.length;i++) {
			if(report[i].equals("0")) continue;
			
			temp = report[i].indexOf(" ");
			repoter = report[i].substring(0,temp);
			reportUser = report[i].substring(temp+1, report[i].length());
			for(int j=i+1;j<report.length;j++) {
				if(report[i].equals(report[j])) report[j]="0";
			}
			
			for(int j=0;j<id_list.length;j++) {
				if(repoter.equals(id_list[j])) {
					report[i] = report[i].replace(repoter,String.valueOf(j));
					sw=1;
				}
				if(reportUser.equals(id_list[j])) {
					reportCount[j]++;
					if(reportCount[j]==k && sw==1) {
						for(int f=0;f<report.length;f++) {
							if(report[f].equals("0"))continue;
							temp = report[f].indexOf(" ");
							repoter = report[0].substring(0,temp);
							reportUser = report[i].substring(temp+1, report[i].length());
							if(id_list[j].equals(reportUser)) {
								answer[Integer.parseInt(repoter)]++;
							}
						}
					}
				}
			}
			sw=0;
		}
		
		System.out.println(Arrays.toString(answer));
		
	}

}

