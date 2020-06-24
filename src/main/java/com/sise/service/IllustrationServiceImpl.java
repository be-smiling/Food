package com.sise.service;

import com.sise.dao.IllustrationDao;
import com.sise.pojo.Illustration;
import com.sise.utils.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;
@Service
public class IllustrationServiceImpl implements IllustrationService {



    @Autowired
    private IllustrationDao illustrationDao;

    @Autowired
    private FoodService foodService;

    @Override
    public Illustration uploadImg(MultipartFile img) {
        String uploadImg = FileUtils.upload(img);
        Illustration illustration = new Illustration();
        illustration.setImg("upload/"+uploadImg);
        return illustration;
    }

    @Override
    public void update(Illustration illustration) {
        Illustration updatedIllustration = illustrationDao.findByIid(illustration.getIid());
        updatedIllustration.setName(illustration.getName());
        updatedIllustration.setMakingdesc(illustration.getMakingdesc());
        updatedIllustration.setImg(illustration.getImg());
        illustrationDao.save(updatedIllustration);

    }


    @Override
    public Illustration findByIid(Long iid) {
        return illustrationDao.findByIid(iid);
    }

    @Override
    public List<Illustration> findAll() {
        return illustrationDao.findAll();
    }
}
