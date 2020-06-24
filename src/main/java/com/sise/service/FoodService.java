package com.sise.service;

import com.sise.pojo.Category;
import com.sise.pojo.Food;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface FoodService {
    List<Food> findAll();
    void save(Food food);

    Food getOne(Long fid);
    void update(Food food, MultipartFile img, MultipartFile imgdetail);
    void delete(Long fid);
    List<Food> findByUid(Long id);

    List<Food> findByTitleLikeOrDescriptionLike(String title,String description);

}
