package cn.xu.controller;

import cn.xu.model.SuccessCase;
import cn.xu.service.SuccessCaseService;
import cn.xu.tools.ResultUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class SuccessCaseController {

    @Autowired
    private SuccessCaseService successCaseService;


    @RequestMapping(value = "/showCase")
    @ResponseBody
    public Object showServices(){
        List<SuccessCase> successCases = successCaseService.queryAll();
        return ResultUtil.success(successCases);
    }
}
