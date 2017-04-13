package com.ligou4.util;

import java.io.File;
import java.io.FileFilter;

public class FileUtil {
	public static File[] NeedDeleteFiles(File file,final String suffix){
		File[] files = file.listFiles(new FileFilter(){
			public boolean accept(File f) {
				return f.isFile()&&
							f.getName().endsWith(suffix);
			}
		});
		return files;
	}
}
