package com.sise.service;

import com.sise.dao.FoodDao;
import com.sise.pojo.Category;
import com.sise.pojo.Food;
import com.sise.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.*;

@Service
public class FoodServiceImpl implements FoodService {



    @Autowired
    private FoodDao foodDao;
    @Autowired
    private CategoryService categoryService;

    @Override
    public List<Food> findByTitleLikeOrDescriptionLike(String title,String description) {
        List<Food> foodList = foodDao.findByTitleLikeOrDescriptionLike(title,description);
        return foodList;
    }

    @Override
    public List<Food> findByUid(Long id) {
        return foodDao.findByUserUid(id);
    }

    @Override
    public void delete(Long fid) {
        foodDao.deleteById(fid);
    }

    public String upload(MultipartFile img){
        //1. 目标路径
        //获取项目运行的路径
        String realPath = this.getClass().getResource("/").getPath()+"static/upload";
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

    @Override
    public void update(Food food, MultipartFile uploadImg, MultipartFile uploadImgdetail) {
        Food updatefood = foodDao.findById(food.getFid()).get();
        updatefood.setTitle(food.getTitle());
        updatefood.setCid(food.getCid());
        updatefood.setDescription(food.getDescription());
        if (!uploadImg.isEmpty()) {
            String img = "upload/"+upload(uploadImg);
            updatefood.setImg(img);
        }
        if (!uploadImgdetail.isEmpty()) {
            String imgDetail = "upload/"+upload(uploadImgdetail);
            updatefood.setImgdetail(imgDetail);
        }
        updatefood.setTime(new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new Date()));
        foodDao.save(updatefood);
    }



    @Override
    public Food getOne(Long fid) {
        return foodDao.getOne(fid);
    }



    @Override
    public List<Food> findAll() {
        List<Food> foodList = foodDao.findAll();

        return foodList;
    }

    @Override
    public void save(Food food) {
        foodDao.save(food);
    }


}
