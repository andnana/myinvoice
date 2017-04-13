package com.ligou4.action;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ligou4.util.ImageUtil;

@Controller
@Scope("prototype")
public class CreateImageAction 
	extends BaseAction {
	
	
	private InputStream imageStream;
	
	public String execute() {
		
		Map<String, BufferedImage> map = 
			ImageUtil.createImage();
		
		String key = 
			map.keySet().iterator().next();
		BufferedImage image = map.get(key);
		
		try {
			imageStream = 
				ImageUtil.getInputStream(image);
		} catch (IOException e) {
			e.printStackTrace();
			return "error";
		}
		
		session.put("imageCode", key);
		
		return "success";
	}

	public InputStream getImageStream() {
		return imageStream;
	}

	public void setImageStream(InputStream imageStream) {
		this.imageStream = imageStream;
	}

}
