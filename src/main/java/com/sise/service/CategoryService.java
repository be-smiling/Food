package com.sise.service;

import com.sise.pojo.Category;

import java.util.List;
import java.util.Optional;

public interface CategoryService  {

    public List<Category> findAll();

    public Category getOne(Long id);


}
