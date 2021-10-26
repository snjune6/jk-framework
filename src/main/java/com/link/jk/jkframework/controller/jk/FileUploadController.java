package com.link.jk.jkframework.controller.jk;

import com.link.jk.jkframework.comm.Util;
import com.link.jk.jkframework.dto.FileDto;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value = "/jk-framework/upload")
public class FileUploadController {

	@Value("${spring.servlet.multipart.location}")
	private String basePath;

	@GetMapping("")
	public String uploadForm(HttpServletRequest request, HttpServletResponse response, Model model) {

		FileDto fileDto = new FileDto();
		model.addAttribute("fileDto", fileDto);

		return "jk/upload/form";
	}

	@PostMapping("")
	public String uploadAction(@RequestParam MultipartFile[] uploadFile, HttpServletRequest request, HttpServletResponse response, Model model) throws IOException {

		List<FileDto> list = new ArrayList<>();

		list = Util.MultiUpload(uploadFile, basePath);

		model.addAttribute("files", list);

		return "jk/upload/result";
	}

}
