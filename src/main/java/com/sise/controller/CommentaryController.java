package com.sise.controller;

import com.sise.dao.CommentaryDao;
import com.sise.dao.FoodDao;
import com.sise.pojo.*;
import com.sise.service.CategoryService;
import com.sise.service.CommentaryService;
import com.sise.service.FoodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Controller
public class CommentaryController {

    @Autowired
    private CommentaryDao commentaryDao;
    @Autowired
    private FoodDao foodDao;

    @Autowired
    private CommentaryService commentaryService;

    @RequestMapping("/commentaryIndex")
    private String commentaryIndex(Model model) {
        Food food = foodDao.getOne(31l);
        model.addAttribute("food",food);
        return "commentary";

    }

    @ResponseBody
    @RequestMapping("/addCommentary")
    private Result addCommentary(Commentary commentary) {
        System.out.println(commentary);
        commentaryService.insert(commentary);
        return new Result("200","响应成功");
    }
}
