package com.springapp.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

/**
 * Created by alexander on 11/1/15.
 */

@Controller
public class UploadFileController {

	@RequestMapping(value="/upload", method=RequestMethod.POST)
	public ModelAndView handleFileUpload(/*@RequestParam("name1") String name1,*/
	                                             @RequestParam("file1") final MultipartFile file1,
	                                             /*@RequestParam("name2") String name2,*/
	                                             @RequestParam("file2") MultipartFile file2) throws IllegalStateException, IOException {
		ModelAndView model = new ModelAndView("main");

		if (!file1.isEmpty()) {
			try {
				byte[] bytes1 = file1.getBytes();
				BufferedOutputStream stream1 =
						new BufferedOutputStream(new FileOutputStream(new File("File1")));
				stream1.write(bytes1);
				stream1.close();
				model.addObject("file1Message", "Ok!");
			} catch (Exception e) {
				model.addObject("file1Message", "Fail: " + e.getMessage());
			}
		} else {
			model.addObject("file1Message", "Fail! Empty file!");
		}

		if (!file2.isEmpty()) {
			try {
				byte[] bytes2 = file2.getBytes();
				BufferedOutputStream stream2 =
						new BufferedOutputStream(new FileOutputStream(new File("File2")));
				stream2.write(bytes2);
				stream2.close();
				model.addObject("file2Message", "Ok!");
			} catch (Exception e) {
				model.addObject("file2Message", "Fail: " + e.getMessage());
			}
		} else {
			model.addObject("file2Message", "Fail! Empty file!");
		}
		return model;
	}

}
