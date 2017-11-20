package cn.xu.controller;

import cn.xu.model.CustomerMessage;
import cn.xu.service.CustomerMessageService;
import cn.xu.tools.HttpHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
public class MessageController {

    @Autowired
    private CustomerMessageService customerMessageService;

    @RequestMapping(value = "/hello",method = RequestMethod.POST)
    public ModelAndView PostTest(HttpServletRequest request){
        String message = HttpHelper.getPostMessage(request);
        ModelAndView modelAndView = new ModelAndView();
        customerMessageService.addMessage(message);
        modelAndView.setViewName("success");
        modelAndView.addObject("userId",message);
        return modelAndView;
    }
/*
@RequestHeader("message") String message获取get方式提交参数
@RequestParam("message") String message获取post方式提交参数
 */
        @RequestMapping(value = "/hello",method = RequestMethod.GET)
    public ModelAndView TestTest(HttpServletRequest request){
        String message = HttpHelper.getGetMessage(request);
        ModelAndView modelAndView = new ModelAndView();
        customerMessageService.addMessage(message);
        modelAndView.setViewName("success");
        modelAndView.addObject("userId",message + 12);
        return modelAndView;
    }

    @RequestMapping(value = "/find/{id}")
    public ModelAndView testFind(@PathVariable int id){
        CustomerMessage customerMessage = customerMessageService.queryById(id);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("showMessage");
        modelAndView.addObject("message",customerMessage);
        return modelAndView;
    }
}
