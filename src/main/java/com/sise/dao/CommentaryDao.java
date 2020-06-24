package com.sise.dao;

import com.sise.pojo.Commentary;
import com.sise.pojo.Food;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CommentaryDao extends JpaRepository<Commentary, Long> {

    Commentary findByCid(Long id);


    List<Commentary> findByFid(Long fid);

}
