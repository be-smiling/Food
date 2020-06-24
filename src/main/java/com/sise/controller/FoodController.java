package com.sise.controller;

import com.sise.pojo.*;
import com.sise.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Controller
public class FoodController {

    @Autowired
    private FoodService foodService;

    @Autowired
    private CategoryService categoryService;

    @Autowired
    private CommentaryService commentaryService;
    @Autowired
    private IllustrationService illustrationService;

    @Autowired
    private UserService userService;

    @RequestMapping("food/detail")
    private String foodDatail(Long fid, Model model) {
        Food food = foodService.getOne(fid);
        List<Commentary> commentaryList = commentaryService.findByFid(fid);
        model.addAttribute("food",food);
        model.addAttribute("commentaryList",commentaryList);
        return "foodDetail";
    }

    @RequestMapping("food/search")
    private String search(String title, Model model, HttpServletRequest request) {
        List<Food> foodList = foodService.findByTitleLikeOrDescriptionLike("%"+title+"%","%"+title+"%");
        model.addAttribute("foodList",foodList);
        model.addAttribute("title",title);
        return "searched";
    }

    @RequestMapping("food/userFoodList")
    private String index(Model model, HttpServletRequest request) {
        List<Food> foodList = foodService.findByUid(((User)request.getSession().getAttribute("user1")).getUid());
        model.addAttribute("foodList",foodList);
        return "foodList";
    }

    @RequestMapping("food/delete")
    private String delete(Long fid) {
        foodService.delete(fid);
        return "redirect:/food/userFoodList";
    }

    @RequestMapping("food/updated")
    private String updated(Food food, BindingResult bindingResult, @RequestParam("img") MultipartFile img, @RequestParam("imgdetail") MultipartFile imgdetail) {
        foodService.update(food,img,imgdetail);

        return "redirect:/food/userFoodList";
    }

    @RequestMapping("food/update")
    private String update(Long fid,Model model) {
        Food food = foodService.getOne(fid);
        List<Category> categoryList = categoryService.findAll();
        model.addAttribute("categoryList",categoryList);
        model.addAttribute("food",food);
        return "foodUpdate";
    }

    @RequestMapping("food/findAll")
    public String findAll(Model model) {
        List<Food> foodList = foodService.findAll();
        List<Illustration> illustrationList = illustrationService.findAll();
        model.addAttribute("foodList",foodList);
        model.addAttribute("illustrationList",illustrationList);
        return "index";
    }

    @RequestMapping("food/add")
    private String add(Model model) {
        List<Category> categoryList = categoryService.findAll();
        model.addAttribute("categoryList",categoryList);
        return "addFood";
    }

    @RequestMapping("food/added")
    private String added(Food food, BindingResult bindingResult, @RequestParam("img") MultipartFile img, @RequestParam("imgdetail") MultipartFile imgdetail, HttpServletRequest request, Model model) {

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
        String imgdetailOriginalFilename = imgdetail.getOriginalFilename();
        //截取字符串，获取文件的扩展名
        String imgExtendName = imgOriginalFilename.substring(imgOriginalFilename.lastIndexOf("."));
        String imgdetailExtendName = imgdetailOriginalFilename.substring(imgdetailOriginalFilename.lastIndexOf("."));
        //唯一的文件名
        String imgFileName = uuidName + imgExtendName;
        String imgdetailFileName = uuidName +"_detail" + imgdetailExtendName;
        //文件上传
        //transferTo: 执行文件上传
        //参数file：目录文件
        try {
            img.transferTo(new File(realFile, imgFileName));
            imgdetail.transferTo(new File(realFile, imgdetailFileName));
        } catch (IOException e) {
            e.printStackTrace();
        }
        food.setImg("upload/"+imgFileName);
        food.setImgdetail("upload/"+imgdetailFileName);
        User user = (User)(request.getSession().getAttribute("user1"));
        food.setUser(user);
        Date dNow = new Date( );
        SimpleDateFormat ft = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        food.setTime(ft.format(dNow));
        foodService.save(food);
        List<Food> foodList = foodService.findByUid(user.getUid());
        model.addAttribute("foodList",foodList);
        return "redirect:/food/userFoodList";

    }
}
