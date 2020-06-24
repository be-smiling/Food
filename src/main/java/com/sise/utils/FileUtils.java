package com.sise.utils;

import com.sise.service.FoodServiceImpl;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

public class FileUtils {
    public static String upload(MultipartFile img){
        //1. 目标路径
        //获取项目运行的路径
        String realPath = new Object(){}.getClass().getResource("/").getPath()+"static/upload";
        //判断该路径是否存在
        File realFile = new File(realPath);
        if(!realFile.exists()){
            realFile.mkdirs();
        }
        //2. 获取唯一的文件名称(包含扩展名)
        String uuidName = UUID.randomUUID().toString().replace("-", "");
        //获取扩展名: 获取文件名
        //获取真实的文件名
        String imgOriginalFilename = img.getOriginalFilename();
        //截取字符串，获取文件的扩展名
        String imgExtendName = imgOriginalFilename.substring(imgOriginalFilename.lastIndexOf("."));
        //唯一的文件名
        String imgFileName = uuidName + imgExtendName;
        //文件上传
        //transferTo: 执行文件上传
        //参数file：目录文件
        try {
            img.transferTo(new File(realFile, imgFileName));
        } catch (IOException e) {
            e.printStackTrace();
        }
        return imgFileName;
    }
}
