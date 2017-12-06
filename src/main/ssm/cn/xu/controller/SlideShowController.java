package cn.xu.controller;

import cn.xu.model.SlideShow;
import cn.xu.model.SuccessCase;
import cn.xu.service.SlideShowService;
import cn.xu.service.SuccessCaseService;
import cn.xu.tools.ResultUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class SlideShowController {

    @Autowired
    private SlideShowService slideShowService;


    @RequestMapping(value = "/showSlide")
    @ResponseBody
    public Object showServices(){
        List<SlideShow> slideShows = slideShowService.queryAll();
        return ResultUtil.success(slideShows);
    }
}
