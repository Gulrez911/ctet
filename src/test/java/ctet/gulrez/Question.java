package ctet.gulrez;

import java.io.File;
import java.io.IOException;

import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.text.PDFTextStripper;

public class Question {

	public static void main(String[] args) throws IOException {

		File file = new File("D:\\CTET\\2018 PAPER 2 MAIN question.pdf");
		PDDocument doc = PDDocument.load(file);

		// load a PDF file
		System.out.println(file.getName() + ",,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,");
		int pages = doc.getNumberOfPages();
		PDFTextStripper stripper = new PDFTextStripper();
		for (int i = 2; i <= pages; i++) {
			stripper.setStartPage(i);
			stripper.setEndPage(i);
			String text = stripper.getText(doc);
			System.out.println(text);

		}

//		}
	}

}
