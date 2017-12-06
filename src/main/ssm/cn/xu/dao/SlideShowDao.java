package cn.xu.dao;

import cn.xu.model.SlideShow;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SlideShowDao {

    List<SlideShow> queryAll();

    SlideShow queryById(int id);

    void insert(SlideShow slideShow);
}
