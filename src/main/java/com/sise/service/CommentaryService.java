package com.sise.service;

import com.sise.pojo.Category;
import com.sise.pojo.Commentary;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface CommentaryService {

    public void insert(Commentary commentary);

    List<Commentary> findByFid(Long fid);
}
