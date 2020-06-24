package com.sise.service;


import com.sise.pojo.Illustration;
import com.sise.pojo.User;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface IllustrationService {

    public List<Illustration> findAll();
    public Illustration findByIid(Long iid);
    public void update(Illustration illustration);
    public Illustration uploadImg(MultipartFile img);

}
