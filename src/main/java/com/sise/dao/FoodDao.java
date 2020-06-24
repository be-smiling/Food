package com.sise.dao;

import com.sise.pojo.Food;
import com.sise.pojo.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface FoodDao extends JpaRepository<Food, Long> {

    List<Food> findByUserUid(Long id);


    List<Food> findByTitleLikeOrDescriptionLike(String title,String description);
}
