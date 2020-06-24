package com.sise.controller;

import com.sise.pojo.Food;
import com.sise.pojo.Illustration;
import com.sise.service.FoodService;
import com.sise.service.IllustrationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Controller
public class IllustrationController {

    @Autowired
    private IllustrationService illustrationService;

    @Autowired
    private FoodService foodService;

    @RequestMapping("/illustrationImgUpload")
    @ResponseBody
    private Illustration illustrationImgUpload(@Param("file")MultipartFile file) {
        Illustration illustration = illustrationService.uploadImg(file);
        return illustration;
    }

    @RequestMapping("/illustrationUpdated")
    private String illustrationUpdated(Illustration illustration, BindingResult bindingResult) {
        illustrationService.update(illustration);
        return "redirect:/layout/layoutRight";
    }

    @RequestMapping("/illustrationUpdate")
    private String illustrationUpdate(Long iid, Model model) {
        Illustration illustration = illustrationService.findByIid(iid);
        model.addAttribute("illustration",illustration);
        return "admin/illustrationUpdate";
    }

    @RequestMapping("/illustration/makingList")
    private String makingList(Long iid, Model model) {
        Illustration illustration = illustrationService.findByIid(iid);
        List<Food> foodList = foodService.findByTitleLikeOrDescriptionLike("%"+illustration.getName()+"%", "%"+illustration.getName()+"%");
        model.addAttribute("foodList",foodList);
        model.addAttribute("illustration",illustration);
        return "makingList";
    }
}
