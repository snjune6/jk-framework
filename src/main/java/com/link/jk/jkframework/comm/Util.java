package com.link.jk.jkframework.comm;

import com.link.jk.jkframework.dto.FileDto;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Util {



	public static void echo(Object object) {
		System.out.println(object);
	}

	public static Timestamp getJkTimestamp() {
		Timestamp timestamp = new Timestamp(System.currentTimeMillis());
		return timestamp;
	}

	public static List<FileDto> MultiUpload(MultipartFile[] uploadFile, String basePath) throws IOException {
		List<FileDto> list = new ArrayList<>();

		for(MultipartFile file : uploadFile) {
			if(!file.isEmpty()) {
				FileDto fileDto = new FileDto();
				fileDto.setOriginalfileName(file.getOriginalFilename());
				fileDto.setFileSize(file.getSize());
				fileDto.setFileType(file.getContentType());

				SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyMMdd");
				SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("HHmmSS");
				String current_date = simpleDateFormat.format(new Date());
				String current_date2 = simpleDateFormat2.format(new Date());

				fileDto.setFilePath(current_date + File.separator);
				fileDto.setFileName(current_date2 + "");

				File pathDir = new File(basePath + fileDto.getFilePath());

				if(!pathDir.exists()) {
					pathDir.mkdirs();
				}

				list.add(fileDto);

				File newFileName = new File(fileDto.getFilePath() + fileDto.getFileName() + "_" +fileDto.getOriginalfileName());

				file.transferTo(newFileName);
			}
		}
		return list;
	}

}
