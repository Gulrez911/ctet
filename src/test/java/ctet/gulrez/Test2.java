package ctet.gulrez;

import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.io.FileUtils;


public class Test2 {

	public static void main(String[] args) throws Exception {

//		List<String> answers = new ArrayList<>();
		File file = new File("D:\\GulDoc\\1questions.txt");
		LinkedList<String> answers = (LinkedList<String>) extractAnswers(file);
		String ss = FileUtils.readFileToString(file, StandardCharsets.UTF_8);
		int c0unt2 = 1;
		for (int i = 1; i <= answers.size(); i++) {

			String q = ss.substring(ss.indexOf(i + "."), ss.indexOf(("(a)"))).trim().replace("\n", "").replace("\r", " ");
			String a1 = ss.substring(ss.indexOf("(a)"), ss.indexOf(("(b)"))).trim().replace("\n", "").replace("\r", " ");
			String b1 = ss.substring(ss.indexOf("(b)"), ss.indexOf(("(c)"))).trim().replace("\n", "").replace("\r", " ");
			String c1 = ss.substring(ss.indexOf("(c)"), ss.indexOf("(d)")).trim().replace("\n", "").replace("\r", " ");
			String d1 = "";
			if (i == answers.size()) {
				d1 = ss.substring(ss.indexOf("(d)"), ss.indexOf("KEY")).trim().replace("\n", "").replace("\r", " ");
			} else {
				d1 = ss.substring(ss.indexOf("(d)"), ss.indexOf(i + 1 + ".")).trim().replace("\n", "").replace("\r", " ");
			}
			String right = getRightAnswer(i, answers);
			System.out.println("////////     "+right);
//		String  temp = ss.substring(   ss.indexOf(i+3+")"), ss.indexOf(i+1+")")         );
			System.out.println("  ...  " + q);
			System.out.println("  ...  " + a1);
			System.out.println("  ...  " + b1);
			System.out.println("  ...  " + c1);
			System.out.println("  ...  " + d1 + "\n");
			c0unt2++;
			if (i == 84) {
				System.out.println("..................................");
			}
			if (c0unt2 <= answers.size()) {
				ss = ss.substring(ss.indexOf(c0unt2 + "."), ss.length()).trim();
			}
		}

//		int s = ss.length();
//		int sss = ss.indexOf("KEY");
//		String result = ss.substring(ss.indexOf("KEY") + 5, ss.length());
//		System.out.println(result);   
//		System.out.println("......................");
//
//		String pattern = "\\d{1,3}[	]\\d";
//		Pattern p = Pattern.compile(pattern);
//		Matcher matcher = p.matcher(result);
//		int count = 0;
//		while (matcher.find()) {
//			int start = matcher.start();
//			int end = matcher.end();
//			answers.add(result.substring(start, end));
//
//			count++;
//			 System.out.println("found: " + count +"- "+result.substring(start, end));
//
//		}
//		System.out.println(answers);

	}

	public static List<String> extractAnswers(File file) throws Exception {
		LinkedList<String> answers = new LinkedList<>();
		String ss = FileUtils.readFileToString(file, StandardCharsets.UTF_8);
		String result = ss.substring(ss.indexOf("KEY") + 5, ss.length()).replaceAll("\\s", "");
		String pattern = "\\d{1,3}{1,}([a-d])";
//		String pattern = "\\d{1,2}([\\.])[ ]{1,}[(]([a-d])[)]";
		Pattern p = Pattern.compile(pattern);
		Matcher matcher = p.matcher(result);
		int count = 0;
		while (matcher.find()) {
			int start = matcher.start();
			int end = matcher.end();
			answers.add(result.substring(start, end));
			count++;
			// System.out.println("found: " + count +"- "+text.substring(start, end));

		}
		System.out.println("         " + count);
		return answers;
	}

	private static String getRightAnswer(int quesNo, List<String> answers) throws Exception {
		String temp2 = "";
		for (int i = 0; i < answers.size(); i++) {

			String temp = answers.get(i);
			temp = temp.substring(temp.length() - 1);
			if (quesNo == i + 1) {

				if (temp.equals("a")) {
					temp2 = "Choice 1";
				} else if (temp.equals("b")) {
					temp2 = "Choice 2";
				} else if (temp.equals("c")) {
					temp2 = "Choice 3";
				} else if (temp.equals("d")) {
					temp2 = "Choice 4";
				} else {
//					throw new AssessmentGenericException("Problem - no right answer");
				}
			}

		}
//		System.out.println("....                     "+temp2);
		return temp2;
	}
}
