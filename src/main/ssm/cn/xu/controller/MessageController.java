package cn.xu.controller;

import cn.xu.model.CustomerMessage;
import cn.xu.tools.Result;
import cn.xu.service.CustomerMessageService;
import cn.xu.tools.HttpHelper;
import com.alibaba.fastjson.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

//测试类
@Controller
@RequestMapping(value = "/test")
public class MessageController {

    @Autowired
    private CustomerMessageService customerMessageService;

    @RequestMapping(value = "/hh")
    @ResponseBody //用于返回字符串或其他json数据
    public Result test(){
        JSONArray jsonArray = new JSONArray();
        List<CustomerMessage> customerMessages = customerMessageService.findAll();

        for(int i = 0; i < customerMessages.size();i++)
            jsonArray.add(customerMessages.get(i));
        Result jsonData = new Result();
        jsonData.setData(jsonArray);
        jsonData.setMessage("");
        jsonData.setCode(1);
        return jsonData;
    }

    @RequestMapping(value = "/hello",method = RequestMethod.POST)
    public ModelAndView PostTest(HttpServletRequest request){
        String message = HttpHelper.getPostMessage(request);
        ModelAndView modelAndView = new ModelAndView();
        customerMessageService.addMessage(message);
        modelAndView.setViewName("index2");
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
        modelAndView.setViewName("index2");
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

    @RequestMapping(value = "/findAll")
    public ModelAndView testFindAll(){
        List<CustomerMessage> customerMessages = customerMessageService.findAll();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("showMessage");
        modelAndView.addObject("messages",customerMessages);
        return modelAndView;
    }
}
