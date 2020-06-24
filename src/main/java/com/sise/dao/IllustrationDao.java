package com.sise.dao;

import com.sise.pojo.Illustration;
import org.springframework.data.jpa.repository.JpaRepository;

public interface IllustrationDao extends JpaRepository<Illustration, Long> {
    public Illustration findByIid(Long iid);
}