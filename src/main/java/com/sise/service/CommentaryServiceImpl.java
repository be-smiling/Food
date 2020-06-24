package com.sise.service;

import com.sise.dao.CommentaryDao;
import com.sise.dao.UserDao;
import com.sise.pojo.Commentary;
import com.sise.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Service
public class CommentaryServiceImpl implements CommentaryService{

    @Autowired
    private CommentaryDao commentaryDao;

    @Autowired
    private UserDao userDao;

    @Override
    public List<Commentary> findByFid(Long fid) {
        List<Commentary> commentaryList = commentaryDao.findByFid(fid);
        return commentaryList;
    }

    public void insert(Commentary commentary){
        commentaryDao.save(commentary);
    }


    ;

}
