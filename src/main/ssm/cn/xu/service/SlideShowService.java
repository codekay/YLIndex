package cn.xu.service;

import cn.xu.dao.SlideShowDao;
import cn.xu.dao.SuccessCaseDao;
import cn.xu.model.SlideShow;
import cn.xu.model.SuccessCase;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SlideShowService {

    @Autowired
    SlideShowDao slideShowDao;

    public void insert(SlideShow slideShow){
        if(slideShowDao != null)
            slideShowDao.insert(slideShow);
        else
            System.out.println("slideShowDao = null");
    }

    public List<SlideShow> queryAll() {
        return slideShowDao.queryAll();
    }

    public SlideShow queryById(int id){
        return slideShowDao.queryById(id);
    }

}
